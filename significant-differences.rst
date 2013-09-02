***************************************************************
When differences in significance aren't significant differences
***************************************************************

"We compared treatments A and B with a placebo. Treatment A showed a significant
benefit over placebo, while treatment B had no statistically significant
benefit. Therefore treatment A is better than treatment B."

We hear this all the time. It's an easy way of comparing medications, surgical
interventions, therapies, and experimental results. It's straightforward. It
seems to make sense.

However, a difference in significance does not always make a significant
difference.\ :cite:p:`Gelman:2006bj`

Imagine a study comparing :index:`walrus diets`. One group of walruses is fed
their ordinary diet, while two other groups are fed new, more nutritious
diets. The researchers weigh the walruses after a month and find that nutritious
diet A caused the walruses to gain about 25 kilograms more than the ordinary
diet, while nutritious diet B caused the walruses to only gain about 10 kg more.

We want to establish how much weight gain we can expect on average from each
diet. If we fed these diets to all the walruses in the universe, what would the
average weight gain be? Now, we don't have many walruses, so it's hard to answer
that -- individual walruses vary quite a bit, and can gain weight for reasons
other than a new diet. (Perhaps the male walruses are bulking up for swimsuit
season.) Accounting for this variation, we calculate that diet B's effect is
statistically insignificant: there's too much variation between walruses to
conclude that the 10 kg weight gain was caused by the diet. Diet A, however,
causes a statistically significant weight gain, and was probably effective.

A researcher might conclude "diet A caused a statistically significant weight
gain, while diet B did not; clearly diet A is more fattening than diet B." Other
walrus keepers might read the paper and decide to feed diet A to their
underweight and sick walruses, since it's more effective.

But is it? Not necessarily.

Because we have limited data, there's some inherent error in our numbers. We can
calculate what results would also be consistent with the data; for example, the
"true" effect of diet A might be 35 kg or 17 kg of weight gain, and it's
plausible that with our small sample of walruses we'd still see the results we
did. Collecting more data would help us pin down the true effects more
precisely.

Statistics supplies tools for quantifying this error. If we calculate the
uncertainties of each of our measurements, we might find it plausible that both
diets have exactly the same effect. Diet B has a statistically insignificant
effect because it's entirely plausible that it causes a weight gain of 0
kilograms -- but it's also plausible that it causes a gain of 20 kg and we got
some unusually skinny walruses in our sample. Similarly, it's entirely plausible
that diet A *also* causes a gain of 20 kg and we got some unusually gluttonous
walruses in our study. Without more data we cannot be sure.

Our data is insufficient to conclude there is a statistically significant
difference between diets A and B. While one diet produces statistically
significant results and the other doesn't, there's not a statistically
significant difference between the two. They might both be equally effective. Be
careful comparing the significance of two results. If you want to compare two
treatments or effects, compare them directly.

Examples of this error in common literature and news stories abound. A huge
proportion of papers in neuroscience, for instance, commit the
error.\ :cite:p:`Nieuwenhuis:2011dm` You might also remember a study a few years
ago suggesting that men with more biological older brothers are more likely to
be homosexual.\ :cite:p:`Bogaert:2006tc` How did they reach this conclusion? And
why older brothers and not older sisters?

The authors explain their conclusion by noting that they ran an analysis of
various factors and their effect on homosexuality. Only the number of older
brothers had a statistically significant effect; number of older sisters, or
number of nonbiological older brothers, had no statistically significant effect.

But as we've seen, that doesn't guarantee that there's a significant difference
between the effects of older brothers and older sisters. In fact, taking a
closer look at the data, it appears there's no statistically significant
difference between the effect of older brothers and older sisters.
Unfortunately, not enough data was published in the paper to allow a direct
calculation.\ :cite:p:`Gelman:2006bj`

.. index:: confidence interval, standard error, standard deviation

.. _confidence-intervals:

When significant differences are missed
---------------------------------------

The problem can run the other way. Scientists routinely judge whether a
significant difference exists simply by eye, making use of plots like this one:

.. figure:: plots/confidence.*
   :alt: Two group means plotted with overlapping confidence intervals

Imagine the two plotted points indicate the estimated time until recovery from
some disease in two different groups of patients, each containing ten
patients. There are three different things those error bars could represent:

#. The standard deviation of the measurements. Calculate how far each
   observation is from the average, square each difference, and then average the
   results and take the square root. This is the standard deviation, and it
   measures how spread out the measurements are from their mean. 
#. The standard error of some estimator. For example, perhaps the error bars are
   the standard error of the mean. If I were to measure many different samples
   of patients, each containing exactly *n* subjects, I can estimate that 68% of
   the mean times to recover I measure will be within one standard error of
   "real" average time to recover. (In the case of estimating means, the
   standard error is the standard deviation of the measurements divided by the
   square root of the number of measurements, so the estimate gets better as you
   get more data -- but not too fast.) Many statistical techniques, like
   least-squares regression, provide standard error estimates for their results.
#. The confidence interval of some estimator. A 95% confidence interval is
   mathematically constructed to include the true value for 95 random samples
   out of 100, so it spans roughly two standard errors in each direction. (In
   more complicated statistical models this may not be exactly true.)

