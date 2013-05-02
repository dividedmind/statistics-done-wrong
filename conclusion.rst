**********
Conclusion
**********

.. epigraph::

    "To consult the statistician after an experiment is finished is often merely
    to ask him to conduct a post mortem examination. He can perhaps say what the
    experiment died of." 

    -- R. A. Fisher, popularizer of the *p* value

I've painted a grim picture. But anyone can pick out small details in published
studies and produce a tremendous list of errors. Do these problems matter? 

Well, yes. I wouldn't have written this otherwise.

John Ioannidis's famous article "Why Most Published Research Findings are
False"\ :cite:p:`Ioannidis:2005bw` was grounded in mathematical concerns rather
than an empirical test of research results. If most research articles have poor
statistical power -- and :ref:`they do <power>` -- while researchers have the
freedom to choose among multitudes of analyses methods to get favorable results
-- and :ref:`they do <freedom>` -- when most tested hypotheses are false and
most true hypotheses correspond to very small effects, we are mathematically
determined to get a multitude of false positives.

.. index:: oncological ontology

But if you want empiricism, you can have it, courtesy of John Ioannidis and
Jonathan Schoenfeld. They studied the question "Is everything we eat associated
with cancer?"\ :cite:p:`Schoenfeld:2013fq`\ [#ontology]_ After choosing fifty
common ingredients out of a cookbook, they set out to find studies linking these
studies to cancer rates -- and found 216 studies on forty different
ingredients. Of course, most of the studies disagreed with each other. Most
ingredients had multiple studies claiming they increased *and* decreased the
risk of getting cancer. Most of the statistical evidence was weak, and
meta-analyses usually showed much smaller effects on cancer rates than the
original studies.

Of course, being contradicted by follow-up studies and meta-analyses doesn't
prevent a paper from being cited as though it were true. Even effects which have
been contradicted by massive follow-up trials with unequivocal results are
frequently cited five or ten years later, with scientists apparently not
noticing that the results are false.\ :cite:p:`Tatsioni:2007cr` Of course, new
findings get widely publicized in the press, while contradictions and
corrections are hardly ever mentioned.\ :cite:p:`Gonon:2012do` You can hardly
blame the scientists for not keeping up.

.. index:: schizophrenia

Let's not forget the merely biased results. Poor reporting standards in medical
journals mean studies testing new treatments for schizophrenia can neglect to
include the scale they used to evaluate symptoms -- a handy source of bias, as
trials using unpublished scales tend to produce better results than those using
previously validated tests.\ :cite:p:`Marshall:2000hg` Other medical studies
simply :ref:`omit particular results <omit-details>` if they're not favorable or
interesting, biasing subsequent meta-analyses to only include positive
results. A third of meta-analyses are estimated to suffer from this problem.\
:cite:p:`Kirkham:2010kj`

.. index:: meta-analyses

Another review compared meta-analyses to subsequent large randomized controlled
trials, considered the gold standard in medicine. In over a third of cases, the
randomized trial's outcome did not correspond well to the meta-analysis.\
:cite:p:`LeLorier:1997ww` Other comparisons of meta-analyses to subsequent
research found that most results were inflated, with perhaps a fifth
representing false positives.\ :cite:p:`Pereira:2011eg`

.. index:: psychic powers, confidence interval, power; psychic powers

There is a multitude of physical science papers which misuse confidence
intervals.\ :cite:p:`Lanzante:2005hi` And a peer-reviewed psychology paper
allegedly providing evidence for psychic powers, on the basis of uncontrolled
multiple comparisons in exploratory studies.\ :cite:p:`Wagenmakers:2011tp`
Unsurprisingly, the results failed to be replicated -- by scientists who appear
not to have calculated the statistical power of their tests.\
:cite:p:`Galak:2012fd`

Beware false confidence. You may soon develop a smug sense of satisfaction that
*your* work doesn't screw up like everyone else's. But I have not given you a
thorough introduction to the mathematics of data analysis. There are many ways
to foul up statistics beyond these simple conceptual errors.

Errors will occur often, because somehow, few undergraduate science degrees or
medical schools require courses in statistics and experimental design -- and
some introductory statistics courses skip over issues of statistical power and
multiple inference. This is seen as acceptable despite the paramount role of
data and statistical analysis in the pursuit of modern science; we wouldn't
accept doctors who have no experience with prescription medication, so why do we
accept scientists with no training in statistics? Scientists need formal
statistical training and advice.

Journals may choose to reject research with poor-quality statistical analyses,
and new guidelines and protocols may eliminate some problems, but until we have
scientists adequately trained in the principles of statistics, experimental
design and data analysis will not be improved.  The all-consuming quest for
statistical significance will only continue.

Change will not be easy. Rigorous statistical standards don't come free: if
scientists start routinely performing statistical power computations, for
example, they'll soon discover they need vastly larger sample sizes to reach
solid conclusions. Clinical trials are not free, and more expensive research
means fewer published trials. You might object that scientific progress will be
slowed needlessly -- but isn't it worse to build our progress on a foundation of
unsound results?

To any science students: invest in a statistics course or two while you have the
chance. To researchers: invest in training, a good book, and statistical
advice. And please, the next time you hear someone say "The result was
significant with :math:`p < 0.05`, so there's only a 1 in 20 chance it's a
fluke!", please beat them over the head with a statistics textbook for me.

**Disclaimer:** The advice in this guide cannot substitute for the advice of a
trained statistical professional. If you think you're suffering from any serious
statistical error, please consult a statistician immediately. I shall not have
any liability from any injury to your dignity, statistical error or
misconception suffered as a result of your use of this website.

Use of this guide to justify rejecting the results of a scientific study without
reviewing the evidence in any detail whatsoever is grounds for being slapped
upside the head with a very large statistics textbook.  This guide should help
you find statistical errors, not allow you to selectively ignore science you
don't like.

.. [#ontology] An important part of the ongoing `Oncological Ontology
   <http://dailymailoncology.tumblr.com/>`__ project to
   categorize everything into two categories: that which cures cancer and that
   which causes it.
