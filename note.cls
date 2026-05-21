% note.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2026/05/10 My Note Class]

% 继承 ctexart
\LoadClass[11pt]{ctexart}

% ==================== 基础宏包 ====================
\RequirePackage[margin=1in]{geometry}
\RequirePackage{amsmath, amsthm, mathtools, amsfonts, extarrows}
\RequirePackage{graphicx}
\RequirePackage{tikz-cd}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage{tasks}
\RequirePackage{eso-pic}
\RequirePackage{calc}
\RequirePackage{listings}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{mdframed}
\RequirePackage{etoolbox}
\RequirePackage{fancyvrb}
\RequirePackage{upquote}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{xr-hyper}
\RequirePackage[nameinlink,noabbrev]{cleveref}
\RequirePackage{mathrsfs}
\RequirePackage[normalem]{ulem}
\RequirePackage{url}
\RequirePackage{physics2}
\usephysicsmodule{ab}
\usepackage{tcolorbox}
\tcbuselibrary{skins, breakable}

% 屏蔽 mdframed 警告
\makeatletter
\renewcommand*\mdf@PackageWarning[1]{}
\makeatother

% ==================== 标题格式设置 ====================
\titlespacing*{\section}{0pt}{2\baselineskip}{2\baselineskip}

% ==================== 列表间距 ====================
\setlist[enumerate]{topsep=-.2\baselineskip, partopsep=0pt}
\setlist[itemize]{topsep=-.2\baselineskip, partopsep=0pt}

% ==================== 任务环境设置 ====================
\settasks{after-item-skip=0pt, after-skip=0pt}

% ==================== 段落间距 ====================
% \setlength{\parindent}{0pt}
\setlength{\parindent}{2em}
\setlength{\parskip}{1\baselineskip}

% ==================== amsthm 样式定义 ====================
\newtheoremstyle{spacedplain}%
{1.0\baselineskip}{1.0\baselineskip}{\itshape}{}{\bfseries}{.}{.5em}{}

\newtheoremstyle{spaceddefn}%
{1.0\baselineskip}{1.0\baselineskip}{}{}{\bfseries}{.}{.5em}{}

\newtheoremstyle{spacedremark}%
{1.0\baselineskip}{1.0\baselineskip}{}{}{\itshape}{.}{.5em}{}

% ==================== 定理类环境（带编号） ====================
\theoremstyle{spacedplain}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}

\theoremstyle{spaceddefn}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{example}[theorem]{Example}

\theoremstyle{spacedremark}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{question}[theorem]{Question}

% ==================== 无编号定理类环境 ====================
\newtheorem*{theorem*}{Theorem}
\newtheorem*{proposition*}{Proposition}
\newtheorem*{lemma*}{Lemma}
\newtheorem*{corollary*}{Corollary}
\newtheorem*{definition*}{Definition}
\newtheorem*{notation*}{Notation}
\newtheorem*{example*}{Example}
\newtheorem*{remark*}{Remark}
\newtheorem*{question*}{Question}

% ==================== mdframed 样式定义 ====================
\mdfdefinestyle{theoremblockstyle}{%
  backgroundcolor=white, linecolor=red!80!black, linewidth=0.4pt,
  roundcorner=2pt, innertopmargin=6pt, innerbottommargin=6pt,
  innerleftmargin=8pt, innerrightmargin=8pt,
  skipabove=0.8\baselineskip, skipbelow=0.8\baselineskip}

\mdfdefinestyle{propositionblockstyle}{%
  backgroundcolor=white, linecolor=cyan!80!black, linewidth=0.4pt,
  roundcorner=2pt, innertopmargin=6pt, innerbottommargin=6pt,
  innerleftmargin=8pt, innerrightmargin=8pt,
  skipabove=0.8\baselineskip, skipbelow=0.8\baselineskip}

\mdfdefinestyle{definitionblockstyle}{%
  backgroundcolor=white, linecolor=green!70!black, linewidth=0.4pt,
  roundcorner=2pt, innertopmargin=6pt, innerbottommargin=6pt,
  innerleftmargin=8pt, innerrightmargin=8pt,
  skipabove=0.8\baselineskip, skipbelow=0.8\baselineskip}

\mdfdefinestyle{remarkblockstyle}{%
  backgroundcolor=white, linecolor=orange!85!black, linewidth=0.4pt,
  roundcorner=2pt, innertopmargin=6pt, innerbottommargin=6pt,
  innerleftmargin=8pt, innerrightmargin=8pt,
  skipabove=0.8\baselineskip, skipbelow=0.8\baselineskip}

\mdfdefinestyle{exampleblockstyle}{%
  backgroundcolor=white, linecolor=purple!80!black, linewidth=0.4pt,
  roundcorner=2pt, innertopmargin=6pt, innerbottommargin=6pt,
  innerleftmargin=8pt, innerrightmargin=8pt,
  skipabove=0.8\baselineskip, skipbelow=0.8\baselineskip}

