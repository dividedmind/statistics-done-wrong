
An introduction to data analysis
================================

Much of experimental science comes down to measuring changes. Does one medicine
work better than another? Do cells with one version of a gene synthesize more of
an enzyme than cells with another version? Does one kind of signal processing
algorithm detect pulsars better than another? Is one catalyst more effective at
speeding a chemical reaction than another?

Much of statistics, then, comes down to making judgments about these kinds of
differences. We talk about "statistically significant differences" because
statisticians have devised ways of telling if the difference between two
measurements is really big enough to ascribe to anything but chance.

Suppose you're testing cold medicines. Your new medicine promises to cut the
duration of cold symptoms by a day. To prove this, you find twenty patients with
colds and give half of them your new medicine and half a placebo. Then you track
the length of their colds and find out what the average cold length was with and
without the medicine.

But all colds aren't identical. Perhaps the average cold lasts a week, but some
last only a few days, and others drag on for two weeks or more, straining the
household Kleenex supply. It's possible that the group of ten patients receiving
genuine medicine will be the unlucky types to get two-week colds, and so you'll
falsely conclude that the medicine makes things worse. How can you tell if
you've proven your medicine works, rather than just proving that some patients
are unlucky?

.. index:: ! p value

.. _p-values:

The power of *p* values
-----------------------

Statistics provides the answer. If we know the *distribution* of typical cold
cases -- roughly how many patients tend to have short colds, or long colds, or
average colds -- we can tell how likely it is for a random sample of cold
patients to have cold lengths all shorter than average, or longer than average,
or exactly average. By performing a statistical test, we can answer the question
"If my medication were completely ineffective, what are the chances I'd see data
like what I saw?"

That's a bit tricky, so read it again.

Intuitively, we can see how this might work. If I only test the medication on
one person, it's unsurprising if he has a shorter cold than average --
about half of patients have colds shorter than average. If I test the medication
on ten million patients, it's pretty damn unlikely that *all* of them will have
shorter colds than average, *unless my medication works.*

The common statistical tests used by scientists produce a number called
the *p* value that quantifies this. Here's how it's defined:

  The P value is defined as the probability, under the assumption of no effect
  or no difference (the :index:`null hypothesis`), of obtaining a result equal
  to or more extreme than what was actually observed.\ :cite:p:`Goodman:1999tx`

So if I give my medication to 100 patients and find that their colds are a day
shorter on average, the *p* value of this result is the chance that, if my
medication didn't do anything at all, my 100 patients would randomly have
day-shorter colds. Obviously, the *p* value depends on the size of the effect --
colds shorter by four days are less likely than colds shorter by one day -- and
the number of patients I test the medication on.

That's a tricky concept to wrap your head around. A *p* value is not a measure
of how right you are, or how significant the difference is; it's a measure
of *how surprised you should be* if there is no actual difference between the
groups, but you got data suggesting there is. A bigger difference, or one backed
up by more data, suggests more surprise and a smaller *p* value.

It's not easy to translate that into an answer to the question "is there really
a difference?"  Most scientists use a simple rule of thumb: if *p* is less than
0.05, there's only a 5% chance of obtaining this data unless the medication
really works, so we will call the difference between medication and placebo
"significant."  If *p* is larger, we'll call the difference insignificant.

The *p* value can be extended to more complex analyses than the comparison of
two groups. If it's possible to construct a model which states the likelihood of
each possible outcome under some assumption, it's possible to compute a *p*
value for each outcome. When scientists fit lines to data they get a *p* value
for the hypothesis that the relationship between the variables is zero; when
they test if data follows a certain distribution, or if certain variables are
independent of each other, or use one of many dozens of other assorted
statistical tests, they use *p* values.

.. index:: effect size

But there are limitations. The *p* value is a measure of surprise, not a measure
of the size of the effect. I can get a tiny *p* value by either measuring a huge
effect -- "this medicine makes people live four times longer" -- or by measuring
a tiny effect with great certainty. Given that there is almost never *exactly*
zero difference between groups, you can always get a statistically significant
result by collecting so much data that you detect the tiniest unimportant
differences. Statistical significance does not mean your result has any
*practical* significance.

Similarly, statistical *in*\ significance is hard to interpret. I could have a
perfectly good medicine, but if I test it on ten people, I'd be hard-pressed to
tell the difference between a real improvement in the patients and plain good
luck. Alternately, I might test it on thousands of people, but the medication
only shortens colds by three minutes, and so I'm simply incapable of detecting
the difference. A statistically insignificant difference does not mean there is
no difference at all.

There's no mathematical tool to tell you if your hypothesis is true; you can
only see whether it is consistent with the data, and if the data is sparse or
unclear, your conclusions are uncertain.

Psychic statistics
------------------

