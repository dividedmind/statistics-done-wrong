.. index:: pseudoreplication, technical replicates

******************************************
Pseudoreplication: choose your data wisely
******************************************

Many studies strive to collect more data through replication: by repeating their
measurements with additional patients or samples, they can be more certain of
their numbers and discover subtle relationships that aren't obvious at first
glance. We've seen the value of additional data for improving statistical power
and detecting small differences. But what exactly counts as a replication?

Let's return to a medical example. I have two groups of 100 patients taking
different medications, and I seek to establish which medication lowers blood
pressure more. I have each group take the medication for a month to allow it to
take effect, and then I follow each group for ten days, each day testing their
blood pressure. I now have ten data points per patient and 1,000 data points per
group.

Brilliant! 1,000 data points is quite a lot, and I can fairly easily establish
whether one group has lower blood pressure than the other. When I do
calculations for statistical significance I find significant results very
easily.

But wait: we expect that taking a patient's blood pressure ten times will yield
ten very similar results. If one patient is genetically predisposed to low blood
pressure, I have counted his genetics ten times. Had I collected data from 1,000
independent patients instead of repeatedly testing 100, I would be more
confident that differences between groups came from the medicines and not from
genetics and luck. I claimed a large sample size, giving me statistically
significant results and high statistical power, but my claim is unjustified.

This problem is known as pseudoreplication, and it is quite common.\
:cite:p:`Lazic:2010fc` After testing cells from a culture, a biologist might
"replicate" his results by testing more cells from the same
culture. Neuroscientists will test multiple neurons from the same animal,
incorrectly claiming they have a large sample size because they tested hundreds
of neurons from just two rats. A marine biologist might experiment on fish kept
in aquariums, forgetting that fish sharing a single aquarium are not
independent and their conditions may be affected by each other as well as the
tested treatment.\ :cite:p:`Hurlbert:1984uv`

In statistical terms, pseudoreplication occurs when individual observations are
heavily dependent on each other but the statistical analysis fails to take this
into account. In some cases this dependence can be broken by carefully designing
the experiment; if I believe that two aquariums are systematically different, I
can trade fish between aquariums to see what happens. Alternately, there are
several ways to account for dependence while performing the statistical
analysis:

#. Average the dependent data points. For example, average all the blood
   pressure measurements taken from a single person. This isn't perfect, though;
   if you measured some patients more frequently than others, this won't be
   reflected in the averaged number. You want a method that is somehow more
   certain as more measurements are taken.
#. Analyze each dependent data point separately. You could perform an analysis
   of every patient's blood pressure on day 5, giving you only one data point per
   person. But be careful, because if you do this for every day, you'll have
   problems with :ref:`multiple comparisons <multiple-comparisons>`, which we
   will discuss in the next chapter.
#. Use a statistical model which accounts for the dependence, like a
   hierarchical model or random effects model. This will also give you an
   estimate of the size of the dependence.

It's important to consider each approach before analyzing your data, as each
method is suited to different situations. Pseudoreplication makes it easy to
achieve significance, even though it gives you little additional information on
the test subjects. Researchers must be careful not to artificially inflate their
sample sizes when they retest samples.

.. index:: microarrays

Batch biology
-------------

New technology has led to an explosion of data in biology: Inexpensive
labs-on-a-chip called microarrays allow biologists to track the activities of
thousands of proteins or genes simultaneously. Microarrays contain thousands of
"probes" which chemically bind to different proteins or genes, and fluorescent
dyes allow a scanner to detect the quantity of material bound to each
probe. Researchers process the contents of cells and inject them onto
microarrays for analysis; obtain samples of cancerous cells and you can track
the expression of thousands of different genes, allowing comparisons with a
control group of healthy cells. Subtle differences can be discovered and might
lead to new targeted cancer treatments which leave healthy tissue unharmed.

Microarrays are usually processed in batches on machines which detect the
fluorescent dyes, and in a large study different microarrays may be processed by
different laboratories using different equipment. A naive experimental setup
might be to collect a dozen cancerous samples and a dozen healthy samples,
inject them into microarrays, then run all the cancerous samples through the
processing machine on Tuesday and the healthy samples on Wednesday.