\mdfdefinestyle{invisibleblockstyle}{%
  backgroundcolor=white, linecolor=white, linewidth=0pt, roundcorner=0pt,
  innertopmargin=0pt, innerbottommargin=0pt, innerleftmargin=0pt,
  innerrightmargin=0pt, skipabove=0.8\baselineskip, skipbelow=0.8\baselineskip}

% ==================== 应用 mdframed 样式 ====================
\surroundwithmdframed[style=theoremblockstyle]{theorem}
\surroundwithmdframed[style=propositionblockstyle]{proposition}
\surroundwithmdframed[style=propositionblockstyle]{lemma}
\surroundwithmdframed[style=propositionblockstyle]{corollary}
\surroundwithmdframed[style=definitionblockstyle]{definition}
\surroundwithmdframed[style=definitionblockstyle]{notation}
\surroundwithmdframed[style=exampleblockstyle]{example}
\surroundwithmdframed[style=remarkblockstyle]{remark}
\surroundwithmdframed[style=remarkblockstyle]{question}

\surroundwithmdframed[style=invisibleblockstyle]{theorem*}
\surroundwithmdframed[style=invisibleblockstyle]{proposition*}
\surroundwithmdframed[style=invisibleblockstyle]{lemma*}
\surroundwithmdframed[style=invisibleblockstyle]{corollary*}
\surroundwithmdframed[style=invisibleblockstyle]{definition*}
\surroundwithmdframed[style=invisibleblockstyle]{notation*}
\surroundwithmdframed[style=invisibleblockstyle]{example*}
\surroundwithmdframed[style=invisibleblockstyle]{remark*}
\surroundwithmdframed[style=remarkblockstyle]{question*}

% ==================== 引文环境样式 ====================
\definecolor{quoteyellow}{RGB}{255,255,204}
\let\oldquote\quote
\let\endoldquote\endquote
\renewenvironment{quote}{%
  \begin{mdframed}[backgroundcolor=quoteyellow, linecolor=yellow!50!black, linewidth=0.4pt, roundcorner=2pt]
  \oldquote}{%
  \endoldquote
  \end{mdframed}}

% ==================== 证明环境 ====================
\AtBeginEnvironment{proof}{\vspace{-0.5\baselineskip}}
\AtEndEnvironment{proof}{\noindent}
\newtcolorbox{proofbox}{
    enhanced,
    blanker,
    left=8pt,
    borderline west={1pt}{1pt}{gray},  % 左边线
    breakable,          % 允许跨页
    parbox=false
}

% 重定义证明环境
\let\oldproof\proof
\let\endoldproof\endproof
\renewenvironment{proof}{%
    \begin{proofbox}
    \oldproof
}{%
    \endoldproof
    \end{proofbox}
}
\AtBeginEnvironment{proof}{\setlength{\parindent}{0pt}}

% ==================== 交叉引用 ====================
\hypersetup{colorlinks=true, linkcolor=blue, citecolor=green}
\crefformat{equation}{(#2#1#3)}
\Crefformat{equation}{(#2#1#3)}

% ==================== 代码高亮 ====================
\definecolor{shadecolor}{RGB}{248,248,248}

\newenvironment{Highlighting}{%
  \begin{Verbatim}[frame=single, framesep=2mm, baselinestretch=1, fontsize=\small]
}{%
  \end{Verbatim}
}

% ==================== Pandoc 辅助命令 ====================
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

% ==================== 自定义标题页 ====================
\makeatletter
\renewcommand{\maketitle}{%
    \begin{titlepage}
        \newgeometry{margin=0pt, top=0pt, bottom=0pt, left=0pt, right=0pt}
        \parindent=0pt
        
        % 放置封面图片
        \@ifundefined{titleimage}{}{%
            \includegraphics[width=\paperwidth, height=\coverimageheight, keepaspectratio=true, clip]{\titleimage}
        }
        
        
        \vspace{1cm}
        
        \begin{center}
            {\Huge \textbf{\@title}}
            
            \vspace{0.5cm}
            
            \@ifundefined{subtitle}{}{%
                {\Large \textit{\subtitle}}
                \vspace{0.8cm}
            }
            
            \@ifundefined{author}{}{%
                {\Large 作者：\@author}
                \vspace{0.3cm}
            }
            
            \@ifundefined{institute}{}{%
                {\large \institute}
                \vspace{0.3cm}
            }
            
            {\large \@date}

            \iftoggle{enableEpigraph}{%
            \epigraphcontent
            \vspace{1cm}
            }{}
        \end{center}

        
        \restoregeometry
        
        \vfill
    \end{titlepage}
}
\makeatother

% ==================== CSLReferences 环境 ====================
\newenvironment{CSLReferences}[2]{%
  \begin{enumerate}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\leftmargin}{2em}
    \setlength{\itemindent}{-2em}
    \let\olditem\item
    \renewcommand\item{\olditem\hspace*{-\leftmargin}}
  }{%
  \end{enumerate}
}

\endinput