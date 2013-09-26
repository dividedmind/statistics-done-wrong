.. index:: open data

.. _hiding-data:

***************
Hiding the data
***************

.. epigraph::

    "Given enough eyeballs, all bugs are shallow." 

    -- Eric S. Raymond

We've talked about the :ref:`common mistakes <mistakes>` made by scientists and
how the best way to spot them is a bit of outside scrutiny. Peer review provides
some of this scrutiny, but a peer reviewer doesn't have the time to extensively
re-analyze data and read code for typos -- reviewers can only check that the
methodology makes good sense. Sometimes they spot obvious errors, but subtle
problems are usually missed.\ :cite:p:`Schroter:2008hw`

This is why many journals and professional societies require researchers to make
their data available to other scientists on request. Full datasets are usually
too large to print in the pages of a journal, so authors report their results
and send the complete data to other scientists if they ask for a copy. Perhaps
they will find an error or a pattern the original scientists missed.

Or so it goes in theory. In 2005, Jelte Wicherts and colleagues at the
University of Amsterdam decided to analyze every recent article in several
prominent journals of the American Psychological Association to learn about
their statistical methods. They chose the APA partly because it requires authors
to agree to share their data with other psychologists seeking to verify their
claims.

Of the 249 studies they sought data for, they had only received data for 64 six
months later. Almost three quarters of study authors never sent their data.\
:cite:p:`Wicherts:2006jg`

.. index:: p value; errors in calculation

Of course, scientists are busy people, and perhaps they simply didn't have the
time to compile their datasets, produce documents describing what each variable
means and how it was measured, and so on. Wicherts and his colleagues decided
they'd test this. They trawled through all the studies looking for common errors
which could be spotted by reading the paper, such as inconsistent statistical
results, misuse of various statistical tests, and ordinary typos. At least half
of the papers had an error, usually minor, but 15% reported at least one
statistically significant result which was only significant because of an error.

Next they looked for a correlation between these errors and an unwillingness to
share data. There was a clear relationship. Authors who refused to share their
data were more likely to have committed an error in their paper, and their
statistical evidence tended to be weaker.\ :cite:p:`Wicherts:2011fp` Because
most authors refused to share their data, Wicherts could not dig for deeper
statistical errors, and many more may be lurking.