Hidden beneath these obvious interpretational difficulties are more subtle
issues with *p* values. Their definition as the probability of obtaining a
result equal to *or more extreme* than the one observed requires us to reason
about results which have never occurred -- results more extreme than ours. The
probability of obtaining these results can be dependent on your intentions,
making *p* values "psychic": two experiments with different designs can obtain
identical data but produce different *p* values. This does not make *p* values
worthless or misleading, but it is confusing, and it can cause many trip-ups
which we will discuss later.

Suppose I ask you a series of true-or-false questions about statistical
inference, and after I have asked twelve questions you have correctly answered
nine. I decide to test the hypothesis that you have answered the questions
randomly, so I compute the probability of all the possible ways you could have
answered nine or more questions correctly if you simply picked true or false
with equal probability. A simple way to calculate this is to use the
:index:`binomial distribution`, the probability distribution of obtaining a
certain number of successes after a number of trials where there is a fixed
probability of success. After some arithmetic, I determine that :math:`p =
0.073`. Because :math:`p > 0.05` it is possible, but unlikely, that you guessed
your way to success.\ :cite:p:`Wagenmakers:2007bg`

.. index:: negative binomial distribution

But perhaps it was not my original plan to ask you only twelve questions. I
might have had a book of thousands of questions and simply asked questions until
you got three wrong. Now the number of questions is not fixed, and I must
compute the probability of various ways of getting three questions wrong after
ten or fifteen or forty-seven questions. Also, I can only consider cases where
you got the last question wrong and reached three total wrong answers. Now I
can't use the binomial distribution to calculate my result, and instead I use
the *negative* binomial distribution (which is not simply the negative of the
binomial distribution, but a different distribution entirely). I find that
:math:`p = 0.033`, and since :math:`p < 0.05` I reject the hypothesis that you
randomly guessed.

This is immensely dissatisfying, since it implies that two experiments can
collect exactly identical data which nevertheless represents different amounts
of evidence against the null hypothesis. The problem is at the root of the
differences between two major schools of thought in the interpretation of
statistical tests -- schools which modern scientists gleefully smash together,
unaware of the reasons for their differences.

The first major statistical school of thought was popularized by
:index:`R. A. Fisher` in the 1920s. Fisher proposed the *p* value as a handy
informal method to see how surprising the data is, rather than as part of some
strict formal procedure for testing hypotheses. Interpreted along with
background information, such as the results of prior experience and knowledge of
what hypotheses are plausible, the *p* value could help us decide what to do
with new data.

However, I have already mentioned that the *p* value does not take into account
the size of the observed effect: it may be large but statistically insignificant
or tiny but statistically significant. Other scientists and statisticians
objected to Fisher's method on these grounds and competing methods were
developed to replace it, such as the hypothesis testing framework of
:index:`Jerzy Neyman` and :index:`Egon Pearson` published in the 1930s.

.. index:: hypothesis testing, false positive rate

Neyman and Pearson had different goals than Fisher. They were designing a
procedure for testing hypotheses, not a handy measure of surprise, and so they
put the *p* value to work. In science, they reasoned, it is important to limit
two kinds of errors: false positives, where we conclude there is an effect when
there isn't, and false negatives, where we fail to notice a real effect. We can
determine through experience an acceptable rate of false positives and false
negatives and use *p* values as a tool to make decisions which commit these
errors at the specified rate.

In this system, we reject the null hypothesis -- the hypothesis that there is no
effect -- and conclude there is a real effect when :math:`p < \alpha`, where
:math:`\alpha` is the chosen false positive rate. If :math:`p > \alpha` we do
not reject the null hypothesis, and we conclude we have insufficient data to
detect any effect. By following this procedure we guarantee that we will commit
a false positive error only :math:`\alpha` percent of the time. This method
deliberately does not address the strength of evidence in any one particular
experiment. We care only about the chosen false positive rate threshold, not the
size of an individual *p* value, and if we follow the threshold we will have a
particular false positive rate in the long run.

In the years since Fisher, Neyman and Pearson developed their systems, they have
been mashed together into an unrecognizable mess by practicing scientists.\
:cite:p:`Goodman:1999tx` The trouble is that Neyman and Pearson provided no way
to assess the strength of the evidence in a single experiment. You either reject
the null hypothesis or you do not. On the other hand, Fisher has a convenient
measure of the strength of evidence in the form of the *p* value but has no
procedure which can guarantee a particular error rate in the long
run. Scientists would like to have everything, so they combine the two
approaches and interpret, say, a :math:`p = 0.032` result as indicating that
they could obtain a false positive of this size only 3.2% of the time if there
is no true effect.

But they are playing the role of the :index:`Texas sharpshooter` who draws his
target on the side of a barn only after shooting a hole in it. The
Neyman-Pearson system only provides guarantees about the long-run rate of false
positives when using a certain false positive threshold to reject null
hypotheses; it cannot say anything about individual hypotheses. Fisher can speak
about the strength of evidence in your experiment without guaranteeing a false
positive rate. We cannot mix the two and simultaneously say something about one
individual experiment and the long-run behavior of many experiments using the
same number. The *p* value can only do one thing at a time.
