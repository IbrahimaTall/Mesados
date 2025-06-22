*! Version v0.0.1 21juin2025 Ibrahima Tall
capture drop systemic.ado
program define systemic, rclass byable(recall)
version 14
syntax anything(id="taille population") [, generate(string)]
tempname i j pas premier tt
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
local `pas' = ceil(``tt'' / `anything')
local `premier' = ceil(runiform() * ``pas'')
if "`generate'" != "" {
	quietly generate `generate' = mod(_n - ``premier'', ``pas'') == 0
}
else {
	keep if mod(_n - ``premier'', ``pas'') == 0
}
return scalar pas = ``pas''
end
