# jv-pandoc-filters

Deze repo bevat allemaal handige filter voor Pandoc. De filters zijn
geschreven in Lua. Lua is embedded in Pandoc
<https://pandoc.org/lua-filters.html> dus geen extra onderdelen nodig.

## Filters

### jv-add-date

Voegt een `date` toe aan de meta values als die niet is gedefinieerd.
Dit is handig als je bijv. de datum (en tijd) op moment van creëren wil
toevoegen aan een document. Bij PDF gebruik je dan vaak de Latex-macro
*`\today`*, maar bij html-output is die er niet. Het opmaakformaat van
de datum en tijd is te specificeren middels de meta-value
`jv-dateformat`. Het formaat volgt de specificatien van Lua
[`os.date()`](https://www.lua.org/manual/5.3/manual.html#pdf-os.date),
maar iets duidelijker staat het bij de C-functie
[strftime](https://cplusplus.com/reference/ctime/strftime/#parameters).
De plugin is gebaseerd op
<https://pandoc.org/lua-filters.html#setting-the-date-in-the-metadata>.

Voorbeelden:

In het document zelf

    ---
    author:
    - Jorg
    jv-dateformat: "%d %B %G"
    title: voorbeeld md
    ---

Aanroepen van pandoc:

    pandoc input.md --lua-filter=jv-add-date.lua -o output.pdf

of het formaat via de commandline meegeven:

    pandoc input.md \
        --output=output.pdf \
        --lua-filter=jv-add-date.lua \
        --metadata=jv-dateformat:"%d %B %G"
