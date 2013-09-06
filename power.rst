.. index:: 
   single: power
   see: statistical power; power

.. _power:

Statistical power and underpowered statistics
=============================================

We've seen that it's possible to miss a real effect simply by not taking enough
data. In most cases, this is a problem: we might miss a viable medicine or fail
to notice an important side-effect. How do we know how much data to collect?

Statisticians provide the answer in the form of "statistical power." The power
of a study is the likelihood that it will distinguish an effect of a certain
size from pure luck. A study might easily detect a huge benefit from a
medication, but detecting a subtle difference is much less likely. Let's try a
simple example.

Suppose a gambler is convinced that an opponent has an unfair coin: rather than
getting heads half the time and tails half the time, the proportion is
different, and the opponent is using this to cheat at incredibly boring
coin-flipping games. Maybe his coin gives heads 54% of the time, and so he can
bet on heads and win money on average. How to prove it?

You can't just flip the coin a hundred times and count the heads. Even with a
perfectly fair coin, you don't always get fifty heads:

.. figure:: /plots/binomial.*

  The likelihood of getting different numbers of heads, if you flip a coin a
  hundred times.

You can see that 50 heads is the most likely option, but it still happens less
than 10% of the time, because of the plethora of options. It's also reasonably
likely to get 45 or 57, and 95% of the time, you will get between 40 and 60
heads. So if you get 57 heads, the coin might be rigged, but you might just be
lucky. On the other hand, if you get more than 60 or fewer than 40 heads, you
have obtained a comparatively unlikely result, and you have reason to be
suspicious. More extreme results become yet more unlikely: there is only a 1%
chance of obtaining more than 63 or fewer than 37 heads, and reaching 90 or 100
heads is almost impossible.

Let's work out the math. Let's say we look for a *p* value of 0.05 or less, as
scientists typically do. That is, if I count up the number of heads after 10 or
100 trials and find a deviation from what I'd expect -- half heads, half tails
-- I call the coin unfair if there's only a 5% chance of getting a deviation
that size or larger with a fair coin. Otherwise, I can conclude nothing: the
coin may be fair, or it may be only a little unfair. I can't tell.

So, what happens if I flip a coin a hundred times and apply these criteria?

.. figure:: plots/power-curve-100.*

   The power curve for one hundred coin flips.

.. index:: power curve, power; coin flip

This is called a *power curve.* Along the horizontal axis, we have the different
possibilities for the coin's true probability of getting heads, corresponding to
different levels of unfairness. On the vertical axis is the probability that I
will conclude the coin is rigged after 100 tosses, based on the *p* value of the
result.

We can derive the power curve by calculating the probabilities of various
coin-flipping outcomes. The power for any given true probability of heads is the
probability that this coin will give more than 60 or fewer than 40 heads after
100 tosses, because this range includes 95% of outcomes for a fair coin --
anything outside the range is a :math:`p < 0.05` anomaly. (In this case I
included both more than 60 and fewer than 40 heads, because I only care about
the size of the anomaly, not whether it favors heads or tails. This is known as
a two-sided test. I could also only count the probability of getting more than
60 heads, making a one-sided test.)

You can see that if the coin is rigged to give heads 60% of the time and I flip
the coin 100 times, I only have a 50% chance of concluding that it's
rigged. There's just too little data to always separate rigging from random
variation. The coin would have to be incredibly biased for me to always
notice. Alternately, if the coin is perfectly fair, I will falsely conclude it
is biased 5% of the time, because I will get sufficiently large deviations by
chance that often.

But what if I flip the coin 10 times?

.. figure:: /plots/power-curve-10.*

   The power curve for ten coin flips.

Clearly ten flips are wholly inadequate to detect a rigged coin unless it has
heads printed on both sides. What about 1,000 flips?

.. figure:: plots/power-curve-1000.*

   The power curve for one thousand coin flips.

With one thousand flips, I can easily tell if the coin is rigged to give heads
60% of the time. It's just overwhelmingly unlikely that I could flip a fair coin
1,000 times and get more than 600 heads; 95% of the time, I will get between 469
and 531.

Unfortunately, our hypothetical gambler may not have the time to flip his
opponent's coin 1,000 times to test its fairness, so performing a sufficiently
powerful test may be out of the question for purely practical reasons. It turns
out that similar problems affect scientific research: many scientists do not
have the resources to conduct studies with adequate statistical power to detect
what they are looking for.

.. _power-underpowered:

The power of being underpowered
-------------------------------

You might think calculations of statistical power are essential to medical
trials: A scientist might want to know how many patients are needed to test if a
new medication improves survival by more than 10%, and a quick calculation of
statistical power would provide the answer. Scientists are usually satisfied
when the statistical power is 0.8 or higher, corresponding to an 80% chance of
detecting a real effect.

However, few scientists ever perform this calculation, and few journal articles
ever mention the statistical power of their tests.

