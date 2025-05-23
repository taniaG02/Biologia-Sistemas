\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ejercicios}[2015/09/08 Clase para entregas de ejercicios]

\newif\ifheadernames

\DeclareOption{noheadernames}{\headernamesfalse}
\DeclareOption{headernames}{\headernamestrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{config/custombase}}

\ExecuteOptions{headernames}
\ProcessOptions\relax

\LoadClass[10pt,a4paper,palatino,noprobframes]{config/custombase}

\geometry{left=-0.5cm, right=1.5cm, top=2cm, bottom=1.5cm}

%\PrerenderUnicode{ÁáÉéÍíÓóÚúÑñ} % Para que salgan las tildes y demás mierdas en el título.

\renewcommand{\maketitle}{
	\pagestyle{plain}
	\thispagestyle{empty}
	\noindent \textbf{\Large \thetitle} \vspace{5pt} \\
	\theauthor \\
	\textit{\footnotesize \thedate}
	\vspace{20pt}
}

\fancypagestyle{plain}{%
	\lhead{\small \itshape \thetitle}
	\ifheadernames
		\rhead{\small RBBS}
	\else
		\rhead{}
	\fi
	\cfoot{\thepage\ / \pageref{LastPage}}
}

\setlength{\parskip}{5pt}
