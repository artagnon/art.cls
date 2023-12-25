\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{art.cls/art}[2022/02/23 Artistic article class]
\RequirePackage{iftex}
\RequirePackage[allbordercolors={.192157 .76862 .28627}]{hyperref} % Emerald Green
\RequirePackage{amsmath, amssymb, mathrsfs, url, bookmark, tikz, tikz-cd, mathpazo, fancyhdr, lastpage, titling, titlesec, enumitem, soul, xargs, art.cls/colorpal, art.cls/bibspacing, art.cls/nestthms, art.cls/ct, art.cls/sset, art.cls/lim}
\RequirePackage[a4paper, margin=0.8in]{geometry}

% Use lettered footnotes
\renewcommand{\thefootnote}{\alph{footnote}}

% Title styling
\pretitle{
  \begin{center}
    \huge\scshape\bfseries\color{gray80}
}
\posttitle{
    \color{gray65}
  \end{center}
  \noindent\vrule height 2.5pt width \textwidth
  \vskip .75em plus .25em minus .25em
}

% Remove space after author
\renewcommand\maketitlehookd{
  \vspace{-1em}
}

% Section and subsection styles
\renewcommand{\thesection}{\Roman{section}}
\titleformat{\section}{\centering\scshape\Large\color{raspeberry}}{\thesection}{0.7em}{}
\titleformat{\subsection}{\large\bfseries\color{gray80}}{\thesubsection}{0.7em}{}

% Pack enumerate items and bibitems
\setlist{nolistsep}
\setlength{\bibitemsep}{.2\baselineskip plus .05\baselineskip minus .05\baselineskip}

% Fancy headers
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\footnotesize\textcolor{gray80}{{\thepage / \pageref{LastPage}}}}
\renewcommand{\sectionmark}[1]{\markboth{}{\thesection.\ #1}}
\fancyhead[L]{\footnotesize\textcolor{gray80}{{\MakeUppercase{\rightmark}}}}