You probably see where this is going. Taking additional samples doesn't
genuinely replicate your experiment if you process them in the same
batch. Experiments have demonstrated that microarray results vary strongly
between processing batches -- sometimes the largest source of variation in the
data is simply what day you processed the microarrays on. Between batches,
calibrations may change, laboratory temperatures may affect the chemical
reactions involved, and different bottles of chemical reagents might be used
during processing. Worse, these issues do not affect the entire microarray in
the same way -- correlations between pairs of genes on the same microarray can
entirely reverse when processed in a different batch.\ :cite:p:`Leek:2010jq`

These problems can be mitigated by careful experimental design. If two different
biological groups are being tested, split each group evenly between batches so
the systematic differences do not affect each group in different ways. Carefully
record how each batch was processed, how each sample was stored, and what
chemical reagents were used during processing, and make this information
available to the statisticians analyzing the data so they use it to detect
problems.

For example, a statistician could perform :index:`principal components analysis`
on the data to determine whether different batches gave wildly different
results. Principal components analysis determines which combinations of
variables in the data account for the most variation in the results; if it
indicates that different batches are wildly different, the data can be analyzed
using a hierarchical model or taking batch number into account as a confounding
variable.

.. _periods:

Synchronized pseudoreplication
------------------------------

Pseudoreplication can occur through less obvious routes. Consider one example in
an article reviewing the prevalence of pseudoreplication in the ecological
literature.\ :cite:p:`Heffner:1996vq` Suppose you want to see if chemicals found
in the growing shoots of grasses are responsible for the start of the
reproductive season in cute furry mammals which eat those grasses. You propose
an experiment: place some animals in the lab, feeding half ordinary food and the
other half food mixed with the grasses, then wait to see if their reproductive
cycle starts early.

But some research suggests that the reproductive cycles of mammals can
synchronize if they live in groups, due to pheromones emitted by animals in
estrous. Your control group isn't independent of the group eating the grasses,
because they're in the same lab and exposed to the same pheromones.

You've probably heard about the research suggesting that reproductive cycles
synchronize -- a famous paper in the early 1970s suggested that women's
:index:`menstrual cycles` could synchronize if they lived in close contact.\
:cite:p:`McClintock:1971bh` Other studies have found similar results in golden
hamsters, Norway rats, and chimpanzees. This synchronization can cause
pseudoreplication in our studies, and we need to more carefully design the
experiments to avoid it.

You might wonder how you prove that menstrual cycles (or the :index:`estrous
cycles` of hamsters) synchronize. As it turns out, you can't. The studies which
did so were pseudoreplicated. In this case the mistake was insidious, and for
humans, the study went something like this:

1. Find groups of women who live together in close contact: in this case,
   college students who live in dormitories.
2. Every month or two, ask each woman when her last menstrual periods had begun
   and to list the other women with whom she spent the most time.
3. Use these lists to categorize the women into groups that tend to spend time
   together.
4. For each group of women, see how far the average woman's period start date
   deviates from the average.

If the deviations are small, all the women tend to have cycles which start at
the same time. The researchers then tested whether the deviations decreased over
time, indicating that the women began to synchronize. To do this, they checked
the mean deviation at five different points throughout the study, and tested
whether this deviation decreased.

Unfortunately, the statistical test used requires the five points to be
independent, whereas for most women, the date one period starts is related
strongly to the date the next starts. If the women started the study
synchronized by luck, they will remain roughly synchronized for the rest of the
study, and five samples are no better than one. The five samples weren't
independent, and so we only thought our experiment could have pseudoreplication
because we believed a pseudoreplicated study.\
:cite:p:`Yang:2006wf,Schank:2009fo`

Similar problems exist with other studies claiming that small furry mammals
synchronize their estrous cycles, and subsequent research using corrected
statistical methods has failed to replicate to find any evidence of estrous or
menstrual synchronization. [#synch]_

.. admonition:: What should you do?

   * Distinguish between replication and *technical* replication, where you
     simply make repeat measurements of a sample.
   * Use statistical methods which account for the strong dependence between
     your measurements, such as hierarchical and random effects models.
   * Design experiments to eliminate hidden sources of correlation between
     variables or to record the confounding factors so they can be adjusted for
     statistically.

.. [#synch] That's not to say periods will never synchronize. If a group of
   women have periods with slightly different cycle lengths, they will
   converge and diverge in long cycles over time. Sometimes they will be
   synchronized and sometimes they will not be.
