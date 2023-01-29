---
title: "RNN_cheatsheet"
date: 2022-12-20T00:25:58-08:00
draft: false
math: true
tags: ["DeepLearning"]
---
![](/rnn_structure.png)
*[RNN structure (left) compact representation of RNN (right) unfolding version](https://www.researchgate.net/figure/Recurrent-Neural-Network-Structure-The-left-is-the-typical-RNN-structure-The-right-part_fig3_311805526)*  
$$x_{i} : \text{i-th input, } 
o_i : \text{i-th label, }
Net : \text{RNN block, }
w_i : \text{i-th hidden state}$$
# What is RNN?
RNN (Recurrent neural networks) is a class of ANN model designed for analyzing a sequence of input data. Due to the nature of recurrsive feedforward network where the previous input does influence the next hidden state value, RNN can theoratically exploit the previous context even far way from the current input in estimating output. 

# RNN structure
RNN structure composes of two parts: hidden layer, output layer. In hidden layer, it takes the current input and the previous hidden state, and updates the hidden state. On the other hand, in output layer, it takes the updated hidden state and estimates the output. Each of the updates are conducted by one of activation functions (f, g)
$$ h_t = f(W_{hh}h_{t-1} + W_{hx}x_t + b_h) $$
$$ o_t = g(W_{oh}h_t + b_o)$$

![](/rnn_structure_in_detail.png)
*[Detailed RNN structure](https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-recurrent-neural-networks)*  

## Types of RNN
Depending on the number of input and output in a sequence, the overall structure varys, as does it's application. 
![](/types_of_rnn.png)
*[Table listing types of RNN structure](https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-recurrent-neural-networks)*  

# Backpropagation through time
Since RNN estimates multiple outputs, the overall loss will be the average loss of all local losses.
$$ L = \frac{1}{T}\sum_{t=1}^T{l(y_t, o_t)}$$
 Referring the computational graph of RNN, we can calculate gradients of the loss over each parameter.
![](/rnn_computational_graph.png)
*[RNN computational graph](https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-recurrent-neural-networks)*  

$$\frac{\partial{L}}{\partial{l_t}} = 
\frac{1}{T}$$

$$\frac{\partial{L}}{\partial{o_t}} = 
\frac{\partial{L}}{\partial{l_t}} \frac{\partial{l_t}}{\partial{o_t}} = 
\frac{1}{T}\frac{\partial{l_t}}{\partial{o_t}} $$

$$\frac{\partial{L}}{\partial{W_{oh}}} = \sum_{t=1}^T{\frac{\partial{L}}{\partial{o_t}}\frac{\partial{o_t}}{\partial{W_{oh}}}} = \sum_{t=1}^T{\frac{\partial{L}}{\partial{o_t}}\frac{\partial{g(W_{oh}h_t + b_o)}}{\partial{W_{oh}}}}$$

$$\frac{\partial{L}}{\partial{h_T}} = \frac{\partial{L}}{\partial{o_T}}\frac{\partial{o_T}}{\partial{h_T}}
$$

$$\frac{\partial{L}}{\partial{h_t}} = \frac{\partial{L}}{\partial{o_t}}\frac{\partial{o_t}}{\partial{h_t}} + 
\frac{\partial{L}}{\partial{h_{t+1}}}\frac{\partial{h_{t+1}}}{\partial{h_t}} =
\frac{\partial{L}}{\partial{o_t}}\frac{\partial{g(W_{oh}h_t + b_o)}}{\partial{h_t}} + 
\frac{\partial{L}}{\partial{h_{t+1}}}\frac{\partial{f(W_{hh}h_t + W_{hx}x_{t+1} + b_h)}}{\partial{h_t}} \qquad (t < T)$$

$$
\frac{\partial{L}}{\partial{W_{hh}}} =
\sum_{t=1}^T{\frac{\partial{L}}{\partial{h_{t}}} \frac{\partial{h_t}}{\partial{W_{hh}}}} = 
\sum_{t=1}^T{\frac{\partial{L}}{\partial{h_t}} \Bigg( \frac{\partial{f(W_{hh}h_{t-1} + W_{hx}x_t + b_h)}}{\partial{W_{hh}}}} +  \frac{\partial{f(W_{hh}h_{t-1} + W_{hx}x_t + b_h)}}{\partial{h_{t-1}}} \frac{\partial{h_{t-1}}}{\partial{W_{hh}}} \Bigg)
$$
$$ =
\sum_{t=1}^T{\frac{\partial{L}}{\partial{h_t}} \Bigg( \frac{\partial{f(W_{hh}h_{t-1} + W_{hx}x_t + b_h)}}{\partial{W_{hh}}}} + \sum_{i=1}^{t-1}{ \bigg( \prod_{j=i+1} \frac{\partial{f(W_{hh}h_{j-1} + W_{hx}x_t + b_h)}}{\partial{h_{j-1}}} \bigg) \frac{\partial{f(W_{hh}h_{i-1} + W_{hx}x_t + b_h)}}{\partial{W_{hh}}}}\Bigg)
$$

$$\frac{\partial{L}}{\partial{W_{hx}}} =
\sum_{t=1}^T{\frac{\partial{L}}{\partial{h_t}}\frac{\partial{h_t}}{\partial{W_{hx}}}} =
\sum_{t=1}^T{\frac{\partial{L}}{\partial{h_t}} \Bigg( \frac{\partial{f(W_{hh}h_{t-1} + W_{hx}x_t + b_h)}}{\partial{W_{hx}}}} + \sum_{i=1}^{t-1}{ \bigg( \prod_{j=i+1} \frac{\partial{f(W_{hh}h_{j-1} + W_{hx}x_t + b_h)}}{\partial{h_{j-1}}} \bigg) \frac{\partial{f(W_{hh}h_{i-1} + W_{hx}x_t + b_h)}}{\partial{W_{hx}}}}\Bigg)
$$

- Reference :
[Backpropagation Through Time](https://d2l.ai/chapter_recurrent-neural-networks/bptt.html)

# Problems
As you can see in the [Backpropagation through time](#backpropagation-through-time), nested formula of gradients over `W_hh` and `W_hx` seems complex. Especially, if the gradients of `f` over `h_{j-1}` is consistantly bigger than 1 or less than 1 so that they accumulate into very big number or small number. Either way, if `T` is big enough, the gradient of `L` over weights in hidden layer will explode or vanish, which makes the training diverging or slow. Furthermore, the entire nested formulas are computationally infeasible. To tackle these problems, there are some tricks simplify the computations.