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

input boxes;


beginfig(1);
u:=25;

boxit.raw(btex 原始数据 etex);
boxit.attr(btex 约简后的属性集 etex);
boxit.rules(btex 规则描述 etex);
boxit.less_rules(btex 精简或合并后的规则 etex);

attr.n - raw.s = (0, -3u);

rules.w - 0.5[raw.s, attr.n] = (5u, 0);
less_rules.w - rules.e = (3u, 0);



drawboxed(raw, attr, rules, less_rules);

drawarrow raw.s--attr.n;
drawarrow raw.e--rules.nw;
drawarrow attr.e--rules.sw;
drawarrow rules.e--less_rules.w;

label.lft(btex 约简 etex, 0.5[raw.s, attr.n] - (0.5u, 0));
label.lft(btex 属性值描述 etex, rules.w - (1u, 0));
label.top(btex 规则合并 etex, 0.5[rules.e, less_rules.w]);

endfig;

%------------------------------
verbatimtex
\end{CJK}
\end{document}
etex
%------------------------------
      end;



