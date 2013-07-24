*******
Preface
*******

A few years ago I was an undergraduate physics major at the University of
Texas. I was sitting in a seminar course, trying to choose a topic for the
25-minute presentation all students were required to give. "Something about
conspiracy theories," I told Dr. Iverson, but he wasn't satisfied with that
answer: It was too broad, he said, and an engaging presentation needs to be
focused and detailed. I studied the sheet of suggested topics in front of
me. "How about 'scientific fraud and abuse'?", he asked, and I agreed.

In retrospect I'm not sure how scientific fraud and abuse is a narrower subject
than conspiracy theories, but it didn't matter. After several slightly-obsessive
hours of research I realized that scientific fraud isn't terribly interesting --
at least, not compared to all the errors scientists commit *unintentionally.*

Woefully underqualified to discuss statistics, I nonetheless dug up several
dozen research papers reporting on the numerous statistical errors routinely
committed by scientists, read and outlined, and devised a presentation which
satisfied Dr. Iverson. I decided that as a future scientist (and now a
self-designated statistical pundit) I should perhaps take a course in
statistics.

Two years and two statistics courses later, I'm now a graduate student in
statistics at Carnegie Mellon University. I still take obsessive pleasure in
finding more ways to do statistics wrong.

*Statistics Done Wrong* is a guide to the more egregious statistical fallacies
regularly committed in the name of science. Because many scientists receive no
formal statistical training -- and because I do not want to limit my audience to
the statistically initiated -- this book assumes no formal statistical
training. Some readers may be able to easily skip through the first chapter,
although I recommend you skim it to become familiar with my explanatory style.

For those who perform statistical analyses for their day jobs, there are "What
should you do?" boxes throughout the text to explain what statistical techniques
you might use to avoid common pitfalls. This is not a statistics textbook, and I
do not teach you how to use these techniques in any technical detail. There are
hundreds of other textbooks (or consulting statisticians) you could use for that
information. I hope only to make you aware of the most common problems so you
are able to pick the statistical technique best suited to your problem.

If I do pique your curiosity about a statistical topic, a comprehensive
bibliography is included, and every statistical misconception is accompanied by
several references. I have omitted a great deal of mathematics in this guide in
favor of conceptual understanding, but if you prefer a rigorous treatment, I
encourage you to read the original papers. There is also a reasonably
comprehensive index which contains each example I have used, so if you remember
a story involving walruses but don't know where to look for it, start there
first.

I must caution you before you read this guide. Whenever we understand something
that few other people do, it is tempting to find every available opportunity to
prove it. Should *Statistics Done Wrong* miraculously become a New York Times
bestseller, I expect to see what Paul Graham calls "middlebrow dismissals" as a
response to any science news in the popular press: Rather than taking the time
to understand the interesting parts of scientific research, armchair
statisticians will snipe at the news articles, using the vague description of
the study regurgitated from some overenthusiastic university press release to
criticize the research's statistical design. [#conspiracy]_

This is stupid. A little knowledge of statistics is not an excuse to reject all
of modern science out of hand. A research paper's statistical methods can only
be judged in detail and in context with the rest of its methods: the study
design, measurement techniques, cost constraints, and goals. Use your
statistical knowledge to better understand the strengths, limitations, and
potential biases of research, rather than shooting down any paper which seems to
misuse a *p* value.

In short, please practice statistics responsibly. I hope you'll join me in a
quest to improve the science we all rely on.

.. _changelog:

Changes
-------

Updated January 2013 with a relevant example of the base-rate fallacy:
:ref:`survey estimates of gun usage <base-rate-gun>`.

Updated April and May 2013 for the Second Edition with more details on :ref:`the
interaction of truth inflation and early stopping rules <truth-inflation>`,
:ref:`researcher freedom in neuroscience <red-herrings>`, :ref:`poor statistical
power in neuroscience <power-underpowered>`, :ref:`how to control the false
discovery rate <false-discovery>`, :ref:`publication bias and poor reporting
<hiding-data>`, :ref:`underpowered studies and right turn on red <rtor>`,
:ref:`the misuses of confidence intervals <confidence-intervals>`,
:ref:`pseudoreplication and the synchronization of menstrual cycles <periods>`,
:ref:`what can be done to save statistics <what-next>`, and additional
references, examples and details in many other places. I have also added "What
should you do?" boxes to each chapter explaining the correct approach to avoid
the statistical problems discussed.

.. _contact:

Contact
-------

I've tried my best, but inevitably this guide will contain errors and
omissions. If you spot an error, have a question, or know a common fallacy I've
missed, email me at stats at refsmmat dot com.

Copyright note
--------------

The xkcd cartoon used inside is available under the `Creative Commons
Attribution-NonCommercial 2.5 License
<http://creativecommons.org/licenses/by-nc/2.5/>`_, and may not be used
commercially without permission from the author. `More
details. <http://xkcd.com/license.html>`_

Acknowledgments
---------------

Thanks to Dr. James Scott, whose statistics courses gave me the background
necessary to write this; to Matthew Watson and CharonY, who gave invaluable
feedback and suggestions as I wrote my drafts; to my parents, who gave
suggestions and feedback; to Dr. Brent Iverson, whose seminar first motivated me
to learn about statistical abuse; and to all the scientists and statisticians
who have broken the rules and given me a reason to write.

Any errors in explanations are my own.

Disclaimer
----------

The advice in this guide cannot substitute for the advice of a trained
statistical professional. If you think you're suffering from any serious
statistical error, please consult a statistician immediately. I shall not have
any liability from any injury to your dignity, statistical error or
misconception suffered as a result of your use of this website.

Use of this guide to justify rejecting the results of a scientific study without
reviewing the evidence in any detail whatsoever is grounds for being slapped
upside the head with a very large statistics textbook.  This guide should help
you find statistical errors, not allow you to selectively ignore science you
don't like.

.. [#conspiracy] Incidentally, I think this is why conspiracy theories are so
   popular. Once you believe you know something that nobody else does (the
   government is out to get us!), you take every available opportunity to use
   that knowledge, and you end up reacting to every news article with reasons
   why it was falsified by the government. Please don't do the same with
   statistical errors.