These three options are all different. The standard deviation is a simple
measurement of my data. The standard error tells me how a statistic, like a mean
or the slope of a best-fit line, would likely vary if I take many samples of
patients. A confidence interval is similar, with an additional guarantee that
95% of 95% confidence intervals should include the "true" value.

In the example plot, we have two 95% confidence intervals which overlap. Many
scientists would view this and conclude there is no statistically significant
difference between the groups. After all, groups 1 and 2 *might not* be
different -- the average time to recover could be 25 in both groups, for
example, and the differences only appeared because group 1 was lucky this
time. But does this mean the difference is not statistically significant?  What
would the :ref:`p value <p-values>` be?

In this case, :math:`p< 0.05`. There is a statistically significant difference
between the groups, even though the confidence intervals overlap. [#ttest]_

Unfortunately, many scientists skip hypothesis tests and simply glance at plots
to see if confidence intervals overlap. This is actually a much more
conservative test -- requiring confidence intervals to not overlap is akin to
requiring :math:`p < 0.01` in some cases.\ :cite:p:`Schenker:2001cr` It is easy
to claim two measurements are not significantly different even when they are.

Conversely, comparing measurements with standard errors or standard deviations
will also be misleading, as standard error bars are shorter than confidence
interval bars. Two observations might have standard errors which do not overlap,
and yet the difference between the two is not statistically significant.

.. admonition:: Mathematical basis

   When we eyeball confidence intervals to detect a significant difference,
   we're effectively requiring that

   .. math:: 
      \bar x_1 - \bar x_2 > 2\left(\frac{\sigma_1}{\sqrt{n_1}}
      + \frac{\sigma_2}{\sqrt{n_2}}\right),

   where :math:`\bar x_1` and :math:`\bar x_2` are the means observed in each
   group, :math:`\sigma_1` and :math:`\sigma_2` the group standard deviations,
   and :math:`n_1` and :math:`n_2` the sample sizes. Since :math:`\sigma /
   \sqrt{n}` is the standard error of the mean, we're requiring that confidence
   intervals (of two standard errors) do not overlap.

   But standard errors and standard deviations do not add linearly. *Variance*
   adds linearly: :math:`\text{var}(X + Y) = \text{var}(X) + \text{var}(Y)`
   (when *X* and *Y* are independent), and the standard deviation is the square
   root of the variance, so you add standard deviations by taking the square
   root of the sum of the squares.

   A more reasonable test, then, would test that the difference :math:`\bar
   x_1 - \bar x_2` is greater than two standard errors from zero, but it would
   do so by correctly adding the standard errors:

   .. math::
      \bar x_1 - \bar x_2 > 2 \sqrt{\frac{\sigma_1^2}{n_1} +
      \frac{\sigma_2^2}{n_2}}

   This is, in fact, a *z* test. If we know the standard deviations
   :math:`\sigma_1` and :math:`\sigma_2` exactly, then this is a hypothesis test
   requiring :math:`p < 0.05`. If we have to estimate the standard deviations
   from the data, it's not quite accurate -- we have to do a *t* test, which
   accounts for the fact that we had to estimate the standard deviations.

   Because our visual comparisons add the standard errors incorrectly, they
   require the difference :math:`\bar x_1 - \bar x_2` to be larger before
   considering it statistically significant. This effect is worst when the two
   standard errors are roughly equal; if one is a great deal larger than the
   other, then the two methods are approximately equal (try it), and a visual
   comparison can give reasonable results.

A survey of psychologists, neuroscientists and medical researchers found that
the majority made this simple error, with many scientists confusing standard
errors, standard deviations, and confidence intervals.\ :cite:p:`Belia:2005dg`
Another survey of climate science papers found that a majority of papers which
compared two groups with error bars made the error.\ :cite:p:`Lanzante:2005hi`
Even introductory textbooks for experimental scientists, such as John Taylor's
*An Introduction to Error Analysis*, teach students to judge by eye, hardly
mentioning formal hypothesis tests at all.

There are, of course, formal statistical procedures which generate confidence
intervals which *can* be compared by eye, and even correct for :ref:`multiple
comparisons <multiple-comparisons>` automatically. For example, Gabriel
comparison intervals are easily interpreted by eye.\ :cite:p:`Gabriel:1978fp`

Overlapping confidence intervals do not mean two values are not significantly
different. Similarly, separated standard error bars do not mean two values *are*
significantly different. It's always best to use the appropriate hypothesis test
instead. Your eyeball is not a well-defined statistical procedure.

.. admonition:: What should you do?

   * Compare groups directly using appropriate statistical tests, such as *t*
     tests, instead of saying "this one was significant and this one wasn't."
   * Do not judge the significance of a difference by eye. Use a statistical
     test (*t* test, *z* test, Gabriel comparison intervals, etc.).
   * Remember that if you compare many groups, you need to adjust for making
     multiple comparisons!

.. [#ttest]
   This was calculated with an unpaired *t* test, based on a standard
   error of 2.5 in group 1 and 3.5 in group 2.
