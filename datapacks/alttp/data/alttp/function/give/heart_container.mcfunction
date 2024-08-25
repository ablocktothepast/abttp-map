scoreboard players add @s extrahearts 1
function alttp:extrahealth_apply
tellraw @s ["","You got a ",{"text":"heart container","color":"red"},"! Your maximum HP was increased."]