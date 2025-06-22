*! Version v0.0.1 21juin2025 Ibrahima Tall
capture drop systemic.ado
program define systemic, rclass byable(recall)
version 14
syntax anything(id="taille population") [, replace generate(string)]
tempname i j pas premier taille
local `i': word count `anything'
local `j': word count `generate'
if `narg' != 1 {
    display "{error: Précisez la taille de l'échantillon}"
    exit 201
}
if "`replace'" != "" & "`generate'" != "" {
    display "{error: Choisissez entre {bf: replace} et {bf: generate}}"
    exit 202
}    
