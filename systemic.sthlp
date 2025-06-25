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
Lorsque cette option n'est pas précisée, la base est remplée par l'échantillon tiré.

{title:Options}

{dlgtab:Main}

{phang}{it:#taille}: indique la taille de l'échantillon. C'est un nombre entier non nul. {p_end}
{phang}{opt generate(variable)}: permet d'identifier les unités séléctionnées par 1 et celles non tirées par 0.

{synoptline}

{title:Example}

{phang}{stata "sysuse auto":sysuse auto}{p_end}
{phang}{stata "systemic 10, generate(selected)":systemic 10, generate(choix)}{p_end}
{phang}{stata "tabulate selected" :tabulate selected}{p_end}

{title:Author}

{phang}Ibrahima Tall, Ingénieur statisticien économiste (ISE){break}
datasciences4ise@gmail.com {break}
Voir la page {browse "https://www.linkedin.com/in/statnengineer/":linkdin} de Ibrahima Tall. {p_end}

{title:Voir Aussi}

{psee}
Les commandes {manhelp sample R} et {search gsample: gsample}.
{p_end}
