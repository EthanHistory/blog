---
title: "Scaling"
date: 2022-10-02T14:43:05-07:00
draft: true
---
# Why we should do scaling / standardize / transform our data in preprocssing?
different reason over models
In terms of logistic regression
outliers

data preprocessing
scaling
linear regression
gauss-markov assumption

why standardization or normalization
better performance -> why? -> avoid multicollinearity -> why?
 polynomial terms or interaction terms -> multicollinearity 
 -> shrink column space and accordingly widen left null space -> potentially result in large error (error comes from left null space)
 -> Actually high variance because dimension of error term is bigger.

normalize / standardize
regularize -> avoid one type of multicollinearity problem (huge coefficients large positive / large negative)
-> by regularize degree of freedom of parameters which are very huge which can have multicollinearity.


difference between standardization or normalization
assume normal distribution or not.