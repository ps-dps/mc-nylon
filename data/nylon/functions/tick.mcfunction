schedule function nylon:tick 1t replace
execute store result score .gametime nylon.blocked_until run time query gametime
execute as @a[scores={nylon.charge=1..}] run function nylon:check
