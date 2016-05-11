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
(* Bimetric computations in xAct. Part II.                              *)
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


\[Eta]\[FilledRectangle] = DiagonalMatrix[ {-1} ~Join~ ConstantArray[ 1, DimOfManifold[\[ScriptCapitalM]]-1 ] ];


Print[ xAct`xCore`Private`bars ]


If[ NameQ["g\[CloverLeaf]"],
	Quiet@DefMetric[ -1, g\[CloverLeaf][-\[ScriptA], -\[ScriptB]], CD, PrintAs -> "g", SymbolOfCovD -> {";", "\[Del]g" } ]
]


If[ Length[E\[FilledRectangle]] =!= 0,
	g\[FilledRectangle] = Transpose[E\[FilledRectangle]].\[Eta]\[FilledRectangle].E\[FilledRectangle] //Simplify;
]


MetricInBasis[ g\[CloverLeaf], -\[ScriptCapitalB], g\[FilledRectangle] ];


MetricCompute[ g\[CloverLeaf], \[ScriptCapitalB], "Metric"[-1, -1], CVSimplify -> Simplify ]
MetricCompute[ g\[CloverLeaf], \[ScriptCapitalB], "Metric"[1, 1], CVSimplify -> Simplify ]
MetricCompute[ g\[CloverLeaf], \[ScriptCapitalB], "DetMetric"[], CVSimplify -> Simplify ]


Print[ xAct`xCore`Private`bars ]


Quiet@DefMetric[ -1, f\[CloverLeaf][-\[ScriptA],-\[ScriptB]], CDf, PrintAs -> "f", SymbolOfCovD -> { "|", "\[Del]f" } ]


If[ Length[L\[FilledRectangle]] =!= 0,
	f\[FilledRectangle] = Transpose[L\[FilledRectangle]].\[Eta]\[FilledRectangle].L\[FilledRectangle] //Simplify;
]


MetricInBasis[ f\[CloverLeaf], -\[ScriptCapitalB], f\[FilledRectangle] ];


