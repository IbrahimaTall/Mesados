* *! Version V0.1 27Juin2025 Ibrahima Tall
capture program drop twosamp.ado
program define twosamp, rclass
version 14.0
syntax anything(Id="Taille échantillon"), ONEstage(string) idone(varname) [GENerate(string) TWOstage(string) idtwo(varname)]
