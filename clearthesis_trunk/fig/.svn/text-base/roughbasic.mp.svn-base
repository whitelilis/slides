verbatimtex
%&latex
\documentclass{article}
\usepackage{CJK}
\begin{CJK}{GBK}{song}
\begin{document}
etex
%------------------------------
% put your Chinese character between 'btex' and 'etex'
% for example
% label.bot(btex 原点 etex, origin);
%------------------------------


beginfig(1);

u := 25;
steps := 10;
width := steps * u;
height := steps * u;

for i = 0 upto steps:
	draw (0, i * u)--(width, i * u) withcolor .9 white;
endfor;

for i = 0 upto steps:
	draw (i * u, 0)--(i * u, height) withcolor .9 white;
endfor;		      


draw (2u, 2u)--(4.5u, 3.8u)--(7.5u, 3.2u)--(7.5u, 7.8u)--(5u, 8u)--(3u, 5.7u)--cycle;

path iner;
iner = (3u, 4u)--(7u, 4u)--(7u, 7u)--(5u, 7u)--(5u, 6u)--(4u, 6u)--(4u, 5u)--(3u, 5u)--cycle;

fill iner withcolor .5 white;

draw (2u, 2u)--(4u, 2u)--(4u, 3u)--(8u, 3u)--(8u, 8u)--(4u, 8u)--(4u, 7u)--(3u, 7u)--(3u, 6u)--(2u, 6u)--cycle dashed evenly;


drawarrow (1u, 7u)--(3u, 5.7u);
drawarrow (3u, 8u)--(4u, 6u);
drawarrow (7u, 9u)--(8u, 8u);

label.top(btex 精确集 etex, (1u, 7u));
label.top(btex 下近似 etex, (3u, 8u));
label.top(btex 上近似 etex, (7u, 9u));


endfig;

%------------------------------
verbatimtex
\end{CJK}
\end{document}
etex
%------------------------------
      end;