Print[ xAct`xCore`Private`bars ]


Quiet@DefTensor[ A[\[ScriptA],-\[ScriptB]], \[ScriptCapitalM] ]


A\[FilledRectangle] = Inverse@g\[FilledRectangle].f\[FilledRectangle] //FullSimplify;


AllComponentValues[ A[{\[ScriptA],\[ScriptCapitalB]},{-\[ScriptB],-\[ScriptCapitalB]}], A\[FilledRectangle] ];


Quiet@DefTensor[ S[\[ScriptA],-\[ScriptB]], \[ScriptCapitalM] ]


If[ Length[S\[FilledRectangle]] === 0,
	S\[FilledRectangle] = MatrixPower[ A\[FilledRectangle], 1/2 ] // FullSimplify
];


If[ Length[L\[FilledRectangle]] === 0 \[And] Length[E\[FilledRectangle]] =!= 0,
	L\[FilledRectangle] = E\[FilledRectangle].S\[FilledRectangle] // Simplify;
];


AllComponentValues[ S[{\[ScriptA],\[ScriptCapitalB]},{-\[ScriptB],-\[ScriptCapitalB]}], S\[FilledRectangle] ];


Quiet@DefTensor[ iS[\[ScriptA],-\[ScriptB]], \[ScriptCapitalM], PrintAs -> "\[LeftDoubleBracket]\!\(\*SuperscriptBox[\(S\), \(-1\)]\)\[RightDoubleBracket]" ]


AllComponentValues[ iS[{\[ScriptA],\[ScriptCapitalB]},{-\[ScriptB],-\[ScriptCapitalB]}], Inverse@S\[FilledRectangle] ];


h\[FilledRectangle] = g\[FilledRectangle].S\[FilledRectangle] // Simplify;


If[ DimOfManifold[\[ScriptCapitalM]] === 4, Block[
	{e1,e2,e3,e4},

	e1 = \[ScriptCapitalE][S[\[ScriptA],-\[ScriptB]],0] == 1;
	e2 = \[ScriptCapitalE][S[\[ScriptA],-\[ScriptB]],1] == S[\[ScriptA],-\[ScriptA]] //ToCanonical;
	e3 = \[ScriptCapitalE][S[\[ScriptA],-\[ScriptB]],2] == 1/2 (S[\[ScriptA],-\[ScriptA]]S[\[ScriptB],-\[ScriptB]]-S[\[ScriptA],-\[ScriptB]]S[\[ScriptB],-\[ScriptA]]) //ToCanonical;
	e4 = \[ScriptCapitalE][S[\[ScriptA],-\[ScriptB]],3] == 1/6 (S[\[ScriptA],-\[ScriptA]]S[\[ScriptB],-\[ScriptB]]S[\[ScriptC],-\[ScriptC]]-3S[\[ScriptA],-\[ScriptA]]S[\[ScriptB],-\[ScriptC]]S[\[ScriptC],-\[ScriptB]]+2S[\[ScriptA],-\[ScriptB]]S[\[ScriptB],-\[ScriptC]]S[\[ScriptC],-\[ScriptA]]) //ToCanonical;

	If[ \[Not]( e1 \[And] e2 \[And] e3 \[And] e4 ), Print@Style["E for Elementary symmetric polynomials failed",Red] ];

	e1 = \[ScriptCapitalY][S[\[ScriptA],-\[ScriptB]],0] == g\[CloverLeaf][\[ScriptA],-\[ScriptB]]//ToCanonical;
	e2 = \[ScriptCapitalY][S[\[ScriptA],-\[ScriptB]],1] == S[\[ScriptA],-\[ScriptB]]-S[\[ScriptC],-\[ScriptC]]g\[CloverLeaf][\[ScriptA],-\[ScriptB]]//ToCanonical;
	e3 = \[ScriptCapitalY][S[\[ScriptA],-\[ScriptB]],2] == S[\[ScriptA],-\[ScriptC]]S[\[ScriptC],-\[ScriptB]]-S[\[ScriptA],-\[ScriptB]]S[\[ScriptC],-\[ScriptC]]+1/2 g\[CloverLeaf][\[ScriptA],-\[ScriptB]](S[\[ScriptC],-\[ScriptC]]S[\[ScriptD],-\[ScriptD]]-S[\[ScriptC],-\[ScriptD]]S[\[ScriptD],-\[ScriptC]])//ToCanonical;
	e4 = \[ScriptCapitalY][S[\[ScriptA],-\[ScriptB]],3] == S[\[ScriptA],-\[ScriptC]]S[\[ScriptC],-\[ScriptD]]S[\[ScriptD],-\[ScriptB]]-S[\[ScriptA],-\[ScriptC]]S[\[ScriptC],-\[ScriptB]]S[\[ScriptD],-\[ScriptD]]+1/2 S[\[ScriptA],-\[ScriptB]](S[\[ScriptC],-\[ScriptC]]S[\[ScriptD],-\[ScriptD]]-S[\[ScriptC],-\[ScriptD]]S[\[ScriptD],-\[ScriptC]])-1/6 g\[CloverLeaf][\[ScriptA],-\[ScriptB]](S[\[ScriptD],-\[ScriptD]]S[\[ScriptE],-\[ScriptE]]S[\[ScriptC],-\[ScriptC]]-3S[\[ScriptD],-\[ScriptD]]S[\[ScriptE],-\[ScriptC]]S[\[ScriptC],-\[ScriptE]]+2S[\[ScriptD],-\[ScriptE]]S[\[ScriptE],-\[ScriptC]]S[\[ScriptC],-\[ScriptD]])//ToCanonical;

If[ \[Not]( e1 \[And] e2 \[And] e3 \[And] e4 ), Print@Style["\[ScriptCapitalY] for Elementary symmetric polynomials failed",Red] ];
]]


Print[ xAct`xCore`Private`bars ]


