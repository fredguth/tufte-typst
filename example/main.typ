#import "../tufte_handout_template.typ": template, sidenote

#import "@preview/tablex:0.0.5": tablex, rowspanx, colspanx, hlinex
#let tbl_1 = text(size: 9pt, weight: "thin", tablex(
      columns: (1fr, 2fr, 2fr),
      rows: auto,
      inset: .3em,
      auto-lines: false,
      hlinex(stroke:.75pt),
      [$n$],[$C_n=V_n (1)$], [#align(right, $V_n (r)$)],
      hlinex(stroke:.5pt),
      align: left,
      [$0$], [$1$], [$1$],
      [$1$], [$2$], [$2r$],
      [$2$], [$pi$], [$pi r^2$],
      [$3$], [$4/3 pi$], [$4/3 pi r^3$],
      [$4$], [$1/2 pi^2$], [$1/2 pi^2 r^4$],
      [$5$], [$8/15 pi^2$], [$8/15 pi^2 r^5$],
      [],[],[],
      hlinex(stroke:.5pt)
    ))

#show: doc => template(
  title: [Well-rounded facts about spheres for typsts],
  authors: ("Fred Guth",),
  abstract: [This document showcases a layout for handouts inspired by the work of Edward Tufte (@edward_tufte), and typeset of the tufte-LaTex class. The contents of the handouts were copied from (cite Weissman) ],//be aware of the comma after name
  doc,)

= Computing the Volume
#sidenote([#v(-4em)#figure(
  image("./files/et_midjourney_transparent.png", width: 75%),
  caption: [Edward Tufte.],
) <edward_tufte>])
The closed n-dimensional ball of radius $r$, centered at the origin, is
defined by:

#align(center, $B^n = {accent(x, arrow) in bb(R)^n | x_1^2 + x_2^2 + ... + x_n^2 <= r^2}.$)
#sidenote(align(right, block(width: 12em)[#v(5em)#tbl_1]))
As a bounded closed subset of $bb(R)^n$, the $n$-ball has a well-deﬁned
volume, which we call $V_n (r)$. A table of volumes is given in the
margin. Of course, the word “volume” might be a bit misleading
in this degree of generality. In dimension $0$, the “volume” $V_0 (r)$
is the cardinality of the one-point set $bb(R)^0$. In dimension 1, the
“volume”, $V_1 (r) = 2r$, is simply the length of the line segment
$[−r, r]$. In dimension $2$, the “volume” of a circle is its area, and
$V_2 (r) = pi r^2$. #sidenote(text(size:8pt, [#v(5em)Don’t confuse a deﬁnition with a computation. Of course, one could “compute” the area of a circle with an integral, but such an argument would necessarily be circular, pun intended. Perhaps the only fact that needs to be proven is that the circumference is the derivative of the area, as functions of the radius, which follows from Stokes theorem.

Scaling is a particularly simple instance of the technique of change of variables. Scaling a measurable subset of $bb(R)^n$ by $r$ changes its volume by a factor of $r^n$.

])) This, in essence, is the deﬁnition of $pi$. In dimension Don’t confuse a deﬁnition with a computation. Of course, one could “compute” the area of a circle with an integral, but such an argument would necessarily be circular, pun intended. Perhaps the only fact that needs to be proven is that the circumference is the derivative of the area, as functions of the radius, which follows from Stokes theorem. 3, the “volume” of a sphere is its volume as the word is used by the English-speaking community at large.

There is one fact about volumes of balls – the functions $V_n(r)$ – that can be deduced from the simplest change of variables: a ball of radius $r$ can be obtained by scaling a unit ball by $r$. It follows that $V_n (r) = V_n (1)r^n$.

// For this reason, it is convenient to deﬁne Scaling is a particularly simple instance of the technique of change of variables. Scaling a measurable subset of Rn by r changes its volume by a factor of rn Cn = Vn(1), so that Vn(r) = Cnrn

// In high dimensions, volume is more difﬁcult to imagine, but
// no easier and no more difﬁcult to deﬁne mathematically. The
// basic techniques of calculus sufﬁce to compute the volumes Vn(r)
// in any dimension. It is a useful exercise to identify precisely the
// techniques required to compute these volumes.

== Basic slicing
Slicing the n-dimensional ball like an egg is helpful for computing
the volume $V_n (r)$:

// #sidenote([#v(-4em)#figure(
//   image("./files/slicer.png", width: 80%),
//   caption: [#text(size: 8pt)[Egg slicers, good for slicing eggs and teaching calculus.]],
// ) <slicer>])






= Layout inconsistencies
- leading between author and date
- margin note font size should be set automatically
- figure caption should be left aligned
- table fractions should be slanted

= Roadmap
- add image
- add references in the margin
- integrate python/R rendering via Quarto
#lorem(90)

#lorem(90)



= Conclusion
#lorem(90)
