***************************************************************
When differences in significance aren't significant differences
***************************************************************

"We compared treatments A and B with a placebo. Treatment A showed a significant
benefit over placebo, while treatment B had no statistically significant
benefit. Therefore, treatment A is better than treatment B."

We hear this all the time. It's an easy way of comparing medications, surgical
interventions, therapies, and experimental results. It's straightforward. It
seems to make sense.

However, a difference in significance does not always make a significant
difference.\ :cite:p:`Gelman:2006bj`

Imagine a study comparing :index:`walrus <pair: walrus; diet>` diets. One group
of walruses is fed their ordinary diet, while two other groups are fed new, more
nutritious diets. The researchers weigh the walruses after a month and find that
nutritious diet A caused the walruses to gain about 25 kilograms more than the
ordinary diet, while nutritious diet B caused the walruses to only gain about 10
kg more.

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

#. The standard deviation of the measurements. If I've measured *n* patients,
   the standard deviation is defined to be:

   .. math:: \sigma = \sqrt{\sum_{i=1}^N (x_i - \bar x)^2 }

   where :math:`x_i` represents each separate measurement and :math:`\bar x` is
   the mean of all observations. So, in words: calculate how far each
   observation is from the average, square this, and then average all the
   results. It's a measurement of how spread out measurements are.
#. The standard error of some estimator. For example, perhaps the error bars are
   the standard error of the mean. If I were to measure many different samples
   of patients, each containing exactly *n* subjects, I can estimate that 68% of
   the mean times to recover I measure will be within one standard error of
   "real" average time to recover. Many statistical techniques, like
   least-squares regression, provide standard error estimates for their
   results.
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
between the groups, even though the confidence intervals overlap.

Unfortunately, many scientists skip hypothesis tests and simply glance at plots
to see if confidence intervals overlap. This is actually a much more
conservative test -- requiring confidence intervals to not overlap is akin to
requiring :math:`p < 0.01` in some cases.\ :cite:p:`Schenker:2001cr` It is easy
to claim two measurements are not significantly different even when they are.

A survey of psychologists, neuroscientists and medical researchers found that
the majority made this simple error, with many scientists confusing standard
errors, standard deviations, and confidence intervals.\ :cite:p:`Belia:2005dg`
Another survey of climate science papers found that a majority of papers which
compared two groups with error bars made the error.\ :cite:p:`Lanzante:2005hi`

Overlapping confidence intervals do not mean two values are not significantly
different. Similarly, separated standard error bars do not mean two values *are*
significantly different. It's always best to use the appropriate hypothesis test
instead. Your eyeball is not a well-defined statistical procedure.