(
	Print[ "** MetricCompute g: ", #1 ];
	MetricCompute[ g\[CloverLeaf], \[ScriptCapitalB], #1, CVSimplify -> Simplify, Parallelize -> True ]
) & /@ 
{
	"Metric"[-1, -1], "Metric"[1, 1], "DetMetric"[],
	"Christoffel"[-1, -1, -1], "Christoffel"[1, -1, -1],
	"Riemann"[-1, -1, -1, -1], "Riemann"[-1, -1, -1, 1], "Riemann"[-1, -1, 1, 1],
	"Ricci"[-1, -1], "RicciScalar"[], "Einstein"[-1, -1],
	"DMetric"[-1, -1, -1], "DDMetric"[-1, -1, -1, -1],
	"Weyl"[-1, -1, -1, -1], "Kretschmann"[], "CDRiemann"[-1, -1, -1, -1, -1] 
};


Print[ xAct`xCore`Private`bars ]


(
	Print[ "** MetricCompute f: ", #1 ];
	MetricCompute[ f\[CloverLeaf], \[ScriptCapitalB], #1, CVSimplify -> Simplify, Parallelize -> True ]
) & /@ 
{
	"Metric"[-1, -1], "Metric"[1, 1], "DetMetric"[],
	"Christoffel"[-1, -1, -1], "Christoffel"[1, -1, -1],
	"Riemann"[-1, -1, -1, -1], "Riemann"[-1, -1, -1, 1], "Riemann"[-1, -1, 1, 1],
	"Ricci"[-1, -1], "RicciScalar"[], "Einstein"[-1, -1],
	"DMetric"[-1, -1, -1], "DDMetric"[-1, -1, -1, -1],
	"Weyl"[-1, -1, -1, -1], "Kretschmann"[], "CDRiemann"[-1, -1, -1, -1, -1] 
};


Print[ xAct`xCore`Private`bars ]


Quiet@DefTensor[ Vg[-\[ScriptA],-\[ScriptB]], \[ScriptCapitalM], Symmetric[{-\[ScriptA],-\[ScriptB]}], PrintAs -> "\[LeftDoubleBracket]\!\(\*UnderscriptBox[\(V\), \((g)\)]\)\[RightDoubleBracket]" ]


AllComponentValues[ Vg[{-\[ScriptA],-\[ScriptCapitalB]},{-\[ScriptB],-\[ScriptCapitalB]}],
	Module[ { \[ScriptC], d = DimOfManifold[\[ScriptCapitalM]] },
		\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(n = 0\), \(d - 1\)]\(
\*SuperscriptBox[\((\(-1\))\), \(n\)]\ \[Beta][n]\ g\[CloverLeaf][\(-\[ScriptA]\), \(-\[ScriptC]\)]\ \[ScriptCapitalY][S[\[ScriptC], \(-\[ScriptB]\)], n]\)\)
	] // ToBasis[\[ScriptCapitalB]] // ToBasis[\[ScriptCapitalB]] // TraceBasisDummy // ComponentArray // ToValues // Simplify
];


Quiet@DefTensor[ Vf[-\[ScriptA],-\[ScriptB]], \[ScriptCapitalM], Symmetric[{-\[ScriptA],-\[ScriptB]}], PrintAs -> "\[LeftDoubleBracket]\!\(\*UnderscriptBox[\(V\), \((\*
StyleBox[\"f\",\nFontColor->RGBColor[1, 0, 1]])\)]\)\[RightDoubleBracket]" ]


AllComponentValues[ Vf[{-\[ScriptA],-\[ScriptCapitalB]},{-\[ScriptB],-\[ScriptCapitalB]}],
	Module[{ \[ScriptC], d = DimOfManifold[\[ScriptCapitalM]] },
		\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(n = 0\), \(d - 1\)]\(
\*SuperscriptBox[\((\(-1\))\), \(n\)]\ \[Beta][d - n]\ f\[CloverLeaf][\(-\[ScriptA]\), \(-\[ScriptC]\)]\ \[ScriptCapitalY][iS[\[ScriptC], \(-\[ScriptB]\)], n]\)\)
	] // ToBasis[\[ScriptCapitalB]] // ToBasis[\[ScriptCapitalB]] // TraceBasisDummy // ComponentArray // ToValues // Simplify
];


