%
% Based on sphinxmanual.cls for Sphinx (http://sphinx.pocoo.org/)
%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sphinxbook}[2013/04/27 Document class (Sphinx book)]

% chapters starting at odd pages (overridden by 'openany' document option)
\PassOptionsToClass{openright}{memoir}

% Defaults two-side document
\PassOptionsToClass{twoside}{memoir}

% Sphinx still uses the deprecated \rm command
\PassOptionsToClass{oldfontcommands}{memoir}

% 11pt fonts
\PassOptionsToClass{11pt}{memoir}

\LoadClass{memoir}

\RequirePackage{natbib}
\setcitestyle{super,comma,open={},close={}}
\RequirePackage{microtype}
\RequirePackage{cmap}
\RequirePackage{url}

% Switch footnotes to symbols, not numbers
% hyperref produces incorrect links in this case, so turn off linking
\RequirePackage[perpage,symbol*]{footmisc}
\PassOptionsToPackage{hyperfootnotes=false}{hyperref}

% Set some sane defaults for section numbering depth and TOC depth.  You can
% reset these counters in your preamble.
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{1}

% set chapter style
\chapterstyle{dash}

% caption styles
\captionnamefont{\small\itshape}
\captiontitlefont{\small}
\captionstyle[\centering]{}

% fancyhdr is incompatible with memoir, and unnecessary anyway
\newcommand{\dontusepackage}[2][]{%
\@namedef{ver@#2.sty}{9999/12/31}%
\@namedef{opt@#2.sty}{#1}}

\dontusepackage{fancyhdr}

% a command to fix some sphinx.cls style settings after it's been loaded
\newcommand{\fixsphinxstyles}{
\renewcommand{\py@HeaderFamily}{\sffamily}%
\titleformat{\section}{\Large\py@HeaderFamily}%
            {\py@TitleColor}{0em}{\py@TitleColor}{\py@NormalColor}%
\definecolor{TitleColor}{rgb}{0,0,0}%
\definecolor{TitleColor}{rgb}{0,0,0}%
\definecolor{InnerLinkColor}{rgb}{0,0,0}%
\definecolor{OuterLinkColor}{rgb}{0,0,0}%
\renewcommand{\strong}[1]{{\bfseries ##1}}%
\renewcommand{\py@lightbox}{{%
  \setlength{\parindent}{0pt}
  \setlength\parskip{0pt}\par
  \rule[0ex]{\linewidth}{0.5pt}%
  \par%
}}%
\renewcommand{\py@endlightbox}{{%
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{0pt}%
  \par\rule[0.5ex]{\linewidth}{0.5pt}%
  \par\vspace{-0.5ex}%
  }}
  
% set to trade paperback sizes and margins
\setstocksize{8.5in}{5.5in}
\settrimmedsize{8.5in}{5.5in}{*}
\setlrmarginsandblock{0.7in}{0.6in}{*}
\setulmarginsandblock{0.75in}{0.9in}{*}
\settrims{0pt}{0pt}
\setheadfoot{20pt}{20pt}
\checkandfixthelayout

% switch to edition, not release, naming
\renewcommand{\release}[1]{%
  \renewcommand{\py@release}{\version\space Edition}%
  \renewcommand{\version}{##1}}
}

% Change the title page to look a bit better, and fit in with the fncychap
% ``Bjarne'' style a bit better.
%
\renewcommand{\maketitle}{%
  \begin{titlingpage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \rule{\textwidth}{1pt}%
    \ifsphinxpdfoutput
      \begingroup
      % These \defs are required to deal with multi-line authors; it
      % changes \\ to ', ' (comma-space), making it pass muster for
      % generating document info in the PDF file.
      \def\\{, }
      \def\and{and }
      \pdfinfo{
        /Author (\@author)
        /Title (\@title)
      }
      \endgroup
    \fi
    \begin{flushright}%
      \sphinxlogo%
      {\rmfamily\Huge\py@HeaderFamily \@title \par}%
      {\em\LARGE\py@HeaderFamily \py@release \par}
      \vfill
      {\LARGE\py@HeaderFamily
        \begin{tabular}[t]{c}
          \@author
        \end{tabular}
        \par}
      \vfill\vfill
      {\large
       \@date \par
       \vfill
       \py@authoraddress \par
      }%
    \end{flushright}%\par
    \@thanks
    \clearpage
    \null
    \vfill
    \noindent Copyright \copyright\ \the\year\ by \@author.
    \vskip 10pt
    \noindent \@title\ is available under the Creative Commons Attribution 3.0
    Unported License, granting you the right to copy, redistribute, modify, and
    sell it, so long as you attribute the original to \@author\ and identify any
    changes that you have made. Full terms of the license are available at:
    \vskip 10pt
    \noindent \url{http://creativecommons.org/licenses/by/3.0/}
    \vskip 10pt
    \noindent The complete book can be found online for free at:
    \vskip 10pt
    \noindent \url{http://www.refsmmat.com/statistics/}
  \end{titlingpage}%
  \cleardoublepage%
  \setcounter{footnote}{0}%
  \let\thanks\relax\let\maketitle\relax
  %\gdef\@thanks{}\gdef\@author{}\gdef\@title{}
}

% This wraps the \tableofcontents macro with all the magic to get the spacing
% right and have the right number of pages if the 'openright' option has been
% used.  This eliminates a fair amount of crud in the individual document files.
%
\let\py@OldTableofcontents=\tableofcontents
\renewcommand{\tableofcontents}{%
  \setcounter{page}{1}%
  \pagebreak%
  \pagestyle{plain}%
  {%
    \parskip = 0mm%
    \py@OldTableofcontents%
    \if@openright%
      \ifodd\value{page}%
        \typeout{Adding blank page after the table of contents.}%
        \pagebreak\hspace{0pt}%
      \fi%
    \fi%
    \cleardoublepage%
  }%
  \pagenumbering{arabic}%
  \@ifundefined{fancyhf}{}{\pagestyle{normal}}%
}
