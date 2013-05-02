
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
  or no difference (the null hypothesis), of obtaining a result equal to or more
  extreme than what was actually observed.\ :cite:p:`Goodman:1999tx`

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
each possible outcome when we assume a particular model is true, it's possible
to compute a *p* value for each outcome. When scientists fit lines to data they
get a *p* value for the hypothesis that the relationship between the variables
is zero; when they test if data follows a certain distribution, or if certain
variables are independent of each other, or use one of many dozens of other
assorted statistical tests, they use *p* values.

But there are limitations. The *p* value is a measure of surprise, not a measure
of the size of the effect. I can get a tiny *p* value by either measuring a huge
effect -- "this medicine makes people live four times longer" -- or by measuring
a tiny effect with great certainty. Statistical significance does not mean your
result has any *practical* significance.

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

But we can't let that stop us.
