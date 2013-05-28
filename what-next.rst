.. _what-next:

*****************
What can be done?
*****************

I've discussed many statistical problems throughout this guide. They appear in
many fields of science: medicine, physics, climate science, biology, chemistry,
neuroscience, and many others. Any researcher using statistical methods to
analyze data is likely to make a mistake, and as we've seen, most of them
do. What can we do about it?

Statistical education
---------------------

Most American science students have a minimal statistical education -- perhaps
one or two required courses, or even none at all for many students. Many of
these courses do not cover important concepts, such as statistical power and
rigorous model selection. And even when students have taken statistical courses,
professors report that they can't apply statistical concepts to scientific
questions, having never fully understood -- or simply forgotten -- the
appropriate techniques. This needs to change. Almost every scientific discipline
depends on statistical analysis of experimental data, and statistical errors
waste grant funding and researcher time.

It would be tempting to say "We must introduce a new curriculum adapted to the
needs of practicing scientists and require students to take courses in this
material," then assume the problem will be solved. A great deal of research in
science education shows that this is not the case. Typical lecture courses teach
students very little, not for lack of effort but because lectures are simply a
poor way to teach concepts.

Unfortunately, most of this research is not specifically aimed at statistics
education. Physicists, however, have done a great deal of research on a similar
problem: teaching introductory physics students the basic concepts of force,
energy, and kinematics. An instructive example is a large-scale survey of
fourteen physics courses, including 2,084 students, using the :index:`Force
Concept Inventory` to measure student understanding of basic physics concepts
before and after taking the courses. The students began the courses with holes
in their knowledge; at the end of the semester, they had only filled 23% of
those holes, despite the Force Concept Inventory being regarded as too easy by
their instructors.\ :cite:p:`Hake:1998`

These results are poor because lectures do not suit how students learn. Students
have an impressive number of preconceptions about basic physics from their
everyday experience -- for example, everyone "knows" that something pushed will
eventually come to a stop, because every object in the real world does so. But
we teach students Newton's First Law, that an object in motion stays in motion
unless acted upon by an outside force, and expect them to immediately replace
their preconception with the new understanding that objects only stop because
of frictional forces.

Students are endlessly creative in devising new misconceptions to
hold. Interviews of physics students have revealed numerous surprising
misconceptions, many not anticipated by experienced instructors.\
:cite:p:`McDermott:1984fr,Clement:1982` Misconceptions are like cockroaches: You
have no idea where they came from, but they’re everywhere -- often where you
don’t expect them -- and they’re impervious to nuclear weapons.

The traditional lecture is an ineffective weapon against the hardened
misconception. Students who watch lectures contradicting their misconceptions
report greater confidence in their misconceptions afterwards, and do no better
on simple tests of their knowledge. Often they report not paying much attention,
because the lectures allegedly cover concepts they already "know."\
:cite:p:`Muller:2008tk` Similarly, lecture demonstrations of physical concepts
make little improvement in student understanding, because students who
misunderstand simply find ways to reinterpret the demonstration in light of their
misunderstanding.\ :cite:p:`Crouch:2004ia`

Obviously, then, simply assigning students to read a book like this one will not
be much help if they fundamentally misunderstand statistics. Much of basic
statistics is not intuitive (or, at least, not commonly taught in an intuitive
fashion), and the opportunity for misunderstanding and error is massive. How can
we best teach our students to analyze data and make reasonable statistical
inferences?

Again, methods from physics education research provide the answer. If lectures
do not force students to confront their misconceptions and correct them, we will
have to use a method that does. A leading example is called :index:`Peer
Instruction`. Students are assigned readings or videos before class, and class
time is spent reviewing the basic concepts and then answering conceptual
questions. Forced to choose an answer and discuss why they believe it is true
*before* the instructor reveals the correct answer, students immediately see
when their misconceptions do not match reality, and instructors can spot
problems before they grow.

Peer Instruction has been successfully implemented in many physics
courses. Surveys using the Force Concept Inventory found that students typically
double or triple their learning gains in a Peer Instruction course, filling in
50-75% of the gaps in their knowledge revealed at the beginning of the
semester.\ :cite:p:`Hake:1998,Crouch:2001bp,Lasry:2008bb` And despite the strong
focus on conceptual understanding, students in Peer Instruction courses perform
just as well or better on quantitative and mathematical questions as their
lectured peers.

So far there is relatively little data on the impact of Peer Instruction in
statistics courses.  Some universities have experimented with statistics courses
integrated with science classes, with students immediately applying their
statistical knowledge to problems in their field, potentially revealing their
misconceptions. Preliminary results suggests these methods work: students learn
and retain more statistics, and they spend less time whining about being forced
to take a statistics course.\ :cite:p:`Metz:2008hs` More universities should
adopt these techniques and experiment with Peer Instruction, using conceptual
tests and trial courses to see what methods work best. Students will leave with
better preparation for the statistical demands of everyday research simply by
changing existing courses, not introducing massive new education programs.

