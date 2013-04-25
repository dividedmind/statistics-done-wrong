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

Imagine a study comparing walrus diets. One group of walruses is fed their
ordinary diet, while two other groups are fed new, more nutritious diets. The
researchers weigh the walruses after a month and find that nutritious diet A
caused the walruses to gain about 25 kilograms more than the ordinary diet,
while nutritious diet B caused the walruses to only gain about 10 kg more.

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
