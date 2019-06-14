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
width := 6;
height := 6;

picture r;
picture rr;
picture rrr;
picture rrx;
picture rrrx;



for i = 0 upto 2 * height:
	draw (0, 0.5 * i * u)--(width * u, 0.5 * i * u);
endfor;

for i = 0 upto width:
	draw (i * u, 0)--(i * u, height * u);
endfor;

r = currentpicture;

fill (2u, 0)--(4u, 0)--(4u, height * u)--(2u, height * u)--cycle withcolor 0.5 white;
fill (5u, 0)--(6u, 0)--(6u, height * u)--(5u, height * u)--cycle withcolor 0.5 white;

rr = currentpicture shifted (10u, 0);


fill (0, 0)--(6u, 0)--(6u, 6u)--(0, 6u)--cycle withcolor white;
draw r;

fill (0, 0)--(1u, 0)--(1u, 1u)--(0, 1u)--cycle withcolor 0.5 white;
fill (5u, 0)--(6u, 0)--(6u, 6u)--(5u, 6u)--cycle withcolor 0.5 white;
fill (4u, 1u)--(5u, 1u)--(5u, 3u)--(4u, 3u)--cycle withcolor 0.5 white;
fill (2u, 3u)--(3u, 3u)--(3u, 6u)--(2u, 6u)--cycle withcolor 0.5 white;
rrr = currentpicture shifted (5u, 10u);

fill (0, 0)--(6u, 0)--(6u, 6u)--(0, 6u)--cycle withcolor white;

draw r;
draw rr;
draw rrr;

drawarrow (6u, 3u)--(10u, 3u);
drawarrow (13u, 6u)--(11u, 10u);
drawarrow (3u, 6u)--(5u, 10u) dashed evenly;

label.top(btex 约简 etex, 0.5[(6u, 3u), (10u, 3u)]);
label.rt(btex 规则合并 etex, 0.5[(13u, 6u), (11u, 10u)]);
label.lft(btex 期望 etex, 0.5[(3u, 6u), (5u, 10u)]);

endfig;

%------------------------------
verbatimtex
\end{CJK}
\end{document}
etex
%------------------------------
      end;



