*! Version v0.0.1 21juin2025 Ibrahima Tall
capture drop systemic.ado
program define systemic, rclass byable(recall)
version 14
syntax anything(id="taille population") [, generate(string)]
tempname i j pas premier tt
tempvar Un Cum
local `i': word count `anything'
local `j': word count `generate'
if ``i'' != 1 | ``j'' > 1 {
	display "{error: Mauvaise spécification voir {help systemic:l'aide de systemic}}"
	exit 201
}
capture confirm number `anything'
if _rc {
	display "{error: La taille doit être en entier}"
	exit 202
}
local `tt' = _N
if ``tt'' == 0 | `anything' == 0 {
	display "{error: Impossible de faire le tirage}"
	exit 203
}
local `pas' = round(``tt'' / `anything', 1)
local `premier' = round(runiform() * ``pas'', 1)
if ``pas'' == 0 {
	display "{error: Taille incorrecte}"
	exit 204
}
generate `Un' = mod(_n - ``premier'', ``pas'') == 0
generate `Cum' = sum(`Un')
if "`generate'" != "" {
	quietly generate `generate' = `Un' & `Cum' <= `anything'
}
else {
	keep if `Un' & `Cum' <= `anything'
}
return scalar pas = ``pas''
end
