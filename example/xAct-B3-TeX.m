(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(************************************************************************)
(* Bimetric computations in xAct. Part III.                             *)
(* Copyright (c) 2014-2015 by Mikica B. Kocic, under GPL.               *)
(************************************************************************)


(* 
  GNU General Public License (GPL)

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published
  by the Free Software Foundation; either version 2 of the License,
  or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place-Suite 330, Boston, MA 02111-1307,
  USA. 
*)


tex$log={
"\\allowdisplaybreaks[1]","",
"\\section*{\\center Bimetric BH solutions}","",
"\\noindent\\centerline{Report generated: " <> DateString[{
"Year","-","Month","-","Day"," ",
"Hour",":","Minute",":","Second"}] <> " (MBK)}",
"\\vspace{1mm}","",
"\\noindent This file was generated automatically by the notebook: "<>
"\\texttt{"<>FileNameSplit[NotebookFileName[]][[-1]]<>"}"
};


texDumpAssumptions[ If[inOldVars,altFields,theFields] ];


log/@{
"\\subsubsection*{Transformations}",
"Old to new variables:",
"\\begin{align} &",
StringRiffle[texNice/@oldToNewVarsRelation,", \\quad "]//StringReplace[#,"="->" := "]&,
"\\end{align}",
"New to old variables:",
"\\begin{align} &",
StringRiffle[texNice/@newToOldVarsRelation,", \\quad "]//StringReplace[#,"="->" := "]&,
"\\end{align}",""
};


texDumpMetric [ "g",g\[FilledRectangle] ];


texDumpMetric [ "f",f\[FilledRectangle] ];


texDumpInteractionTerm [];


texDumpGeometryOf[ "g",g\[CloverLeaf], ChristoffelCDPD\[ScriptCapitalB], RicciScalarCD, KretschmannCD, EinsteinCD ];


texDumpGeometryOf[ "f",f\[CloverLeaf], ChristoffelCDfPD\[ScriptCapitalB], RicciScalarCDf, KretschmannCDf, EinsteinCDf ];


log/@Flatten[{
"\\section*{The Full Set of EoM}",
"EoM for $g$:","\\begin{align}",
Riffle[Table[
{"& 0 = ", gEoM[[i]]//Expand//texNice//myTexBreak},
{i,Length@gEoM}
],"\\\\"],
"\\end{align}",
"EoM for $f$:","\\begin{align}",
Riffle[Table[
{"& 0 = ", fEoM[[i]]//Expand//texNice//myTexBreak},
{i,Length@fEoM}
],"\\\\"],
"\\end{align}",
"Bianchi constraint for $g$:","\\begin{align}",
Riffle[Table[
{"& 0 = ", gBianchi[[i]]//Expand//texNice//myTexBreak},
{i,Length@gBianchi}
],"\\\\"],
"\\end{align}",
"Bianchi constraint for $f$:","\\begin{align}",
Riffle[Table[
{"& 0 = ", fBianchi[[i]]//Expand//texNice//myTexBreak},
{i,Length@fBianchi}
],"\\\\"],
"\\end{align}"
}];


log/@Flatten[{
"\\section*{The Reduced Set of EoM}",
"Combined EoM:","\\begin{align}",
Riffle[texDisplayExpandedForm[coeffSet$full],"\\\\"],
"\\end{align}"
}];


If[inNewVars,log /@{"",
"\\subsection*{Normal form of EoM}",
"Procedure how to find the normal form of EoM (in new variables):",
"\\begin{itemize}",
"\\item Solve $F^{\\prime}$ from $G_g{}^1{}_1$.",
"\\item Solve $b^{\\prime}$ from $G_g{}^0{}_0$.",
"\\item Solve $\\sigma^{\\prime}$ from $G_f{}^0{}_0$.",
"\\item Solve $\\tau^{\\prime}$ from $G_f{}^1{}_1$ as a function of $R^{\\prime}$.",
"\\item Solve $\\tau^{\\prime}$ from Bianchi constraint as a function of $R^{\\prime}$.",
"\\item Solve algebraically $\\tau$ from $G_f{}^1{}_1$ and Bianchi so that $R^{\\prime}$ drops out.",
"\\item Calulate $\\tau^{\\prime}$ from $\\tau$.",
"\\item Find (reversed) $R^{\\prime}$ from the calculated $\\tau^{\\prime}$.",
"\\item Verify validity of $F^{\\prime}$, $b^{\\prime}$, $\\sigma^{\\prime}$, $\\tau^{\\prime}$ and $R^{\\prime}$ at the horizon $F=0$ by checking poles wrt $F$.",
"\\end{itemize}"
}];


If[inOldVars,log /@{"",
"\\subsection*{Normal form of EoM}","Procedure how to find the normal form of EoM (in old variables):",
"\\begin{itemize}",
"\\item Solve $a$ from $G_f{}^1{}_1$ and Bianchi",
"\\item Solve $Q^{\\prime}$ from $G_g {}^1{}_ 1$",
"\\item Calculating $a^{\\prime}$ from $a$",
"\\item Solve $N^{\\prime}$, $Y^{\\prime}$ and $U^{\\prime}$ from $G_g{}^0{}_0$, $G_f{}^0{}_0$ and $G_f{}^1{}_1$",
"\\item Simplify $N^{\\prime}$, $Y^{\\prime}$ and $U^{\\prime}$",
"\\end{itemize}"
}];


log/@Flatten[{
"\\section*{An Example of EoM}",
"Combined EoM using parameters:",
"$m=1$, $\\kappa=1$, $c=1$, $\\beta_2=0$, $\\beta_3=0$",
"\\begin{align}",
Riffle[texDisplayExpandedForm[coeffSet],"\\\\"],
"\\end{align}"
}];


texSplitLong[expr_]:=If[Head@expr=!=Times,
expr//texNice,
Riffle[Table[
If[Head@expr[[i]]=!=Power,
texNice[expr[[i]]//Expand,"{\\color{blue}\\big(}","{\\color{blue}\\big)}"],
texNice[expr[[i]][[1]]//Expand,"{\\color{red}\\big(}","{\\color{red}\\big)}"]<>
texNice[expr[[i]][[2]],"^{\\color{red}","}"]
],
{i,Length@expr}]," \\cdot " ]/.List->StringJoin
]//myTexBreak


If[inNewVars\[And]coordSys==1,log/@{
"\\subsubsection*{The normal form}",
"\\begin{align}",
texNice[
\!\(\*UnderscriptBox[\(\[Tau]\), \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[\(\[Tau]\), \(_\)]\)/.sol$\[Tau]45//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(F\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(F\), \(\[Prime]\)], \(_\)]\)/.sol$F/.sol$\[Tau]45//Expand//Simplify//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(b\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(b\), \(\[Prime]\)], \(_\)]\)/.sol$b/.sol$\[Tau]45//Expand//Simplify//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(\[Sigma]\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(\[Sigma]\), \(\[Prime]\)], \(_\)]\)/.sol$\[Sigma]/.sol$\[Tau]45//Expand//Simplify//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(R\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(R\), \(\[Prime]\)], \(_\)]\)/.sol$R//texSplitLong,
"\\end{align}"
}];


If[inOldVars\[And]coordSys==1,log/@{
"\\subsubsection*{The normal form}",
"\\begin{align}",
texNice[
\!\(\*UnderscriptBox[\(a\), \(_\)]\)/
\!\(\*UnderscriptBox[\(Q\), \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[\(a\), \(_\)]\)/
\!\(\*UnderscriptBox[\(Q\), \(_\)]\)/.sol$a//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(Q\), \(\[Prime]\)], \(_\)]\)/
\!\(\*UnderscriptBox[\(Q\), \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(Q\), \(\[Prime]\)], \(_\)]\)/
\!\(\*UnderscriptBox[\(Q\), \(_\)]\)/.sol$Q//Expand//Simplify//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(Y\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(\[CapitalNu]\), \(\[Prime]\)], \(_\)]\)/.sol$NYU//Expand//Simplify//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(\[CapitalNu]\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(Y\), \(\[Prime]\)], \(_\)]\)/.sol$NYU//Expand//Simplify//texSplitLong,
"\\\\",
texNice[
\!\(\*UnderscriptBox[
SuperscriptBox[\(U\), \(\[Prime]\)], \(_\)]\),""," &= "],

\!\(\*UnderscriptBox[
SuperscriptBox[\(U\), \(\[Prime]\)], \(_\)]\)/.sol$NYU//texSplitLong,
"\\end{align}"
}];


Quiet@DefTensor[G[\[ScriptA],-\[ScriptB]],\[ScriptCapitalM]]


If[coordSys==1,Block[{coordSys=2},
log/@Flatten[{
"\\section*{The EoM in the off-diagonal form}",
"Assume the chart transition map $J$:",
"\\begin{align}",
"& J^{\\mu}{}_{\\underline{\\alpha}} := \\frac{\\partial x^\\mu}{\\partial x^{\\underline{\\alpha}}} = ",
J\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
"\\!,\\quad (J^{-1})^{\\underline{\\alpha}}{}_{\\mu} := \\frac{\\partial x^{\\underline{\\alpha}}}{\\partial x^\\mu} = ",
iJ\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
"\\!,\\end{align}",
"In the chart $\\{\\underline{v},\\underline{r},\\underline{\\theta},\\underline{\\phi}\\}$, we have:",
"\\begin{align}",
"g_{\\alpha\\beta} &= ",
g\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
"\\!,\\\\",
"f_{\\alpha\\beta} &= ",
f\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
"\\!,\\\\",
"S^{\\alpha}{}_{\\beta} &= ",
iJ\[FilledRectangle].S\[FilledRectangle].J\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
"\\!.",
"\\end{align}",
"If the equations of motion $G$ are in the diagonal form,",
"\\begin{align}",
"G &= ",
DiagonalMatrix@{G[{0,\[ScriptCapitalB]},{0,-\[ScriptCapitalB]}],G[{1,\[ScriptCapitalB]},{1,-\[ScriptCapitalB]}],G[{2,\[ScriptCapitalB]},{2,-\[ScriptCapitalB]}],G[{3,\[ScriptCapitalB]},{3,-\[ScriptCapitalB]}]} // redefineFields // Simplify // texNiceMatrix,
"= 0,",
"\\end{align}",
"then after the coordinate transformation, we have:", 
"\\begin{align}",
"J^{-1}\,G\,J &= ",
iJ\[FilledRectangle].DiagonalMatrix@{G[{0,\[ScriptCapitalB]},{0,-\[ScriptCapitalB]}],G[{1,\[ScriptCapitalB]},{1,-\[ScriptCapitalB]}],G[{2,\[ScriptCapitalB]},{2,-\[ScriptCapitalB]}],G[{3,\[ScriptCapitalB]},{3,-\[ScriptCapitalB]}]}.J\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
"= 0.",
"\\end{align}",
"That is, we can consider EoM only in the bi-diagonal form without loss of generality."
}]
]];


saveToTexFile[ NotebookDirectory[]<>"bh-report-"<>If[inOldVars,"O","N"]<>ToString@coordSys ][tex$log]
