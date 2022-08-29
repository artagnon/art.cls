\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{art.cls/art}[2022/02/23 Artistic article class]
\RequirePackage{iftex}
\RequireLuaTeX
\RequirePackage[allbordercolors={.192157 .76862 .28627}]{hyperref} % Emerald Green
\RequirePackage{amsmath, amssymb, mathrsfs, url, bookmark, fontspec, tikz, tikz-cd, mathpazo, fancyhdr, lastpage, titling, titlesec, enumitem, soulutf8, art.cls/colorpal, art.cls/bibspacing, art.cls/nestthms, art.cls/ct, art.cls/sset, art.cls/lim}

% Use lettered footnotes
\renewcommand{\thefootnote}{\alph{footnote}}

% Title styling
\pretitle{
  \begin{center}
    \huge\scshape\strongenv\color{gray80}
}
\posttitle{
    \color{gray65}
  \end{center}
  \noindent\vrule height 2.5pt width \textwidth
  \vskip .75em plus .25em minus .25em
}

% Section and subsection styles
\renewcommand{\thesection}{\Roman{section}}
\titleformat{\section}{\centering\scshape\Large\color{raspeberry}}{\thesection}{0.7em}{}
\titleformat{\subsection}{\strongenv\large\color{gray80}}{\thesubsection}{0.7em}{}

% Remove space after author
\renewcommand\maketitlehookd{
  \vspace{-1em}
}