.. index:: OpenIntro Stats

But not every student learns statistics in a classroom. I was introduced to
statistics when I needed to analyze data in a laboratory and didn't know how;
until strong statistics education is more widespread, many students and
researchers will find themselves in the same position, and they need
resources. We need more freely available educational material developed with
common errors and applications in mind.  Projects like `OpenIntro Stats
<http://www.openintro.org/stat/textbook.php>`__ are promising but incomplete,
and I hope to see more in the near future.

Scientific publishing
---------------------

Scientific journals are slowly making progress towards solving many of the
problems I have discussed. Reporting guidelines, such as CONSORT for randomized
trials, make it clear what information is required for a published paper to be
reproducible; unfortunately, as we've seen, these guidelines are infrequently
enforced. We must continue to pressure journals to hold authors to more rigorous
standards.

Premier journals need to lead the charge. *Nature* has begun to do so,
announcing a new `checklist
<http://www.nature.com/authors/policies/checklist.pdf>`__ which authors are
required to complete before articles may be published. The checklist requires
reporting of sample sizes, statistical power calculations, clinical trial
registration numbers, a completed CONSORT checklist, adjustment for multiple
comparisons, and sharing of data and source code. The guidelines cover most
issues covered in *Statistics Done Wrong*, except for :ref:`stopping rules
<stopping-rules>` and discussion of any reasons for departing from the trial's
registered :ref:`protocol <freedom>`. *Nature* will also make statisticians
available to consult for papers as needed.

If these guidelines are enforced, the result will be much more reliable and
reproducible scientific research. More journals should do the same.

There is also much to be said about the unfortunate incentive structures that
pressure scientists to rapidly publish small studies with slapdash statistical
methods. Reforming the whole of academia is very clearly out of the scope of
this book; I can't hope to analyze the many complex issues which have led us to
our unfortunate current position. I can only refer you to other interesting
papers on the subject, such as Nosek, Spies and Motyl's papers on a "scientific
utopia."\ :cite:p:`Nosek:2012ek` New open-access electronic journals which
encourage the publication of replications and negative results may help, but it
will take a major cultural shift for a well-designed replication study to become
as prestigious as an exploratory study in a new field.

Your job
--------

If you're going to analyze data, you're going to need a good foundation in
statistics. A strong course in applied statistics would be expected to cover:

* Basic descriptive statistics, such as mean and standard deviation
* Fundamentals of probability and common probability distributions
* Hypothesis testing, such as *t* tests, :math:`\chi^2` tests, *F* tests, tests
  of distribution, and so on
* Multiple regression and generalized linear models, along with cross-validation
  and other model selection schemes
* Estimation of statistical power for various kinds of hypotheses tests and
  models
* Sampling distributions and the bias and variance of estimators
* The use of a statistical programming language such as R

.. index:: OpenIntro Stats

Sadly, whenever I have read the syllabus for an applied statistics course, it
has failed to cover all of these topics. (Even the open-source statistics
textbook *OpenIntro Stats* does not cover all of these topics in great detail;
its section discussing model selection and adjusted :math:`R^2`, it mentions
that using :math:`R^2` for model selection produces biased results but gives no
hint as to why. Statistical power computation is relegated to a small section
with a few short examples.) Consult a statistician if you need help, preferably
sooner rather than later; you can likely get good advice for the cost of some
chocolates or a beer.

Of course, you will be doing more than analyzing your own data. Scientists spend
a great deal of time reading papers written by other scientists whose grasp of
statistics is entirely unknown. Look for important details in a statistical
analysis, such as

* The statistical power of the study, or any other means by which the
  appropriate sample size was determined
* How variables were selected or discarded for analysis
* Whether the statistical results presented support the paper's conclusions
* Whether appropriate statistical tests were used and, if appropriate, how they
  were corrected for multiple comparisons
* Details of any stopping rules

If you work in a field for which a set of reporting guidelines has been
developed (such as the CONSORT checklist for medical trials), familiarize
yourself with it and read papers with it in mind. If a paper omits some of the
required items, ask yourself what impact that has on its conclusions and whether
you can be sure of its results without knowing the missing details. And, of
course, pressure journal editors to enforce the guidelines to ensure future
papers improve.

In short, your task can be expressed in four simple steps:

1. Read a statistics textbook or take a good statistics course. Practice.
2. Plan your data analyses carefully and deliberately, avoiding the
   misconceptions and errors you have learned.
3. When you find common errors in the scientific literature -- such as a simple
   misinterpretation of *p* values -- hit the perpetrator over the head with your
   statistics textbook. It's therapeutic.
4. Press for change in scientific education and publishing. It's our
   research. Let's not screw it up.
