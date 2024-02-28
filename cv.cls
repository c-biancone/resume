%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This class file defines the structure and design of the template. 
%
%
% Created by Chris Biancone
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
\usepackage{ragged2e}

% custom fonts
\usepackage{fontspec}
\newfontfamily \bold{Sohne-Halbfett.otf}
\newfontfamily \thin{STIXTwoText-Regular.otf}
\setmainfont{STIXTwoText}[
	Extension		= .otf,
	UprightFont		= *-Medium,
	% BoldFont		= *-Bold.otf,
	ItalicFont		= *-MediumItalic.otf,
	% BoldItalicFont 	= *-BoldItalic.otf
]
\usepackage[math-style=ISO]{unicode-math}
\setmathfont{STIXTwoMath-Regular.otf} % for symbols
\usepackage{microtype}
\UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts

\pagestyle{empty} % Suppress page numbers

% custom colors
\usepackage{xcolor}
% \usepackage[pantone]{xespotcolor}
% \NewSpotColorSpace{PANTONE}
% \AddSpotColor     {PANTONE}  {PANTONE19-3847TCX} {PANTONE\SpotSpace 19-3847\SpotSpace TCX} {0.2 0.24 0.0 0.5} % PANTONE textile deep blue

\usepackage{dashrule}

\def \namefont{\bold\Huge\setstretch{1.25}}
\def \bodyfont{\normalsize}
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
 {\bold\LARGE{#2}}\\[-1ex]%
 {\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\expitem}[4][]{
\parbox[t]{0.2 \textwidth}{{\large{\bold{{#1}} \par\noskip \small{#2} \par\noskip {#3} \par\noskip {#4}}}}
}