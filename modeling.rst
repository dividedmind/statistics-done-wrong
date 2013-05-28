.. index:: regression, least squares

***********
Model abuse
***********

Throughout this guide I've talked endlessly about statistical hypothesis testing
and its many abuses. There are other forms of statistics, though, and other
statistical procedures. One of the most common is modeling: building
mathematical relationships which describe the data.

Consider this simple example:

.. figure:: plots/regression.*

Here I have measurements of 100 different people. I've recorded their ages and
their wisdom, as measured by the fictitious Wisdom Aptitude Test, or WAT. We can
see that people tend to get wiser as they age, but the relationship isn't
perfect: some people are more wise than their peers. There are many complicated
factors which affect a person's wisdom, and I would like to produce a very
simple method for getting a good estimate. How can I derive this from the data?

In this case, the data looks like it follows a straight line. I can hypothesize
that wisdom follows a simple linear relationship with age:

.. math:: y = a + b x

where *y*, is wisdom, *x* is age, and *b* is a parameter determining how much
wiser a person gets per year. Now my task is reduced to finding *b*, and this
can be done with a very widely-used method: linear least squares.

Using the equation I have written down, I predict how wise everyone in the
dataset should be. Few people will have their wisdom predicted perfectly by the
equation, so I calculate how far off the estimate was and square this. I add up
all these squared errors and adjust *b* until the sum of squares is
minimized. Hence the name "least squares."

This method seems arbitrary, but it has a certain logic. If the data is assumed
to fall along the line but with added random error, we can compute how likely it
is that each person will be that far from the average for their age, and
multiply all these probabilities together to get the overall likelihood. We
could adjust our equation until we maximize the likelihood, making all the
errors small and the data seem very plausible.

It turns out that the :index:`maximum likelihood` method is exactly equivalent
to linear least squares when the errors are normally distributed and
independent. (That is, one person's deviation from the average does not affect
anyone else's. Wisdom is not contagious.)

There are, of course, many other kinds of models behind simple linear
models. Perhaps I believe there are many variables which affect the outcome
linearly, or perhaps I believe the effect is nonlinear -- maybe wisdom goes up
with the square of age. For many of these possible models, so-called generalized
linear models can estimate the various parameters from your data, often using
the method of maximum likelihood.

.. index:: sampling distribution, standard error

Uncertain uncertainty
---------------------

Of course, our data is not perfect. We know that if we were to collect the same
wisdom data again with a different group of people we may see a slightly
different plot, and our best estimates for *b* may be slightly different. If we
collect a very large sample of people we will be very confident that or estimate
is right, but if we've only looked at four people we will not be.

This is why standard model-fitting methods, such as linear least squares, also
provide ways to estimate the :index:`sampling distribution` of their
parameters. A sampling distribution tries to answer the question "If we were to
take this data again and again and again, with completely separate groups of the
same number of people, how much would our estimate of *b* vary?"

Obviously it would be very expensive to get an answer by collecting the data a
few thousand times, so we cannot get an exact answer. But we can produce an
estimate using the data we have. We have assumed that the deviations of
individual points in the data follow a normal distribution; we can estimate the
standard deviation of this normal distribution from our data, and hence estimate
how different each sample would be from the next. And so we produce estimated
sampling distributions.

From these sampling distributions we produce confidence intervals of the
parameter estimates.

.. index:: model selection, multiple regression

Survival of the fittest
-----------------------

Linear regression is commonly used to determine which variables are
important. It turns out it's possible to use least squares regression to fit one
outcome to a whole host of variables -- I could try to predict wisdom using age,
beard length, grayness of hair, and so on, and linear least squares would
provide an estimate of the effect of each variable on wisdom. I may not know in
advance whether a particular variable is important (does grumpiness matter?),
and I can let my regression equation tell me. In this case, my regression
equation would be something like this:

.. math:: y = a + b x_1 + c x_2 + d x_3 + \ldots

Here :math:`x_1,\, x_2`, and so on are the predictors, like grumpiness and beard
length. I can solve for *a*, *b*, *c*, and so on as before, obtaining confidence
intervals for each estimate.

Unfortunately, these confidence intervals get wider as we add more variables --
with more variables to fit, the more data we would need to nail them down
precisely. Scientists are thus tempted to eliminate unimportant variables. In
particular, if the confidence interval for a parameter suggests that it could be
zero, we can simply eliminate the corresponding variable from the model, because
there is insufficient evidence to suggest it has any effect. In other words, if
grumpiness doesn't seem to have a statistically significant effect, I won't
include grumpiness in my calculations.

I can test how well a model fits my data using the squared errors originally
used to fit the model. The larger the sum of squared errors, the worse my fit
is. The squared errors can also be used to define a measure called :math:`R^2`,
sometimes known (rather grandly) as the coefficient of determination:

.. math:: R^2 = 1 - \frac{SS_\text{err}}{SS_\text{tot}}

Here :math:`SS_\text{err}` is the sum of squared errors and
:math:`SS_\text{tot}` is the sum of the squared distances between every data
point and the mean. :math:`R^2` can be interpreted as the proportion of the
variance in *y* which is successfully explained by your regression equation. If
:math:`R^2` is close to 1, our regression equation fits the data very well.

Various statistical tests use squared errors to tell us if a variable gives a
statistically significant improvement to the model. For example, the *F* test
compares two regression equations, one containing missing the variable in
question, and provides a *p* value for the hypothesis that the variable's true
effect is zero. If the *p* value is small, we keep the variable.

You might begin to see some problems here. First, there's a problem of
statistical power: just because a variable is not statistically significant does
not mean has no effect. We may not have collected enough data to accurately
measure its effect. Second, there's room for multiple comparisons if we test
many parameters to see if they're significantly different from zero. Third, the
whether one variable is significant depends on the other variables included in
the model, so eliminating an entire block of variables at once may be unwise;
eliminate one at a time and you may find some end up statistically
significant. Eliminate variables in a different order and you may find that
different variables are significant.

Additionally, there is the problem of bias. If there are many variables,

The watermelon problem
----------------------

- overfitting with model selection
- can't estimate sampling distributions of estimators

So many power laws!
-------------------

If it doesn't fit, you must acquit
----------------------------------

- expansion on the power law problem: using models to fit things which don't
  meet the assumptions
- example: log transformations of count data
- note that CLT means this is asymptotically okay (Lumley 2002)
