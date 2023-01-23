%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This class file defines the structure and design of the template. 
%
%
% Createdby Chris Biancone
% Rev. 04-11-2021
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{cv}[v2.0 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{setspace}
\usepackage{moresize}

% custom fonts
\usepackage{fontspec}
\setmainfont{[garamond_var.ttf]} % fallback
\newfontfamily \bold{[haasbold.ttf]}[StylisticSet=1]
\newfontfamily \sans{[haas.ttf]}[StylisticSet=1]
\newfontfamily \serif{[garamond_var.ttf]}

\pagestyle{empty} % Suppress page numbers

% custom colors
\usepackage{xcolor}
\usepackage[pantone]{xespotcolor}
\NewSpotColorSpace{PANTONE}
\AddSpotColor     {PANTONE}  {PANTONE19-3847TCX} {PANTONE\SpotSpace 19-3847\SpotSpace TCX} {0.2 0.24 0.0 0.5} % PANTONE textile deep blue

\usepackage{dashrule}

\def \namefont{\bold\Huge\setstretch{1.25}}
\def \bodyfont{\normalsize\serif\color{darkgray}}
\def \expfont{\bold\Large}

% dotted line divider
\newcommand{\divider}{\textcolor{gray!30}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\medskip}

\newenvironment{fullwidth}{%
  \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}

\newcommand{\cvsection}[2][]{%
\color{black}
 \nointerlineskip\bigskip%
 \ifstrequal{#1}{}{}{\marginpar{{\dimexpr1pt-\baselineskip}\raggedright\input{#1}}}%
 {\sans\Huge{#2}}\\[-1ex]%
 {\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\expitem}[4][]{
\parbox[t]{0.2 \textwidth}{{\large{\bold{{#1}} \par\noskip \small\sans{#2} \par\noskip {#3} \par\noskip {#4}}}}
}