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

The misuse of statistics ranges from the trivial to the complex. Consider a
semi-truck manufacturer trying to meet government noise regulations; modern
trucks are required to have certain noise-mitigating features and meet maximum
noise requirements to be sold. After performing noise tests on a truck in the
spring, the truck was subjected to durability tests all summer and ended up
almost entirely rebuilt with new parts. With a new muffler, however, the truck
was half a decibel quieter -- a great benefit when regulations require decibels
to be shaved off, since it freed the manufacturer from finding noise savings
elsewhere. The new muffler was made by a different supplier, and it was soon
ordered that all new trucks would be built with this muffler.

But the truck had been entirely rebuilt. Most of the engine parts were new. The
noise tests were performed at different times of year, and later investigation
found that engines can be louder or quieter just because of outside air
temperature -- and truck manufacturers will often deliberately certify their
trucks in hot climates so they seem quieter. Was that half-decibel change a
result of a new muffler, the engine being entirely rebuilt after durability
testing, or temperature and testing variations? Obviously, we can't tell after
testing the engine only once, and hundreds of thousands of dollars of contracts
were changed on the basis of no good evidence.

This is, obviously, an extreme example. Most statistical errors committed by
scientists don't fit neatly into two paragraphs, but they do have massive
impacts on the real world. Medical clinical trials direct our healthcare and
determine the safety of powerful new prescription drugs; criminologists evaluate
different strategies to mitigate crime and unrest; epidemiologists try to slow
down new diseases; marketers and business managers try to find the best way to
sell their products; and it all comes down to statistics. Statistics done
wrong.

Anyone who's ever complained about doctors not making up their minds about what
is good or bad for you understands the scope of the problem. We now have a
dismissive attitude toward news articles claiming some food or diet or exercise
might harm us -- we just wait for the inevitable second study some months later,
giving exactly the opposite result. As it turns out, our instincts are right: in
many scientific fields, initial results tend to be contradicted by later
results. It seems the pressure to publish exciting results early and often has
surpassed the pressure to publish carefully-checked results supported by a
surplus of evidence.

Let's not judge so quickly, though. Some statistical errors result from a simple
lack of funding or resources. Consider the mid-1970s movement to allow American
drivers to turn right at red lights, saving gas and time; the evidence
suggesting this would cause no more crashes than before was statistically
flawed, as we will see soon, and the change cost many lives. The only factor
holding back traffic safety researchers was a lack of data. Had they the money
to collect more data and perform more studies -- and the time to collate results
from independent researchers in many different states -- the truth would have
been obvious.

While Hanlon's razor directs us to "never attribute to malice that which is
adequately explained by incompetence," there are some published results of the
"lies, damned lies and statistics" sort. The pharmaceutical industry seems
particularly tempted to bias the evidence by neglecting to publish studies which
show their drugs do not work; subsequent reviews may be pleased to find that
twelve studies indicate a drug works, without knowing that eight other
unpublished studies suggest it does not. Of course, it's likely that such
results would not be published by peer-reviewed journals even if they were
submitted -- a strong bias against unexciting results means that studies saying
"it didn't work" will never appear, and other researchers will never see
them. Missing data and publication bias plague science, skewing our perceptions
of important issues.

Even properly-done statistics can't be trusted. The plethora of available
statistical techniques and analyses grants researchers an enormous amount of
freedom when analyzing their data, and it is trivially easy to "torture the data
until it confesses." Just try several different analyses offered by your
statistical software until one of them turns up an interesting result, then
pretend this is the analysis you intended to do all along. Without psychic
powers it's almost impossible to tell when a published result has been obtained
through data torture.

In the coming pages I hope to introduce you to these common errors and many
others. Many of the errors are prevalent in vast swathes of the published
literature, casting doubt on the findings of thousands of papers.
