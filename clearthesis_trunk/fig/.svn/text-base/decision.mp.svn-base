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



fill (5u, 0)--(6u, 0)--(6u, height * u)--(5u, height * u)--cycle withcolor 0.5 white;
for i = 0 upto 2 * height:
	draw (0, 0.5 * i * u)--(width * u, 0.5 * i * u);
endfor;

for i = 0 upto width:
	draw (i * u, 0)--(i * u, height * u);
endfor;

picture brace;
brace = btex $\lbrace$ etex xscaled 1.5 yscaled 12 rotated -90 shifted (1.4u, 6.4u);

picture braces;
braces = btex $\lbrace$ etex xscaled 1.5 yscaled 2 rotated -90 shifted (5.3u, 6.4u);

draw brace;
draw braces;

label.top(btex 条件属性 etex, (2.5u, 6.5u));
label.top(btex 决策属性 etex, (5.5u, 6.5u));

endfig;

%------------------------------
verbatimtex
\end{CJK}
\end{document}
etex
%------------------------------
      end;