Consider a trial testing two different treatments for the same condition. You
might want to know which medicine is safer, but unfortunately, side effects are
rare. You can test each medicine on a hundred patients, but only a few in each
group suffer serious side effects. Obviously, you won't have terribly much data
to compare side effect rates. If four people have serious side effects in one
group and three in the other, you can't tell if that's the medication's fault.

Unfortunately, many trials conclude with "There was no statistically significant
difference in adverse effects between groups" without noting that there was
insufficient data to detect any but the largest
differences.\ :cite:p:`Tsang:2009iw` And so doctors erroneously think the
medications are equally safe, when one could well be much more dangerous than
the other.

Perhaps this is only a problem for rare side effects, or cases where the
medication only has a weak effect. Nope: in one sample of studies published
between 1975 and 1990 in prestigious medical journals, 64% of randomized
controlled medical trials didn't collect enough data to detect a 50% difference
between treatment groups. Fifty percent!  Even if one medication decreases
symptoms by 50% more than the other medication, there's insufficient data to
conclude it's more effective. And 84% of trials didn't have the power to detect
a 25% difference.\ :cite:p:`Moher:1994`

A more recent study of trials in cancer research found similar results: only
about half of published studies had enough statistical power to detect a large
difference in their primary outcome variable.\ :cite:p:`Bedard:2007dy` Less than
ten percent of studies explained why their sample sizes were so poor. The same
problems have been consistently seen in other fields of medicine, including
emergency medicine.\ :cite:p:`Brown:1987uu,Chung:1998ku`

In neuroscience the problem is even worse. Suppose we aggregate the data
collected by numerous neuroscience papers investigating one particular effect
and arrive at a strong estimate of the effect's size. Because each individual
study involved so little data, the median study has only a 20% chance of being
able to detect the effect; only after many studies were aggregated could the
effect be discerned. Similar problems arise in neuroscience studies using animal
subjects, which raises a significant ethical concern: If each study is
underpowered, the true effect will only likely be discovered after many studies
using many animals have been completed and analyzed, using far more animal
subjects than if the study had been done properly the first time.\
:cite:p:`Button:2013dz` An ethical review board may not approve a trial if they
know that it is unable to detect the effect it is looking for.

Curiously, this problem has been known about for decades, and yet it is as
prevalent now as it was when first pointed out. Jacob Cohen famously
investigated the statistical power of studies published in the *Journal of
Abnormal and Social Psychology* in 1960, discovering that the average study had
only a power of 0.48 for detecting medium-sized effects -- essentially
equivalent to flipping a coin. His research was cited hundreds of times and many
similar reviews followed, exhorting the need for power calculations and greater
sample sizes, until a 1989 review determined that in the decades since Cohen's
research, the average study's power had *decreased*.\ :cite:p:`Sedlmeier:1989it`
This decrease was due to researchers becoming aware of another problem, the
issue of multiple comparisons, and compensating for it in a way that reduces
their power. We will discuss multiple comparisons in the coming chapter on the
base rate fallacy, and find that there is an unfortunate tradeoff between power
and multiple comparison correction.

The perils of insufficient power do not mean that scientists are lying when they
state they detected no significant difference between groups. You're just
misleading yourself when you assume this means there is no *real*
difference. There may be a difference, but the study was too small to notice
it. Let's consider an example we see every day.

.. index:: right turn on red, power; right turn on red

.. _rtor:

Wrong turns on red
------------------

In the 1970s, many parts of the United States began to allow drivers to turn
right at a red light. For many years prior, road designers and civil engineers
argued that allowing right turns on a red light would be a safety hazard,
causing many additional crashes and pedestrian deaths. But the 1973 oil crisis
and its fallout spurred traffic agencies to consider allowing right turn on red
to save fuel wasted by commuters waiting at red lights, and eventually Congress
required states to allow right turns on red, treating it as an energy
conservation measure just like building insulation standards and more efficient
lighting.

Several studies were conducted to consider the safety impact of the change. For
example, a consultant for the Virginia Department of Highways and Transportation
conducted a before-and-after study of twenty intersections which began to allow
right turns on red. Before the change there were 308 accidents at the
intersections; after, there were 337 in a similar length of time. However, this
difference was not statistically significant, and the consultant indicated this
in his report. When the report was forwarded to the Governor, the Commissioner
of the Virginia Department of Highways and Transportation wrote that "we can
discern no significant hazard to motorists or pedestrians from implementation"
of right turns on red. In other words, he turned statistical insignificance into
practical insignificance.\ :cite:p:`Hauer:2004fz`

Several subsequent studies had similar findings: small increases in the number
of crashes, but not enough data to conclude these increases were significant. As
one report concluded,

   There is no reason to suspect that pedestrian accidents involving RT
   operations (right turns) have increased after the adoption of [right turn on
   red]...

