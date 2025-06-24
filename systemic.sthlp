{smcl}
{* *!Version v0.0.1 21juin2025 Ibrahima Tall}
{cmd:help systemic}
{hline}

{title:Titre}

{p2colset 5 18 18 2}{...}
{p2col :{hi:systemic} {hline 2}}Tirage systématique d'un échantillon dans une population. {p_end}
{p2colreset}{...}

{title:Syntax}

{pstd} {cmd:systemic} {it:#taille} [{cmd:,} {cmd:generate}{cmd:(}{it:variable}{cmd:)}]

{p 4 6 2} Cette commande ne doit pas être combinée avec {cmd:by()}.{p_end}

{title:Description}

{pstd}{cmd:systemic}: réalise un tirage aléatoire d'un échantillon dont la {it:taille} est précisée.{break}
Les unités séléctionnées, sont identifiées au moyen d'une {it:variable} avec l'option {it:generate()}.{break}