Print[ xAct`xCore`Private`bars ]


nbDumpAssumptions[ usedFields_ ] := (
	writeCell[ "Metri g and f", "Subsection" ];
	writeCell[ "Fields used in EoM" ];
	usedFields // printNice // myPrint;
	writeCell[ "Parameter ranges"];
	$Assumptions /. And -> List // Column // myPrint;
)


nbDumpMetric[ name_, g\[CloverLeaf]_, g\[FilledRectangle]_ ]:= (
	writeCell[ "Metric " <> name ];
	g\[CloverLeaf][-\[ScriptA],-\[ScriptB]] // printMatrixComponents[\[ScriptCapitalB]];
	g\[CloverLeaf][\[ScriptA],\[ScriptB]] // printMatrixComponents[\[ScriptCapitalB]];
	{ name <> " = ",({\[DifferentialD]#&/@{Scalars\[ScriptCapitalB]}}.g\[FilledRectangle].Transpose@{\[DifferentialD]#&/@{Scalars\[ScriptCapitalB]}})[[1,1]]} //printNice//Row//myPrint;
)


nbDumpInteractionTerm[] := (
	writeCell[ "Square Root", "Subsection" ];
	A[\[ScriptA],-\[ScriptB]] // printMatrixComponents[\[ScriptCapitalB]];
	S[\[ScriptA],-\[ScriptB]] // printMatrixComponents[\[ScriptCapitalB]];
	iS[\[ScriptA],-\[ScriptB]] // printMatrixComponents[\[ScriptCapitalB]];
	g\[CloverLeaf][-\[ScriptA],-\[ScriptC]] S[\[ScriptC],-\[ScriptB]] // printComponents[\[ScriptCapitalB],MatrixForm];
)


nbDumpGeometryOf[ name_, g\[CloverLeaf]_, ChristoffelCDPD\[ScriptCapitalB]_, RicciScalarCD_, KretschmannCD_, EinsteinCD_ ] := (
	writeCell[ "The geometry of " <> name, "Subsection" ];
	writeCell[ "Christoffel Symbols for " <> name ];
	ChristoffelCDPD\[ScriptCapitalB][\[ScriptA], -\[ScriptB], -\[ScriptC]] // printNonZeroComponents[\[ScriptCapitalB]];
	writeCell["Ricci Scalar for " <> name ];
	RicciScalarCD[] // printComponents[\[ScriptCapitalB],Expand];
	writeCell["Kretschmann for " <> name ];
	KretschmannCD[] // printComponents[\[ScriptCapitalB],Expand];
	writeCell["Einsten Tensor for " <> name ];
	EinsteinCD[-\[ScriptA],-\[ScriptB]] // printNonZeroComponents[\[ScriptCapitalB],Expand];
	g\[CloverLeaf][\[ScriptA],\[ScriptC]] EinsteinCD[-\[ScriptC],-\[ScriptB]] // printNonZeroComponents[\[ScriptCapitalB],Simplify];
)


nbDumpGeometryOf[ name_, g\[CloverLeaf]_, EinsteinCD_ ] := (
	writeCell[ "The geometry of " <> name, "Subsection" ];
	EinsteinCD[-\[ScriptA],-\[ScriptB]] // printNonZeroComponents[\[ScriptCapitalB],Expand];
	g\[CloverLeaf][\[ScriptA],\[ScriptC]] EinsteinCD[-\[ScriptC],-\[ScriptB]] // printNonZeroComponents[\[ScriptCapitalB],Simplify];
)


nbDumpPotentialFor[ name_, g\[CloverLeaf]_, Vg_ ] := (
	writeCell[ "The potential for " <> name, "Subsection" ];
		g\[CloverLeaf][\[ScriptA],\[ScriptC]]Vg[-\[ScriptC],-\[ScriptB]]// printNonZeroComponents[\[ScriptCapitalB],Simplify];
)


texDumpAssumptions[ usedFields_ ] := log /@ {
	"% ---------------------------------------------------",
	"\\section*{Configuration}",
	"\\begin{description}",
	"\\item [{Chart:}] \\ \\{" <>
		StringRiffle[ texNice[#,"$","$"]& /@ {Scalars\[ScriptCapitalB]}, ", " ] <>
		"\\}",
	"% ---------------------------------------------------",
	"\\item [{Fields:}] \\ " <> 
	StringRiffle[ texNice[#,"$",""] <> 
		(StringRiffle[ texNice[#,"(",")$"]& /@ {\[CapitalPhi]ield}, "," ]) & /@ 
		usedFields, ", " ],
	"% ---------------------------------------------------",
	"\\item [{Parameter range:}] \\ ",
	StringRiffle[ texNice[#,"$","$"]& /@ ($Assumptions /. And -> List), ",\\ \\ " ],
	"\\end{description}",
	""
}


texDumpMetric[ name_, g\[CloverLeaf]_, g\[FilledRectangle]_ ]:= log /@ {
	"% ---------------------------------------------------",
	"\\subsubsection*{Metric $" <> name <> "$:}",
	"\\begin{align}",
	name <> "_{\\mu\\nu} &= ",
	g\[CloverLeaf][-\[ScriptA],-\[ScriptB]]// texMatrixInBasis[\[ScriptCapitalB],Simplify],
	"\\!,\\quad " <> name <> "^{\\mu\\nu} = ",
	g\[CloverLeaf][\[ScriptA],\[ScriptB]]// texMatrixInBasis[\[ScriptCapitalB],Simplify],
	"\\!,\\end{align}",
	"% ---------------------------------------------------",
	"\\begin{align}",
	name <> " &= ",
	({\[DifferentialD]#&/@{Scalars\[ScriptCapitalB]}}.g\[FilledRectangle].Transpose@{\[DifferentialD]#&/@{Scalars\[ScriptCapitalB]}})[[1,1]]//texNice,
	"\\end{align}"
}


texDumpMetric[ name_, g\[FilledRectangle]_ ]:= log /@ {
	"% ---------------------------------------------------",
	"\\subsubsection*{Metric $" <> name <> "$:}",
	"\\begin{align}",
	name <> "_{\\mu\\nu} &= ",
	g\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
	"\\!,\\quad " <> name <> "^{\\mu\\nu} = ",
	Inverse@g\[FilledRectangle] // redefineFields // Simplify // texNiceMatrix,
	"\\!,\\end{align}",
	"% ---------------------------------------------------",
	"\\begin{align}",
	name <> " &= ",
	({\[DifferentialD]#&/@{Scalars\[ScriptCapitalB]}}.g\[FilledRectangle].Transpose@{\[DifferentialD]#&/@{Scalars\[ScriptCapitalB]}})[[1,1]] // texNice,
	"\\end{align}"
}


texDumpInteractionTerm[] := log /@ {
	"% ---------------------------------------------------",
	"\\section*{Interaction Term}",
	"\\subsubsection*{Square Root $S$, where $S^2 = A := g^{-1}f$}",
	"\\begin{align}",
	"S^{\\mu}{}_{\\nu} &= ",
	S[\[ScriptA],-\[ScriptB]] // texMatrixInBasis[\[ScriptCapitalB],Simplify],
	"\!,\\quad (S^{-1})^{\\nu}{}_{\\mu} = ",
	iS[\[ScriptA],-\[ScriptB]] // texMatrixInBasis[\[ScriptCapitalB],Simplify],
	"\\!,\\end{align}",
	"% ---------------------------------------------------",
	"\\begin{align}",
	"A^{\\mu}{}_{\\nu} &= ",
	A[\[ScriptA],-\[ScriptB]] // texMatrixInBasis[\[ScriptCapitalB],Simplify],
	"\\!,\\quad h_{\\mu\\nu} = g_{\\mu\\rho} S^{\\rho}{}_{\\nu} = ",
	g\[CloverLeaf][-\[ScriptA],-\[ScriptC]] S[\[ScriptC],-\[ScriptB]] // texMatrixInBasis[\[ScriptCapitalB],Simplify],
	"\\end{align}"
}


texDumpGeometryOf[ name_, g\[CloverLeaf]_, ChristoffelCDPD\[ScriptCapitalB]_, RicciScalarCD_, KretschmannCD_, EinsteinCD_ ] := log /@ {
	"% ---------------------------------------------------",
	"\\section*{The Geometry of $" <> name <> "$}",
	"\\subsubsection*{Christoffel Symbols}" ,
	"\\begin{align}",
	ChristoffelCDPD\[ScriptCapitalB][\[ScriptA], -\[ScriptB], -\[ScriptC]] // texNonZeroComponents[\[ScriptCapitalB],Expand],
	"\\end{align}",
	"% ---------------------------------------------------",
	"\\subsubsection*{Ricci Scalar}",
	"\\begin{align} R[\\nabla_" <> name <> "] &= ",
	RicciScalarCD[] // texInBasis[\[ScriptCapitalB],Expand] // myTexBreak,
	"\\end{align}",
	"% ---------------------------------------------------",
	"\\subsubsection*{Kretschmann Scalar}",
	"\\begin{align} K[\\nabla_" <> name <> "] &= ",
	KretschmannCD[] // texInBasis[\[ScriptCapitalB],Expand] // myTexBreak,
	"\\end{align}",
	"% ---------------------------------------------------",
	"\\subsubsection*{Einsten Tensor}",
	"\\begin{align}",
	EinsteinCD[-\[ScriptA],-\[ScriptB]] // texNonZeroComponents[\[ScriptCapitalB],Expand],
	"\\end{align}",
	"\\begin{align}",
	g\[CloverLeaf][\[ScriptA],\[ScriptC]] EinsteinCD[-\[ScriptC],-\[ScriptB]] // texNonZeroComponents[\[ScriptCapitalB],Expand],
	"\\end{align}"
}
