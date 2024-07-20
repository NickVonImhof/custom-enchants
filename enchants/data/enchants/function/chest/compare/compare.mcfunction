# reset new stores
function enchants:chest/compare/macro/removenew with storage storage

# store new items now that inventory has changed.
function enchants:chest/compare/macro/modifynew with storage storage

# run compare function for having both.
execute if entity @s[scores={success1=1,success2=1}] run function enchants:chest/compare/compareboth with storage storage

# run compare function for mainhand no offhand.
execute if entity @s[scores={success1=0,success2=1}] run function enchants:chest/compare/comparemain with storage storage

# run compare function for offhand no mainhand.
#execute if entity @s[scores={success1=1,success2=0}] run function enchants:chest/compare/compareoff with storage storage