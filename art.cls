\LoadClass[conference]{IEEEtran}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{art.cls/art}[2022/02/23 Artistic article class]
\RequirePackage[allbordercolors={.192157 .76862 .28627}]{hyperref} % Emerald Green
\RequirePackage{amsmath, amssymb, mathrsfs, url, bookmark, tikz, tikz-cd, mathpazo, enumitem, soulutf8, xargs, art.cls/colorpal, art.cls/nestthms, art.cls/ct, art.cls/sset, art.cls/lim}

% Use lettered footnotes
\renewcommand{\thefootnote}{\alph{footnote}}