This is certainly not proof that authors hid their data out of fear their errors
may be uncovered, or even that the authors knew about the errors at
all. Correlation doesn't imply causation, but it does waggle its eyebrows
suggestively and gesture furtively while mouthing "look over there."  [#xkcd]_

Sharing data isn't always as easy as posting a spreadsheet online, though some
fields have particularly low barriers: there exist gene sequencing databases,
protein structure databanks, astronomical observation databases, and earth
observation collections containing the contributions of thousands of
scientists. Medical data is particularly tricky, however, since it must be
carefully scrubbed of any information which may identify a
patient. Pharmaceutical companies also raise strong objections to sharing their
data on the grounds that it is proprietary. Consider, for example, the
:index:`European Medicines Agency`.

In 2007, researchers from the :index:`Nordic Cochrane Center` sought data from
the EMA about two common weight-loss drugs. They were conducting a systematic
review of the effectiveness of the drugs and knew that the EMA, as the authority
in charge of allowing drugs onto the European market, would have trial data
submitted by the manufacturers. The EMA, however, refused to disclose the data,
on the grounds that it might "unreasonably undermine or prejudice the commercial
interests of individuals or companies" by revealing the trial design methods and
commercial plans, and rejected the claim that withholding the data could harm
patients.

After three and a half years of bureaucratic wrangling, the European Ombudsman
finally ordered the EMA to release the documents, after reviewing each study
report and finding that there was no secret commercial information to be
found. In the meantime, one of the diet drugs had been taken off of the market
due to side effects including serious psychiatric problems.\ :cite:p:`Goldacre`

Apart from privacy and commercial concerns, there are many practical issues
preventing data sharing. Data is frequently stored in unusual formats produced
by various scientific instruments or analysis packages, and spreadsheet software
often saves data in proprietary or incompatible formats. Releasing data also
requires researchers to provide descriptions of the data format and measurement
techniques -- what equipment settings were used, how calibration was handled,
and so on. Some researchers may simply not have any way of sharing gigabytes of
data.

.. index:: Figshare, Dryad Digital Repository

Various Internet start-up companies are trying to address this
problem. `Figshare <http://figshare.com/>`__, for instance, allows researchers
to upload gigabytes of data to be shared publicly in any file format, and makes
plots and figures citable by other researchers who might find them useful. The
`Dryad Digital Repository <http://datadryad.org/>`__ partners with various
scientific journals to allow authors to deposit data during the article
submission process and encourages authors to cite data they have relied upon,
giving scientists credit for uploading data which becomes widely used. Dryad
also promises to convert common file formats to new formats as they become
obsolete, preventing data from fading into obsolescence as programs lose the
ability to read it. But even with these features, will enough researchers share
their data? And will anyone bother to check it for errors?

.. _omit-details:

Just leave out the details
--------------------------

Nitpicking statisticians getting you down by pointing out flaws in your paper?
There's one clear solution: don't publish as much detail! They can't find the
errors if you don't say how you evaluated your data.

I don't mean to seriously suggest that evil scientists do this intentionally,
although perhaps some do. More frequently, details are left out because authors
simply forgot to include them, or because journal space limits force their
omission. It is not uncommon for major journals to enforce word limits on
articles; *The Lancet*, for example, requires articles to be under 3,000 words,
while *Science* limits articles to 4,500 words and suggests that methods be
described in an online supplement to the article. Online-only journals such as
*PLoS ONE* do not need to pay for printing of articles, and so there are no
length limits.

.. index:: clinical trial protocol; reporting

It's possible to evaluate studies to see what they left out. Scientists leading
medical trials are required to provide detailed study plans to ethical review
boards before starting a trial, so one group of researchers obtained a
collection of these protocols from a Danish review board.\ :cite:p:`Chan:2004gm`
The protocols specify how many patients will be recruited, what outcomes will be
measured, how missing data (such as patient drop-outs or accidental sample
losses) would be handled, what statistical analyses will be performed, and so
on. Many study protocols had important missing details, however, and few
published papers matched the protocols.

We have seen how important it is for studies to collect a sufficiently large
sample of data, and most of the ethical review board filings detailed the
calculations used to determine an appropriate sample size. However, less than
half of the published papers described the sample size calculation in detail. It
also appears that recruiting patients for clinical trials is difficult -- half
of the studies recruited different numbers of patients than they intended to,
and sometimes the researchers did not explain why this happened or what impact
it may have on the results.

Worse, many of the scientists omitted results. The review board filings listed
outcomes that would be measured by each study: side effect rates,
patient-reported symptoms, and so on. Statistically significant changes in these
outcomes were usually reported in published papers, but statistically
insignificant results were omitted, as though the researchers had never measured
them. (Obviously, this leads to hidden multiple comparisons: a study may monitor
many outcomes but only report the few that are statistically significant.) A
casual reader would never know that the study had monitored these outcomes. When
surveyed, most of the researchers denied omitting outcomes, but the review board
filings belied their claims. Every single one of their papers had left outcomes
unreported.

.. index:: stopping rules; omitted, multiple imputation

Other reviews have found similar problems. Many studies suffer from missing
data: some patients drop out or do not appear for scheduled check-ups. While
researchers frequently note that data was missing, they frequently do not
explain why or describe how patients with incomplete data were handled,
appearing to be unaware of commonly recommended analysis methods such as
multiple imputation, which fills in the missing data with likely guesses.\
:cite:p:`Bouwmeester:2012ct` Another review of medical trials found that most
studies omit important methodological details, such as :ref:`stopping rules
<stopping-rules>` and :ref:`power calculations <power>`, with studies in small
specialist journals faring worse than those in large general medicine journals.\
:cite:p:`HuwilerMuntener:2002ij`

.. index:: ! CONSORT, reporting guidelines

Medical journals have begun to combat this problem with standards for reporting
of results, such as the `CONSORT checklist
<http://www.consort-statement.org/>`_. Authors are required to follow the
checklist's requirements before submitting their studies and editors check to
make sure all relevant details are included. The checklist seems to work;
studies published in journals which follow the guidelines tend to report more
essential detail, although not all of it.\ :cite:p:`Plint:2006uj` Unfortunately
the standards are inconsistently applied and studies often slip through with
missing details nonetheless.\ :cite:p:`Mills:2005ei` Journal editors will need
to make a greater effort to enforce reporting standards.

We see that published papers aren't faring very well. What about *unpublished*
studies?

.. index:: publication bias, file-drawer problem, TP53

Science in a filing cabinet
---------------------------

Earlier we saw the impact of :ref:`multiple comparisons <multiple-comparisons>`
and :ref:`truth inflation <truth-inflation>` on study results. These problems
arise when studies make numerous comparisons with low statistical power, giving
a high rate of false positives and inflated estimates of effect sizes, and they
appear everywhere in published research.

But not every study is published. We only ever see a fraction of medical
research, for instance, because few scientists bother publishing "We tried this
medicine and it didn't seem to work."

Consider an example: studies of the tumor suppressor protein TP53 and its effect
on head and neck cancer. A number of studies suggested that measurements of TP53
could be used to predict cancer mortality rates, since it serves to regulate
cell growth and development and hence must function correctly to prevent
cancer. When all 18 published studies on TP53 and cancer were analyzed together,
the result was a highly statistically significant correlation: TP53 could
clearly be measured to tell how likely a tumor is to kill you.

But then suppose we dig up *unpublished* results on TP53: data that had been
mentioned in other studies but not published or analyzed. Add this data to the
mix and the statistically significant effect vanishes.\ :cite:p:`Kyzas:2005ep`
After all, few authors bothered to publish data showing no correlation, so the
meta-analysis could only use a biased sample.

A similar study looked at :index:`reboxetine`, an antidepressant sold by
:index:`Pfizer`. Several published studies suggested that it is effective
compared to placebo, leading several European countries to approve it for
prescription to depressed patients. The German :index:`Institute for Quality and
Efficiency in Health Care`, responsible for assessing medical treatments,
managed to get unpublished trial data from Pfizer -- three times more data than
had ever been published -- and carefully analyzed it. The result: reboxetine is
not effective. Pfizer had only convinced the public that it's effective by
neglecting to mention the studies proving it isn't.\ :cite:p:`Eyding:2010bx`

This problem is commonly known as publication bias or the file-drawer problem:
many studies sit in a file drawer for years, never published, despite the
valuable data they could contribute. Or, in many cases, studies are published
but omit the boring results.

In medicine, the gold standard of evidence is a meta-analysis of many
well-conducted randomized trials. The :index:`Cochrane Collaboration`, for
example, is an international group of volunteers which systematically reviews
published randomized trials about various issues in medicine, then produces a
report summarizing the current state of knowledge in the field and the
treatments and techniques best supported by the evidence. These reports have a
reputation for comprehensive detail and methodological scrutiny.

However, if boring results never appear in peer-reviewed publications, the
Cochrane researchers will never include them in reviews, causing what is known
as :index:`outcome reporting bias`. If the Cochrane review is to cover the use
of a particular steroid drug to treat pregnant women entering labor prematurely,
with the target outcome of interest being infant mortality rates, it's no good
if some of the published studies collected mortality data but didn't describe it
in any detail.

The problem can manifest itself in several ways. Some studies omit results
entirely, but this is rare; more frequently, study authors quote *p* values but
not effect sizes, which is useless for meta-analysis -- as we've seen, results
can be statistically significant no matter what the size of the
effect. Alternately, articles might quote effect sizes but no error bars,
leaving the reviewers no way to determine the strength of the evidence. A
systematic review of Cochrane systematic reviews (no, not conducted by Cochrane)
revealed that more than a third are affected by this problem, with the trials
they reviewed sometimes being unusable for review. With the effects of this bias
taken into account, a fifth of statistically significant results would become
insignificant, and a quarter would have their effect sizes decrease by 20% or
more.\ :cite:p:`Kirkham:2010kj`

As worrisome as this is, the problem isn't simply the bias on published
results. Unpublished studies lead to a duplication of effort -- if other
scientists don't know you've done a study, they may well do it again, wasting
money and effort. Funding agencies will begin to wonder why they must support so
many studies on the same subject, and more patients and animal subjects will be
subjected to experiments.

.. index:: clinical trial protocol; registration

Regulators and scientific journals have attempted to halt this problem. The Food
and Drug Administration requires certain kinds of clinical trials to be
registered through their website :index:`ClinicalTrials.gov` before the trials
begin, and requires the publication of results within a year of the end of the
trial. Similarly, the International Committee of Medical Journal Editors
announced in 2005 that they would not publish studies which had not been
pre-registered.

Unfortunately, a review of 738 registered clinical trials found that only 22%
met the legal requirement to publish.\ :cite:p:`Prayle:2011cs` The FDA has not
fined any drug companies for noncompliance, and journals have not consistently
enforced the requirement to register trials.\ :cite:p:`Goldacre` Most studies
simply vanish.

.. index:: clinical trial protocol; databases, CONSORT, STROBE, STREGA, EQUATOR

.. admonition:: What should you do?

   * Register trial protocols in public databases, such as `ClinicalTrials.gov
     <http://clinicaltrials.gov/>`__, the `EU Clinical Trials Register
     <https://www.clinicaltrialsregister.eu/>`__, or any other public
     registry. The World Health Organization keeps a list at their
     `International Clinical Trials Registry Platform website
     <http://www.who.int/ictrp/en/>`__.
   * Document any deviations from the trial protocol and discuss them in your
     published paper.
   * Make all data available when possible, through specialized databases such
     as `GenBank <http://www.ncbi.nlm.nih.gov/genbank/>`__ and `PDB
     <http://www.rcsb.org/pdb/home/home.do>`__, or through generic data
     repositories like `Dryad <http://datadryad.org/>`__ and `Figshare
     <http://figshare.com/>`__.
   * Publish your software source code, Excel workbooks, or analysis scripts
     used to analyze your data. Many journals will let you submit these as
     supplementary material with your paper.
   * Follow reporting guidelines in your field, such as `CONSORT
     <http://www.consort-statement.org/>`__ for clinical trials, `STROBE
     <http://www.strobe-statement.org/>`__ for observational studies in
     epidemiology, or `STREGA
     <http://www.plosmedicine.org/article/info:doi/10.1371/journal.pmed.1000022>`__
     for gene association studies. The `EQUATOR Network
     <http://www.equator-network.org/>`__ maintains lists of guidelines for
     various fields.
   * If you obtain negative results, publish them! Some journals may reject
     negative results as uninteresting; consider publishing in an open-access
     electronic-only journal such as `PLoS ONE <http://www.plosone.org/>`__,
     which is peer-reviewed but does not reject studies for being
     uninteresting.

.. [#xkcd]
   Joke shamelessly stolen from the alternate text of http://xkcd.com/552/.
