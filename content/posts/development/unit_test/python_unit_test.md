---
title: "Python_unit_test"
date: 2023-04-19T22:46:28Z
draft: true
---

## What is `unittest`

"unittest" is an unit testing framework in Python. It supports test automation, sharing of setup and shutdown code for tests, aggregation of tests into collections, and independence of the tests from the reporting framework.

There are some primary concepts in  an object-oriented way unittest supports. For the detail explanation of these concepts, let's gat a rough idea and move on.

- test fixture
- test case
- test suite
- test runner

## Let's give it a try first

I got this example from [unittest official documentation](https://docs.python.org/3/library/unittest.html#basic-example) and it gives you a simple template where to start writing your test code. Let's see what happened in summarized bullet points.

```python
import unittest

class TestStringMethods(unittest.TestCase):

    def test_upper(self):
        self.assertEqual('foo'.upper(), 'FOO')

    def test_isupper(self):
        self.assertTrue('FOO'.isupper())
        self.assertFalse('Foo'.isupper())

    def test_split(self):
        s = 'hello world'
        self.assertEqual(s.split(), ['hello', 'world'])
        # check that s.split fails when the separator is not a string
        with self.assertRaises(TypeError):
            s.split(2)

if __name__ == '__main__':
    unittest.main()

```

- Import `unittest` library
- Write a class which inherits `unittest.Testcase`
- Wrtie methods to test each case in the class
= Use inherited methods (assertEqual, assertTure, and so on) to actually check it's functionality.
- Start unittest with `unittest.main()`

This example demonstrate how to test three test cases in one class in one module. Each test class which inherits `unittest.TestCase` would be used to test one class in your source code and each test module would test one module. You would test at least your public methods in your classes but you can also test private methods if their functionality should be safe and robust.

## Organizing test code

The basic building blocks of unit testing are `test cases` - single scenarios that must be set up and checked for correctness. They are represented in unittest by unittest.Testcase instances. You would inherit this class to test your code. Actaul tests happends in `assert*()` methods which provided by the `Testcase` base class. this methods would raise an exception and `unittest` will identify the test case as a failure.
```python
import unittest

class TestStringMethods(unittest.TestCase):

    def test_upper(self):
        self.assertEqual('foo'.upper(), 'FOO')
```

## Customize test

Official documentation recommends to group our test cases acoording to the features you test. In most cases, you would need only calling `unittest.main()` but you can also use test suite if you want to customize your tests.

```python
def suite():
    suite = unittest.TestSuite()
    suite.addTest(WidgetTestCase('test_default_widget_size'))
    suite.addTest(WidgetTestCase('test_widget_resize'))
    return suite

if __name__ == '__main__':
    runner = unittest.TextTestRunner()
    runner.run(suite())
```

---
**NOTE**

It is recommended to separate your source code and test codes by these reasons.
- The test module can be run standalone from the command line.

- The test code can more easily be separated from shipped code.

- There is less temptation to change test code to fit the code it tests without a good reason.

- Test code should be modified much less frequently than the code it tests.

- Tested code can be refactored more easily.

- Tests for modules written in C must be in separate modules anyway, so why not be consistent?

- If the testing strategy changes, there is no need to change the source code.

---

## Test Fixture
I mentioned this concept in the early part of this post but didn't say in detail. `test fixture` is simply a working environment for testing code. A new TestCase instance is created as a unique test fixture. Thus `setUp()`, `tearDown()`, and `__init__()` will be called once per test. So these methods are used to define `method-level` test fixtures. 

```python
import unittest

class Test(unittest.TestCase):
    def setUp(self):
        self.widget = Widget('The widget')

    def tearDown(self):
        self.widget.dispose()
```

You can also define `class-level` test fixtures by using `setUpClass()` and `tearDownClass()`. Note that you need to define each of them as a classmethod.
```python
import unittest

class Test(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls._connection = createExpensiveConnectionObject()

    @classmethod
    def tearDownClass(cls):
        cls._connection.destroy()
```

These methods are executed only once per a class. In a broader scope, you would define `setUpModule()` and `tearDownModule()` function to create module-level fixtures
```python
def setUpModule():
    # set up resources needed by all test cases in this module
    print("Setting up module...")

def tearDownModule():
    # clean up resources after all test cases in this module have run
    print("Tearing down module...")
```