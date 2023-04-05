---
title: "Vending machine [Part 1]"
date: 2023-03-01T18:37:25Z
draft: true
tags: ["System Design"]
---

Designing a vending machine system is the first practice of "Clean Architecture" principles.
I will try to use technical terms as they presented in the book.

# First draft
If I am going to make one vending machine, I would start with three entity objects (VendingMachine, Money, Item).
I think they embodies most of the busniess rules to build a vending machine system.

![](/vending_machine_first_draft.PNG)
*[The first draft of Class diagram for vending machine](https://qualityengineer.weebly.com/probability/total-probability-law)*  

Basically, a cilent would create one's own Money object and pass it through "purchase" method in VendingMachine object.
Then, processing the method, the Money object would be redeemed and the VendingMachine object will return the wanted item to the client.


```python
vending_machine = VendingMachine()
client_money = Money()
item_id = 0

# Insert cash and purchase the item with an id "item_id"
item = vending_machine.purchase(client_money, item_id)
```

```python
class Item:
    def __init__(self, price:int, id:int):
        self.price = price
        self.id = id

class Money:
    def redeem(self, amount:int)->None:
        pass

    def afford(self, amount:int)->bool:
        pass

class VendingMachine:
    def __init__(items: Dict[int, Item]):
        self.items = items

    def purchase(self, money:Money, item_id:int)->Item:
        pass

```

This draft is drived from my nearly unprincipled intuitions but please note that I separte redeeming the money (redeem) from checking if the object has enough money (afford). 
This is a case of "Command Query Separation"

# Corner cases
The first draft seems fine to work to some extend. However, what if you have encounter some corner cases that make errors?
For example, maybe there is no enough stocks for an item so the machine can't give you the item even though you put your money into the machine. Or, you've just found that your debit card don't have enough money to buy it.
In those cases, you would be better to do exception handling instead of if statements and error flags.

```python
class ExceptionNoMoreStock(Exception):
    pass

class VendingMachine:
    def __init__(items: Dict[int, Item]):
        self.items = items

    def getItem(item_id:int)->Item:
        if item_id in self.items.keys():
            return self.items[item_id]
        else:
            raise ExceptionNoMoreStock()

    def purchase(self, money:Money, item_id:int)->Item:
        item = self.getItem(item_id)
        money.redeem(item.price)
```

Seems great! Would that be all?
