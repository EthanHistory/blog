---
title: "Probability_and_inferential_statistics"
date: 2023-01-17T23:14:34Z
draft: true
math: true
---

# Introduction
This is some of the topics in USF (University of San Francisco) MS Data Science prerequisite requirements of `Probability and Inferential Statistics`.

# Law of Total Probability
## Definition
A fundamental rule relating marginal probabilities to conditional probabilities. In mathematical statement, it looks simple and intuitive: For any event A,
$$ P(A) = \sum_n{P(A \cap B_n)} = \sum_n{P(A|B_n)P(B_n)}$$
, where $\{B_n : n = 1, 2, 3, ...\}$ is a finite partition of a sample space.

![](/law-of-total-probability-venn-diagram.png)
*[A venn diagram illustrating the law of total probability](https://qualityengineer.weebly.com/probability/total-probability-law)*

# Bayes' theorem

## Definition
reframing or looking at in a different point of view.
Bayes' theorem describes how prior hypothesis is updated with given evidence. In mathematical statement,
$$ P(H | E) = \frac{P(E|H)P(H)}{P(E|H)P(H) + P(E|\neg{H})P(\neg{H})} $$
, where $H$ and $E$ are events, and $P(E) \neq 0$

*[By the law of total possibility](#law-of-total-probability)*, the above formula can be more simplified.

$$ P(H | E) = \frac{P(E|H)P(H)}{P(E|H)P(H) + P(E|\neg{H})P(\neg{H})} 
= \frac{P(E|H)P(H)}{P(E)}$$

Each part of the formula are called by special names.
- $P(H | E)$: `posterior` probability of H given E
- $P(E | H) = L(H | E)$: `likelihood` of H given a fixed E
- $P(H), P(E)$: `prior` probability of each of H and E

## Geometrical interpretation
However, the meaning of bayes' theorem is more than formula. There is a reason why they made parts with the formula and named posterior, likelihood, and prior. For example, if the likelihood of $H$ and $\neg{H}$ are the same, the prior over $H$ wouldn't be changed. In this case, geometrical interpretation is a great tool to see what is going on.
![](/bayes.PNG)
*[Geometrical understanding of bayes' theorem](https://www.youtube.com/watch?v=HZGCoVF3YvM&ab_channel=3Blue1Brown)*

Let's define a square with length 1 and height 1. Then, we can split the width by $P(H)$ and $P(\neg{H})$. Let's say that height means the probability of $E$ given the variable in width, which is the likelihood of the variable given $E$. Based on the likelihoods and priors in this square, you can easily see how the posterior is going to be changed.

# Probability mass function & Probability density function
Probability mass function (pmf) and Probability density function (pdf) are used to describe probability distributions on a random variable. And each of pmf and pdf maps discrete and continuous random variable.

- PMF  
PMF $F$ maps a value in sample space $S_X$ of a discrete random variable $X$ to probability, which we can state mathematically,
$$ F(x) = P(X = x) $$
where $x \in S_X$  
There are two important properties of pmf.
1. $\sum_x{F(x)}=1$
2. $F(x) \ge 0$

- PDF  
Likewise, PDF $G$ maps a value in sample space of a continueous random to another value. However, this time it doesn't mean probability, instead we call it probability density. This is because you can't define probability that it exactly equals to some value in terms of continueous random variable. This is because $X$ can take on an infinite number of values (any value in measurable space), and therefore it is impossible to assign a probability value for each. Instead, PDF relates random variable with probability in a interval of values. 
$$ P(a \le X \le b) = \int_a^b F(x)dx $$

As same as PMF, the entire area under a PDF must sum to 1.
$$ \int_{-\infty}^{\infty} F(x)dx = 1$$

# Cumulative distribution function
The cumulative distribution function (CDF) of a real-valued random variable X, evaluated at x, is the probability that X will take a value less than or equal to x, which given by
$$ F(x) = P(X \le x) $$

Using this definition, you can express the probability that X lies semi-closed interval.
$$ P(a \lt X \le b) = F(b) - F(a)$$

When the random variable is continuous, CDF $F$ can be expressed as the integral of its PDF $f$.
$$ F(x) = \int_{-\infty}^x{f(t)dt} $$

# Random variable and expected value/variance

- **Random variable**  
![](/probability.png)

A `random variable` is a mathematical formalization of a quantity or object which depends on random events. It is a `mapping or a function` from possible outcomes in a sample space to real numbers in a measurable space.
$$ X : \Omega \rightarrow E$$

In both of sample space and measurable space, we usually called its instance `outcome`. Note that random variable is usually anti-injective function for statistical purpose. Indeed, it is related to its reason to exist: standardize and transform outcomes in sample space to outcomes in measurable space. 
*[a awesome example in stackoverflow](https://stats.stackexchange.com/questions/284579/must-a-random-variable-be-injective-function)*.

- **Expected value**  
Expected value has lots of alternative names: `expectation`, `mean`, `average`, or `first moment`. For a random variable $X$, Consider a finite list $\[x_1, ..., x_k\]$ of possible outcomes, each of which has probability $p_1, ..., p_k$ of occurring. Then, the expected value of X is defined as

$$ E[X] = x_1p_1 + x_2p_2 + ... + x_kp_k $$

Note that it is natural to interpret $E[X]$ as a `weighted average` of outcomes $x_i$, with weights given by their probabilities $p_i$.

There are some of properties on expected value.
1. Non-negativity  
if $X \ge 0$, then $E\[X\] \ge 0$
1. Linearity of expectation  
For any random variables X and Y, and a constant a,
$$ E[X+Y] = E\[X\] + E\[Y\], \\\ 
E\[aX\] = aE\[X\]$$
1. Monotonicity  
if $X \le Y$, and both $E\[X\]$ and $E\[Y\]$ exist, then $E\[X\] \le E\[Y\]$

1. Expectation of constant is constant  
For a constant $c$, $E\[c\] = 

- **Variance**  
The variance of a random variable $X$ is the expected value of the squared deviation from the mean of X, given by
$$ Var\[X\] = E\[(X-\mu)^2\] $$  
where $\mu = E\[X\]$.   
Using some properties of expectation, it can be expanded as follows,

$$\begin{aligned} Var\[X\] &= E\[(X-E\[X\])^2\] 
\\\ &= E[X^2 -2XE[X] + E[X]^2]
\\\ &= E[X^2] -2E\[X\]E\[X\] + E\[X\]^2
\\\ &= E[X^2] -E\[X\]^2
\end{aligned}$$ 

---
**(Question) why they use bracket instead of parentheses in the definitions of expectation and variance?**

*[Mathematicians usually use parentheses for **function** and brackets for **functional**](https://math.stackexchange.com/questions/1302535/why-square-brackets-for-expectation)*

---


# Conditional probability distributions and conditional expected value
- **conditional probability distribution**

the conditional probability distribution of $Y$ given $X$ is the probability distribution of $Y$ when $X$ is known to be a particular value.
$$
P(Y | X) = \frac{P(X \cap Y)}{P(X)}
$$

Based on this definition, you can see the relation with the probability distribution of X given Y.
$$
P(Y | X)P(X) = {P(X \cap Y)} = P(X | Y)P(Y)
$$

- **conditional expected value**
the conditional expectation of a random variable is its expected value given that a certain set of "conditions" is known to occur.

$$
E[X|A] = \sum_x{xP(X|A)}
$$

# Laws of large numbers and Central Limit Theorem

- **Laws of large numbers**  
In probability theory, the law of large numbers (LLN) is a theorem that describes the result of performing the same experiment a large number of times. According to the law, the average of the results obtained from a large number of trials should be close to the expected value and tends to become closer to the expected value as more trials are performed.
*[definition in wikipedia](https://en.wikipedia.org/wiki/Law_of_large_numbers)*  

- **Central Limit Theorem**  
The central limit theorem states that if you sufficiently take samples from unknown poppulation, then the distribution of the sample mean converges to normal distribution.
In mathematical statement,
$$
lim_{n \rightarrow \infty}{\bar{X_n}}\sim \mathcal{N}(\mu, \frac{\sigma^{2}}{n})
$$

# Hypothesis testing
**A statistical hypothesis test** is a method of statistical inference used to decide whether the data at hand sufficiently support a particular hypothesis.
Hypothesis testing allows us to make probabilistic statements about population parameters.

## How does hypothesis testing work?
Depending on your null hypothesis, statistical assumptions, test statistic, significance level, and so on, your testing will be different but there is a common process to be followed in the hypothesis testing.

![](/probability_hypothesis_test.png)
*[9 steps of processes of hypothesis test](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing)*

Let me explain each of step in detail with an example of one-sample *[t-test](https://en.wikipedia.org/wiki/Student%27s_t-test)*

1. **null hypothesis**  
At first, you need null hypothesis : An claim that you want to reject. It claims that there is no difference or relationship exists between two sets of data or variables being analyzed. You want the result of the hypothesis testing will indirectly support your alternative hypothesis by rejecting this null hypothesis. In this case, null hypothesis is that the population mean is equal to a specified value $\mu_0$.    

2. **statistical assumptions on data**  
statistical assumptions would be different case by case, but in t-test case, it is necessary following assumptions.
- the data follow a continuous or ordinal scale.
- the data are randomly selected.
- the data are normally distributed.

3. **test statistic**  
It considered as a numerical summary of a data-set that reduces the data to one value that can be used to perform the hypothesis test. In our case, you would state the test statistic as $T = \frac{\bar{X} - \mu_0}{s/\sqrt{n}}$, where $\bar{X}$ is the sample mean, $s$ is the sample standard deviation, and $n$ is the sample size.

4. **Derive the distribution**  
Derive the distribution of the test statistic under the null hypothesis from the assumptions. For the above example, the test statistic $T$ would follow 
*[Student's t distribution](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing)*.

5. **Select a significance level**  
Significance level $\alpha$ is a probability threshold below which the null hypothesis will be rejected. Usually it is 0.5.

6. **Set the critical region**
Setting the critical region means setting how to configure p-value.  
 which is probability of obtaining a real-valued test statistic at least as extreme as $t$. For a one-sided right-tail test, you can set it as $p = P(T \le t | H_0)$

7. **Compute the observed value**  
After test, you would compute the observed value $t$ of $T$. 

8. **Decide to reject null hypothesis or not**
Based on the very test statistic value $t$, now you would decide whether you reject the null hypothesis or not.

## P-value
As mentioned in the above section, p-value is probability of obtaining a real-valued test statistic at least as extreme as the one actually obtained. Based on this p-value with significant level $\alpha$, you can make statistical decision on the test.

## Confidence Interval (CI)
A confidence interval (CI) is a range of estimates for an unknown parameter.

- **how to construct?**  
There are several *[methods of derivation of CI](https://en.wikipedia.org/wiki/Confidence_interval#/media/File:95%_confidence_interval.svg)*, but a well-known way is to use *[Central Limit Theorem](https://en.wikipedia.org/wiki/Confidence_interval#/media/File:95%_confidence_interval.svg)*. Let's say ${X_1, ..., X_n}$ is an independent sample from a normally distributed population with unkown parameters mean $\mu$ and variance $\sigma^2$. Let,
$$
\bar{X} = \sum_{i=1}^n{\frac{X_i}{n}} \\\
S^2 = \frac{1}{n-1}\sum_{i=1}^n({X_i - \bar{X}})^2
$$
Where $\bar{X}$ is the sample mean, and $S^2$ is the sample variance. Then
$$
T = \frac{\bar{X}-\mu}{S\/\sqrt{n}}
$$
follows a Student's t distribution with n-1 degrees of freedom.
Therefore, you can find $c$ in *[t-distribution table](https://www.usu.edu/math/cfairbourn/Stat2300/t-table.pdf)* where $P(-c \le T \le c) = 1-\alpha$ in case of two-sided p-value with significant level $\alpha$. In this case, let's set our significant level to 0.05. Then,
$$
P(-c \le T \le c) = P(\bar{X} - \frac{cS}{\sqrt{n}} \le \mu \le \bar{X} + \frac{cS}{\sqrt{n}}) 
$$
Finally, we have a theoretical 95% CI for $\mu$
$$
[\bar{X} - \frac{cS}{\sqrt{n}}, \bar{X} + \frac{cS}{\sqrt{n}}]
$$

- **interpretation**  
Let's interpret the CI which is what we derived above. In terms of theretical CI, it means that 95% of 95% CIs of future samples will cover the $\mu$. On the other hand, in terms of CI calculated from observed samples, it deals with statistical significance: any value outside 95% CI is considered significantly different from the sample mean. In other words, if the $\m_0$ is inside the CI, you can't reject the null hypothesis since any value in the CI is statistically not different from the point estimate (the sample mean).

# Common statistical distributions (normal, t, chi-squared, F ratio, etc.)
- **Normal distribution**  
Also called a gaussian distribution or a bell curve. A type of probability distribution for a continuous random variable, which is expressed as a probability density function of $f$.
$$
f(x) = \frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{1}{2}(\frac{x-\mu}{\sigma})^2}
$$
where $\mu$ is the mean of the distribution, $\sigma$ is its standard deviation.
You can note a random variable $X$ following a normal distribution as,
$$
X \sim \mathcal{N}(\mu, \sigma^{2})
$$
 
- **Student's t distribution**  
Any member of a family of continuous probability distributions that arise when estimating the mean of a normally distributed population in situations where the **sample size is small** and the **population's standard deviation is unknown**. To express it as an mathematical form,
$$
    X_i \sim \mathcal{N}(\mu, \sigma^{2}) \\\
    i = 1, ..., n \\\
    S^2 = \frac{1}{n-1}\sum_{i=1}^n{(X_i - \bar{X})^2} \\\
    \frac{\bar{X}-\mu}{S\/\sqrt{n}} \sim \text{t distribution}
$$
Since you don't need to know standard deviation of true population, you can derive confidence intervals for $\mu$ with your sample.
The t-distribution is **symmetric** and **bell-shaped**, like the normal distribution. However, the t-distribution has **heavier tails**, meaning that it is more prone to producing values that fall far from its mean. 

- **Chi-squared**  
the sum of their squares of **independent and standard normal** random variables,
$$
Q = \sum_{i=1}^k{Z_i^2}, \\\
Q \sim \chi^2{k}
$$

- **F ratio (F-distribution)**
A continuous probability distribution that are used in F-test, where the null hypothesis is that two independent normal variances are equal and the observed sums of some appropriately selected squares are then examined to see whether their ratio is significantly incompatible with this null hypothesis.
$$
X = \frac{S_1\/d_1}{S_2\/d_2}
$$

# Definition of a statistic, and ways of finding statistics (e.g. likelihood functions)
- **Statistic**
A statistic (singular) or sample statistic is any quantity computed from values in a sample which is considered for a statistical purpose. Statistical purposes include **estimating a population parameter**, **describing a sample**, or **evaluating a hypothesis**.

Likelihood function represents the probability of random variable realizations conditional on particular values of the statistical parameters. Maximum likelihood estimation is a method of estimating the parameters of an assumed probability distribution (likelihood function), given some observed data.

# Regression and correlation

- **correlation**  
correlation coefficient (mostly Pearson correlation coefficient) is a measure of linear corrleation between two sets of data. Mathematically, it is essentially a normalized measurement of the covariance.
$$
\rho_{X,Y} = \frac{cov(X, Y)}{\sigma_X \sigma_Y}
$$

Therefore, how to interpret the coeffcient essentially means how to interpret covariance. For two jointly distributed real-valued random variables X and Y, covariance is defined as the expected value of the product of their deviations from their individual expected values, that is,
$$
cov(X,Y) = E[(X-E\[X\])(Y-E\[Y\])]
$$

Geometrically, the covariance can be viewed as sum of area of rectangulars, which are based on X and Y with the origin of $(E[X], E[Y])$. Note that the covariance is positive if there are lots of squares on 1st and 3rd quadrants, or is negative if there are lots of squares on 2nd and 4th quadrants. Then, it is clear that these positive or negative value of covariance can be interpreted as the direction and strength of linear relationship. 

![](/correlation.png)
*[Geometrical understanding of covariance](https://en.wikipedia.org/wiki/Covariance)*

- **regression** 
Regression (especially, we are talking about linear regression) is to figure out the effectiveness of variable over another variable. This effectiveness also can be viewed as a relationship between two variables X and Y. This relationship is formulated as below.
$$
\hat{y_i} = \hat{\beta_0} + \hat{\beta_1}x_i 
$$
where $\hat{\beta_1}$ and $\hat{\beta_0}$ are parameters (each of effectiveness of $X$ and bias)

the parameters are optimized by least square method over SSR (the sum of squared residuals) and each of estimates is like below.
$$
\hat{\beta_1} = \frac{\sum{(x_i - \bar{x})(y_i - \bar{y})}}{\sum{(x_i - \bar{x})^2}} = \frac{E[(X-E\[X\])(Y-E\[Y\])]}{E[(X-E\[X\])^2]}
$$

$$
\hat{\beta_0} = \bar{y} - \hat{\beta_1}\bar{x}
$$

Note that, when you see the estimate of $\hat{\beta_1}$, it is quite similiar to the covariance, which makes you interpret this as the linear relationship between X and Y. However, there are also different points. The key similiarity and differences are like below. 

- **key similarities**  
  - Both quantify the **direction and strength of the relationship** between two numeric variables.
  - When the correlation (r) is negative, the regression slope (b) will be negative. 
  - When the correlation is positive, the regression slope will be positive. 
  - The correlation squared (r2 or R2) has special meaning in simple linear regression. It represents **the proportion of variation in Y explained by X**.
- **key differences**  
  - Regression attempts to establish **how X causes Y** to change and the results of the analysis will change if X and Y are swapped. With correlation, the X and Y variables are **interchangeable**.
  - Regression assumes X is fixed with **no error**, such as a dose amount or temperature setting. 
  - With -correlation, X and Y are typically **both random variables**, such as height and weight or blood pressure and heart rate. 
  - Correlation is a **single statistic**, whereas regression produces **an entire equation**.

# Reference
https://en.wikipedia.org/wiki/Law_of_total_probability