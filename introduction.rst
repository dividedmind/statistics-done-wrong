************
Introduction
************

In the final chapter of his famous book *How to Lie with Statistics*, Darrell
Huff tells us that "anything smacking of the medical profession" or published by
scientific laboratories and universities is worthy of our trust -- not
unconditional trust, but certainly more trust than we'd afford the media or
shifty politicians. After all, Huff filled an entire book with the misleading
statistical trickery used in politics and the media, but few people complain
about statistics done by trained professional scientists. Scientists seek
understanding, not ammunition to use against political opponents.

Statistical data analysis is fundamental to science. Open a random page in your
favorite medical journal and you'll be deluged with statistics: *t* tests, *p*
values, proportional hazards models, risk ratios, logistic regressions,
least-squares fits, and confidence intervals.  Statisticians have provided
scientists with tools of enormous power to find order and meaning in the most
complex of datasets, and scientists have embraced them with glee.

They have not, however, embraced statistics *education*, and many undergraduate
programs in the sciences require no statistical training whatsoever.

Since the 1980s, researchers have described numerous statistical fallacies and
misconceptions in the popular peer-reviewed scientific literature, and have
found that many scientific papers -- perhaps more than half -- fall prey to
these errors. Inadequate statistical power renders many studies incapable of
finding what they're looking for; multiple comparisons and misinterpreted *p*
values cause numerous false positives; flexible data analysis makes it easy to
find a correlation where none exists. The problem isn't fraud but poor
statistical education -- poor enough that some scientists conclude that most
published research findings are probably false.\ :cite:p:`Ioannidis:2005bw`

*Statistics Done Wrong* is a guide to the more egregious statistical fallacies
regularly committed in the name of science. Because many scientists receive no
formal statistical training -- and because I do not want to limit my audience to
the statistically initiated -- it assumes no formal statistical training. Some
readers may be able to easily skip through the first chapter, although I
recommend you skim it to become familiar with my explanatory style.

For those who perform statistical analyses for their day jobs, there are "What
should you do?" boxes throughout the text to explain what statistical techniques
you might use to avoid common pitfalls. This is not a statistics textbook, and I
do not teach you how to use these techniques in any technical detail. There are
hundreds of other textbooks (or consulting statisticians) you could use for that
information. I hope only to make you aware of the most common problems so you
are able to pick the statistical technique best suited to your problem.

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
of modern science offhand. A research paper's statistical methods can only be
judged in detail and in context with the rest of its methods: the study design,
measurement techniques, cost constraints, and goals. Use your statistical
knowledge to better understand the strengths, limitations, and potential biases
of research, rather than shooting down any paper which seems to misuse a *p*
value.

In short, please practice statistics responsibly. I hope you'll join me in a
quest to improve the science we all rely on.

.. _changelog:

Changes
-------

Updated January 2013 with a relevant example of the base-rate fallacy:
:ref:`survey estimates of gun usage <base-rate-gun>`.

Updated April 2013 with more details on :ref:`the interaction of truth inflation
and early stopping rules <truth-inflation>`, :ref:`researcher freedom in
neuroscience <red-herrings>`, :ref:`poor statistical power in neuroscience
<power-underpowered>`, :ref:`how to control the false discovery rate
<false-discovery>`, :ref:`publication bias and poor reporting <hiding-data>`,
:ref:`underpowered studies and right turn on red <rtor>`, :ref:`the misuses of
confidence intervals <confidence-intervals>`, :ref:`pseudoreplication and the
synchronization of menstrual cycles <periods>`, :ref:`the impact of all these
errors <wrought>`, :ref:`what can be done to save statistics <what-next>`, and
additional references and details in many other places. I have also added "What
should you do?" boxes to each chapter explaining the correct approach to avoid
the statistical problems discussed.

.. _contact:

Contact
-------

I've tried my best, but inevitably this guide will contain errors and
omissions. If you spot an error, have a question, or know a common fallacy I've
missed, email me at stats at refsmmat dot com.

Acknowledgments
---------------

Thanks to Dr. James Scott, whose statistics course gave me the background
necessary to write this; to Matthew Watson and CharonY, who gave invaluable
feedback and suggestions as I wrote my drafts; to my parents, who gave
suggestions and feedback; to Dr. Brent Iverson, whose seminar first motivated me
to learn about statistical abuse; and to all the scientists and statisticians
who have broken the rules and given me a reason to write.

Any errors in explanations are my own.

Copyright note
--------------

This work is licensed under a `Creative Commons Attribution 3.0 Unported License
<http://creativecommons.org/licenses/by/3.0/>`_. You're free to print it, copy
it, translate it, rewrite it, set it to music, slice it, dice it, or whatever,
so long as you attribute the original to me, Alex Reinhart, and provide a link
back to this site. (If you do translate it, please let me know! I'd happily
provide a link to your translation.) Hit the link to the license for more
details. Source code for the text, graphs and simulations is available on
`GitHub <https://github.com/capnrefsmmat/statistics-done-wrong>`_.

The xkcd cartoon used inside is available under the `Creative Commons
Attribution-NonCommercial 2.5 License
<http://creativecommons.org/licenses/by-nc/2.5/>`_, and may not be used
commercially without permission from the author. `More
details. <http://xkcd.com/license.html>`_

.. [#conspiracy] Incidentally, I think this is why conspiracy theories are so
   popular. Once you believe you know something that nobody else does (the
   government is out to get us!), you take every available opportunity to use
   that knowledge, and you end up reacting to every news article with reasons
   why it was falsified by the government. Please don't do the same with
   statistical errors.
