\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{modarticle}[September 12 of 2021, Personalised article class, V1.0]

% Base class

\LoadClass[a4paper, 11pt]{article}

% Extensions

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{stmaryrd}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{authblk}
\RequirePackage{changes}

\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}

\RequirePackage{bbold}
\RequirePackage{tikz}
\RequirePackage{graphicx}

\RequirePackage[a4paper, total={6in, 9in}]{geometry}
\setlength{\marginparwidth }{2cm}

\usepackage{float}

\RequirePackage[ruled,vlined]{algorithm2e}

% Make title
\renewcommand{\maketitle}{
\makeatletter
\begin{center}
	\vspace{1em}
	{\noindent\vrule height 2.5pt width \textwidth \par}
	{\Huge\textbf \@title \par}
	{\noindent\vrule height 2.5pt width \textwidth \par}
	\vspace{1em}
	{\large \textit{\today}\par}
	\vspace{1em}
	{\large \@author \par}
	\vspace{1em}
\end{center}
\makeatother
}

% Commands

\setcounter{tocdepth}{2}

%\newtheoremstyle{}
%{}                % Space above
%{}                % Space below
%{\slshape}        % Theorem body font % (default is "\upshape")
%{}                % Indent amount
%{\bfseries}       % Theorem head font % (default is \mdseries)
%{.}               % Punctuation after theorem head % default: no punctuation
%{}               % Space after theorem head
%{}                % Theorem head spec

\newtheoremstyle{thm}% name of the style to be used
  {\topsep}% measure of space to leave above the theorem. E.g.: 3pt
  {\topsep}% measure of space to leave below the theorem. E.g.: 3pt
  {\itshape}% name of font to use in the body of the theorem
  {0pt}% measure of space to indent
  {\bfseries}% name of head font
  {. }% punctuation between head and body
  { }% space after theorem head; " " = normal interword space
  {\thmname{#1}\thmnumber{ #2}\textnormal{\thmnote{ (#3)}}}

\theoremstyle{thm}
\newtheorem{thm}{Theorem}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{prop}[thm]{Proposition}
\newtheorem{cor}[thm]{Corollary}
\newtheorem{rem}[thm]{Observation}

\theoremstyle{definition}
\newtheorem{defi}{Definition}

% Comments

\usepackage{xcolor}
\newcommand{\contenu}[1]{{\color{brown}#1}}

\newcommand{\mtcol}[1]{\textcolor{magenta}{#1}}
\newcommand{\mt}[1]{\mtcol{{\footnotesize MT} #1}}
\newcommand{\mtmarg}[1]{\mtcol{\footnotesize **} \marginpar{\mtcol{\scriptsize MT #1}}}
\definecolor{dimmed}{gray}{0.5}
\newcommand{\mtreplace}[2]{\textcolor{dimmed}{#1} \mtcol{#2}}

\newcommand{\ldcol}[1]{\textcolor{blue}{#1}}
\newcommand{\loic}[1]{\ldcol{{\footnotesize LD} #1}}
\newcommand{\ldmarg}[1]{\ldcol{*LD*} \marginpar{\ldcol{\scriptsize #1}}}
\definecolor{verydimmed}{gray}{0.7}
\newcommand{\ldreplace}[2]{\textcolor{verydimmed}{#1} \mtcol{#2}}

