*! Version v0.0.1 21juin2025 Ibrahima Tall
capture drop systemic.ado
program define systemic, rclass byable(recall)
version 14
syntax anything(id="taille population") [, replace generate(varname)]
tempname narg
local narg: word count `anything'
if `narg' != 1 {
    display "{error: Précisez la taille de l'échantillon}"
    exit 201
}
if "`replace'" != "" & "`generate'" != "" {
    display "{error: Choisissez entre {bf: replace} et {bf: generate}}"
    exit 202
}    
