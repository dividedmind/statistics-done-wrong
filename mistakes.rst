.. _mistakes:

************************
Everybody makes mistakes
************************

Until now, I have presumed that scientists are capable of making statistical
computations with perfect accuracy, and only err in their choice of appropriate
numbers to compute. Scientists may misuse the results of statistical tests or
fail to make relevant computations, but they can at least calculate a *p* value,
right?

Perhaps not.

.. index:: p value; errors in calculation

Surveys of statistically significant results reported in medical and
psychological trials suggest that many *p* values are wrong, and some
statistically insignificant results are actually significant when computed
correctly.\ :cite:p:`Gotzsche:2006du,Bakker:2011ja` Other reviews find examples
of misclassified data, erroneous duplication of data, inclusion of the wrong
dataset entirely, and other mixups, all concealed by papers which did not
describe their analysis in enough detail for the errors to be easily noticed.\
:cite:p:`Gotzsche:1989uy`

One famous example involved trials of a new genetic test which promised to allow
chemotherapy treatments to be carefully targeted to the patient's specific
variant of cancer. Duke University researchers ran trials indicating that their
technique could determine to which drugs a tumor would be most sensitive,
sparing patients the side-effects of ineffective treatments. Oncologists were
excited at the prospects, and other researchers began their own studies. But
first they asked two biostatisticians, Keith Baggerly and Kevin Coombes, to
check the data.

Baggerly and Coombes found problems almost immediately. Some of the data was
mislabeled -- groups of cells which were resistant to a drug were marked as
sensitive instead, and vice-versa. Some samples were duplicated in the data,
sometimes marked as both sensitive and resistant. A correction issued by the
Duke researchers corrected some of these issues, but introduced more duplicated
data at the same time. Some data was accidentally shifted by one, so that
measurements from one set of cells were used when analyzing a different cell
line instead. Genetic microarrays, which we discussed earlier in the context of
pseudoreplication, varied significantly between batches, and the effect of the
microarray equipment could not be separated from the true biological
differences. Figures allegedly showing results for one drug actually contained
the results for a different drug.

In short, the research was a mess.\ :cite:p:`Baggerly:2009gk` The errors only
attracted attention later, some time after Baggerly and Coombes published their
discoveries, when a trade magazine reported that the lead Duke researcher, Anil
Potti, had falsified his résumé. Four of his papers were retracted, and Potti
eventually resigned from Duke. Several trials using the results were stopped,
and a company set up to sell the technology closed.\ :cite:p:`Kolata:2011`

Sunshine is the best disinfectant, and many scientists have called for
experimental data to be made available through the Internet. In some fields,
this is now commonplace: there exist gene sequencing databases, protein
structure databanks, astronomical observation databases, and earth observation
collections containing the contributions of thousands of scientists. Many other
fields, however, can't share their data due to impracticality (particle physics
data can include many terabytes of information), privacy issues (in medical
trials), a lack of funding or technological support, or just a desire to keep
proprietary control of the data and all the discoveries which result from
it. And even if the data were all available, would anyone analyze it all to spot
errors?

.. index:: reproducible research, Sweave

Similarly, scientists in some fields have pushed towards making their
statistical analyses available through clever technological tools. A tool called
Sweave, for instance, makes it easy to embed statistical analyses performed
using the popular R programming language inside papers written in LaTeX, the
standard for scientific and mathematical publications. The result looks just
like any scientific paper, but another scientist reading the paper and curious
about its methods can download the source code, which shows exactly how all the
numbers were calculated. But would scientists avail themselves of the
opportunity?  Nobody gets scientific glory by checking code for typos.

Another solution might be :index:`replication`. If scientists carefully recreate
the experiments of other scientists and validate their results, it is much
easier to rule out the possibility of a typo causing an errant
result. Replication also weeds out fluke false positives. Many scientists claim
that experimental replication is the heart of science: no new idea is accepted
until it has been independently tested and retested around the world and found
to hold water.

.. index:: Reproducibility Project, Amgen, Bayer

That's not entirely true; scientists often take previous studies for granted,
though occasionally scientists decide to systematically re-test earlier
works. One new project, for example, aims to reproduce papers in major
psychology journals to determine just how many papers hold up over time -- and
what attributes of a paper predict how likely it is to stand up to
retesting. [#reproducibility]_ In another example, cancer researchers at Amgen
retested 53 landmark preclinical studies in cancer research. (By "preclinical" I
mean the studies did not involve human patients, as they were testing new and
unproven ideas.) Despite working in collaboration with the authors of the
original papers, the Amgen researchers could only reproduce six of the studies.\
:cite:p:`Begley:2012` Bayer researchers have reported similar difficulties when
testing potential new drugs found in published papers.\ :cite:p:`Prinz:2011gb`

This is worrisome. Does the trend hold true for less speculative kinds of
medical research? Apparently so: of the top-cited research articles in medicine,
a quarter have gone untested after their publication, and a third have been
found to be exaggerated or wrong by later research.\ :cite:p:`Ioannidis:2005gy`
That's not as extreme as the Amgen result, but it makes you wonder what
important errors still lurk unnoticed in important research. Replication is not
as prevalent as we would like it to be, and the results are not always
favorable.

.. admonition:: What should you do?

   * Automate your data analysis using a spreadsheet, analysis script, or
     program which can be tested against known input. If anyone suspects an
     error, you should be able to refer back to your code to see exactly what
     you did.
   * Corollary: Test all analysis programs against known input and ensure the
     results make sense. Ideally, use automated tests to check the code as you
     make changes, ensuring you don't introduce errors.
   * Publish your software source code, spreadsheets, or analysis scripts. Many
     journals will let you submit these as supplementary material with your
     paper.
   * When writing software, use the `best practices for scientific computing
     <http://arxiv.org/abs/1210.0530>`__.
   * Use a reproducible research tool like Sweave to automatically include data
     from your analysis in your paper.
   * Make all data available when possible, through specialized databases such
     as `GenBank <http://www.ncbi.nlm.nih.gov/genbank/>`__ and `PDB
     <http://www.rcsb.org/pdb/home/home.do>`__, or through generic data
     repositories like `Dryad <http://datadryad.org/>`__ and `Figshare
     <http://figshare.com/>`__.

.. [#reproducibility]
   The Reproducibility Project, at
   http://openscienceframework.org/reproducibility/
