---
author:
- jorgje
jv-remove-divs:
- answer
- docent
title: JV Remove divs example
---

Run:

    pandoc jv-remove-divs.md -o jv-remove-divs_output.md \
           --standalone \
           --lua-filter=jv-remove-divs.lua \
           --metadata=jv-remove-divs:docent \
           --metadata=jv-remove-divs:answer

::: {.question .purt}
Hier staat de eerste vraag. 
:::

::: answer
hier staat het antwoord op de eerste vraag
:::

::: question
Dit is de tweede vraag.
:::

::: {.answer .bonus}
dit is het antwoord op de tweede vraag
:::

::: docent
hier staan docentnotities.
:::
