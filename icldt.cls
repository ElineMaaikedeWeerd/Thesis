% icldt.cls Thesis Dissertation class
% Modified by Ian Huston from original downloaded from
% http://www.doc.ic.ac.uk/~dwagner/downloads.php
%
% Main Changes:
%  * Change to using correct College name for Astronomy Unit, Queen Mary, University
% of London
%  * Slightly change margins to better accommodate footnotes
%
% Usage:
% Set the main variables using the following commands.
% \college
% \department
% \title
% \author
% \declaration - This is the declaration that the thesis is your own work.
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%%
%% This is file `icldt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% icldt.dtx  (with options: `class')
%%
%% ///////////////////////////////////////////////////////////////////
%%
%% The provided documentclass `icldt' is based on the class `scrreprt'
%% from the Koma-script package. It uses the packages `geometry'
%% and `setspace' to fullfill the requirements for dissertations of
%% the University of London and of Imperial College London.
%%
%% If you print your dissertation for yourself or as a present for
%% family, friends or colleagues you probably should use a different
%% layout which does not fulfill the College requirements but which
%% looks much better.
%% For further information and for professional layouting and
%% printing services please visit www.PrettyPrinting.net.
%%
%% ///////////////////////////////////////////////////////////////////
%%
%% Copyright (c) 2007, Daniel Wagner, www.PrettyPrinting.net
%%
%% Permission is hereby granted, free of charge, to any person
%% obtaining a copy of this documentclass and associated
%% documentation files (the "Template"), to deal in the Template
%% without restriction, including without limitation the rights to
%% use, copy, modify, merge, publish, distribute, sublicense,
%% and/or sell copies of the Template, and to permit persons to
%% whom the Template is furnished to do so, subject to the
%% following conditions:
%%
%% The above copyright notice and this permission notice shall be
%% included in all copies or substantial portions of the Template.
%%
%% THE TEMPLATE IS PROVIDED ``AS IS'', WITHOUT WARRANTY OF ANY KIND,
%% EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
%% OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
%% NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
%% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
%% WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE TEMPLATE OR THE USE OR
%% OTHER DEALINGS IN THE TEMPLATE.
%%
%% ///////////////////////////////////////////////////////////////////
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icldt}
    [2008/09/25 v1.5 Imperial College London Dissertation Template]

\newcommand*{\@supervisor}{}
\newcommand*{\@university}{}
\newcommand*{\@college}{Queen Mary}
\newcommand*{\@department}{}
\newcommand*{\@field}{}
\newcommand*{\@degree}{}
\newcommand*{\@diploma}{}
\newcommand*{\@declaration}{}
\DeclareOption{university}{%
 \renewcommand{\@university}{Queen Mary, University of London}}
\DeclareOption{imperial}{%
 \let\@university\empty}
\DeclareOption{PhD}{%
 \renewcommand{\@degree}{Doctor of Philosophy}
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{MSc}{%
 \renewcommand{\@degree}{Master of Science}\let\@diploma\empty}
\DeclareOption{BSc}{%
 \renewcommand{\@degree}{Bachelor of Science}\let\@diploma\empty}
\DeclareOption{DIC=off}{%
 \let\@diploma\empty}
\DeclareOption{DIC=on}{%
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{declaration=off}{%
 \let\@declaration\empty}
\DeclareOption{declaration=on}{%
 \renewcommand{\@declaration}{%
 I herewith certify that all material in this dissertation which
 is not my own work has been properly acknowledged.}}
\DeclareOption{doublespacing}{\AtBeginDocument{\doublespacing}}
\DeclareOption{onehalfspacing}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{titlepagenumber=off}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{empty}}}
\DeclareOption{titlepagenumber=on}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{plain}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ExecuteOptions{%
 onehalfspacing,titlepagenumber=on,university,PhD,declaration=on,a4paper,12pt,oneside,DIC=off} %put titlepagenumber=off for no number //emw
\ProcessOptions\relax
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\college}[1]{\gdef\@college{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\field}[1]{\gdef\@field{#1}}
\newcommand*{\declaration}[1]{\gdef\@declaration{#1}}
%original class definition...
%\LoadClass{scrreprt}
%\LoadClass[chapterprefix=false, appendixprefix=true]{scrreprt}%cth added chapter to get appendices working
\LoadClass[appendixprefix=true]{scrreprt}%cth


\RequirePackage{setspace}

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% MARGINS
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
\RequirePackage[left=4.0cm,right=2.0cm,top=3.50cm,bottom=3.0cm]%
 {geometry}
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
\setkomafont{sectioning}{\rmfamily\bfseries}
\renewcommand*{\maketitle}{
\begin{titlepage}
 \par
 \clearpage
 \thispagestyle{\titlepagestyle}
 \noindent\begin{minipage}[t]{\textwidth}
  \centering\large
  Astronomy Unit %was commented out

  \ifx\@department\@empty \else \par School of \@department\fi

  %\@college
  \ifx\@university\@empty \else \@university\par\fi
 \end{minipage}
 \null\vfill
 \begin{center}
  {\titlefont\huge \@title\par}
  \vskip 3em
  {\Large \lineskip 0.75em
  \begin{tabular}[t]{c}
   \@author
  \end{tabular}\par}
  \vskip 1.5em
%   {\Large \@date \par}
  \vskip \z@ \@plus3fill
  \ifx\@supervisor\@empty \else
  {\Large Supervised by \@supervisor \par}
  \fi
  \vskip 3em
 \end{center}\par
 \noindent\begin{minipage}[b]{\textwidth}
  \centering
  Submitted in partial fulfillment of the requirements of the Degree of \\ \@degree\  % in
  %\ifx\empty\@field{\@department}\else{\@field}\fi\ of
%  \ifx\empty\@university{\@college}\else{the \@university}\fi
%  \ifx\@diploma\@empty\else{\\and the \@diploma}\fi
 \end{minipage}
 \ifx\@declaration\@empty\else{
 \cleardoublepage
 \chapter*{Declaration}
 \thispagestyle{plain} %change to plain if want page number on declaration //emw
 \@declaration
 \par\vspace{3cm}
 %\hfill\@author %cth i think this adds my name again under the declaration
 \cleardoublepage
 }\fi
\end{titlepage}
}
\newcommand{\makededication}{
 \ifx\@dedication\@empty \else
 \clearpage
 \thispagestyle{plain}
 \null\vfill
 {\centering \Large \@dedication \par}
 \vskip \z@ \@plus3fill
 \cleardoublepage
 \fi
}
\renewenvironment{abstract}{%
\chapter*{Abstract}\thispagestyle{plain}}{\cleardoublepage}
\endinput
%%
%% End of file `icldt.cls'.