It does not appear that anyone attempted to aggregate these many small studies
together to produce a more useful dataset. Instead more cities and states began
to allow right turns at red lights, until the practice became widespread across
the entire United States. The problem, of course, is that these studies were
underpowered. More pedestrians were being run over and more cars were involved
in collisions, but nobody collected enough data to show this conclusively until
several years later, when studies arrived clearly showing the results:
significant increases in collisions and pedestrian accidents.\
:cite:p:`Preusser:1982gp,Zador:1984jr` Collisions involving right turns occurred
roughly 20% more frequently, 60% more pedestrians were run over, and twice as
many bicyclists were struck. [#rare]_

Unfortunately, the underpowered studies won; once right turns were allowed, it
became difficult to ban them again. Right turns are now banned at certain
intersections where there is heightened risk for pedestrians (for example, near
university campuses where there are many distracted pedestrians with iPhones),
but distracted drivers rarely notice the signs. The underpowered studies won.

In the world of traffic safety, little has been learned from this example: a
2002 study, for example, considered the impact of paved shoulders on the
accident rates of traffic on rural roads. Unsurprisingly, a paved shoulder
reduced the risk of accident -- but there was insufficient data to declare this
reduction statistically significant, and so the authors acted as though they had
found no difference at all. But they *had* collected data, and they *had* found
that shoulders improved safety. The evidence was simply not strong enough to
meet their desired *p* value threshold.

Do not confuse a lack of statistical significance with a lack of evidence -- and
always perform studies capable of gathering the level of evidence you need.

.. index:: observed power, power; observed

Doing power backwards
---------------------

Many scientists have noticed these issues with statistical power and made
recommendations for better analysis techniques to avoid misleading
conclusions. For example, many researchers -- and some journal editors -- now
recommend that authors who fail to detect a statistically significant effect
should compute the "observed power" of their study. If the observed power is
high, the study was large enough but failed to detect a statistically
significant effect, and it is plausible to conclude there is no effect at all.

Or so goes the theory. Observed power is meant to correct several difficulties
in normal power calculations, which require prior knowledge of the expected
effect size and the typical variation in each observation (for example, the
typical random fluctuations in symptoms of a disease). Prior to completing the
study, however, we may not know any of these numbers, and so a power calculation
and resulting sample size requirement may only be a guess. Instead of guessing,
we can compute power after the fact, using the effect size and variability we
observed in our sample. For small samples these may not be accurate, but they
are the best estimates we have.

Once we've computed the observed power, we can ask whether our power was high
enough to make the result conclusive. If the result was statistically
insignificant, low power would indicate that we didn't collect enough data; high
power would indicate that we collected plenty of data but there simply was no
effect to detect.

This is a beautifully convenient and easily-used method, which is why it is so
tragic that it doesn't work.

The *p* value for a study is computed based on the observed data: the mean
effects observed for each group and the variability in each group. The observed
power is computed based on *exactly the same data*, and the *p* value and the
observed power have a one-to-one correspondence. For any given *p* value, there
is only one possible observed power you will ever obtain. If you see :math:`p =
0.06`, there is only one possible observed power. [#opower]_

Even worse, the relationship between observed power and evidence is exactly the
opposite of what we assumed.\ :cite:p:`Hoenig:2001cg` As the *p* value
decreases, indicating stronger evidence that there is a true effect, the
observed power *increases*. If we have two similar studies which both produced
statistically insignificant results, the study with the smaller *p* value offers
stronger evidence that there is a true effect -- but it has a greater observed
power and hence offers stronger evidence that there is *no* effect, according to
our earlier reasoning.

This paradox (the ":index:`power approach paradox`") makes observed power
calculations essentially useless. The observed power does not reveal any
information about the data that the *p* value does not, and it is easy to
misinterpret.

Another approach differs in the details but suffers from the same
paradox. Instead of computing the power of our study for detect the effect we
estimated, we calculate the effect size necessary to achieve a target power
level (such as 0.8) and call it the "detectable effect size". If the detectable
effect size is very small, we could interpret this as evidence that no effect
exists -- if one did, surely we would have noticed it. If the detectable effect
is very large, our study was underpowered.

This approach leads to the same paradox. If we have two studies with the same
sample size and estimated effect sizes, but one has a lower *p* value, this
implies the variation was less in that study -- smaller random variation means
the true effect can be more easily discerned. It also means the detectable
effect size will be smaller, for the same reason, and so the *p* value offers
stronger evidence that there is a true effect while the detectable effect size
suggests stronger evidence that no effect exists.

Hypothesis testing cannot prove that there is no effect; it can only prove that
you haven't found one yet.

.. admonition:: What should you do?

   * Calculate the statistical power of your study in advance to determine the
     appropriate sample size.
   * If you find no statistically significant effect, remember that the effect
     could simply be smaller than you can reliably detect. "Not significant"
     does not mean "nonexistent."
   * Remember that "statistically insignificant" does not mean "zero"; even if
     your result is insignificant, it represents the best available estimate
     given the data you have collected.

.. [#rare] It is important to note that accidents involving right turns are
   rare, so these changes amount to less than 100 deaths per year in the United
   States.\ :cite:p:`nhtsa` A 60% increase in a small number is still small --
   but nonetheless, a statistical error kills dozens of people each year!

.. [#opower] I won't quote a specific observed power because it depends on the
   type of statistical test you are performing to get your *p* value.
