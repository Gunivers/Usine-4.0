# NAME: Item Break Fixer
# PATH: glib:utils/durability_modifier/child/fix_break

# AUTHOR: Syl2010

# CHILD OF: glib:utils/durability_modifier/apply_damage

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - Damaging item hold in hand (item)

# NOTE:
# Break the item hold in hand if his durability reach 0 or less

# PARAMETERS

#__________________________________________________
# INIT:
scoreboard objectives add Var5 dummy
scoreboard players set @s Var5 0

# CODE:

execute store result score @s Var5 run data get entity @s SelectedItem.tag.Damage

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe" }},scores={Var5=59..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"  }},scores={Var5=131..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe" }},scores={Var5=32..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"   }},scores={Var5=250..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}},scores={Var5=1561..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel" }},scores={Var5=59..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"  }},scores={Var5=131..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel" }},scores={Var5=32..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"   }},scores={Var5=250..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}},scores={Var5=1561..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe" }},scores={Var5=59..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"  }},scores={Var5=131..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe" }},scores={Var5=32..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"   }},scores={Var5=250..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={Var5=1561..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe" }},scores={Var5=59..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"  }},scores={Var5=131..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe" }},scores={Var5=32..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"   }},scores={Var5=250..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={Var5=1561..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword" }},scores={Var5=59..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"  }},scores={Var5=131..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword" }},scores={Var5=32..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"   }},scores={Var5=250..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}},scores={Var5=1561..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"    }},scores={Var5=55..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}},scores={Var5=80..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"  }},scores={Var5=75..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots"     }},scores={Var5=65..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"    }},scores={Var5=165..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}},scores={Var5=240..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"  }},scores={Var5=225..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"     }},scores={Var5=195..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"    }},scores={Var5=77..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}},scores={Var5=112..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings"  }},scores={Var5=105..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots"     }},scores={Var5=91..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"    }},scores={Var5=165..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}},scores={Var5=240..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"  }},scores={Var5=225..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots"     }},scores={Var5=195..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"    }},scores={Var5=363..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}},scores={Var5=528..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"  }},scores={Var5=495..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"     }},scores={Var5=429..}] run tag @s add BreakItem

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"            }},scores={Var5=384..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"        }},scores={Var5=250..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"    }},scores={Var5=64..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}},scores={Var5=64..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"         }},scores={Var5=238..}] run tag @s add BreakItem
execute if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"  }},scores={Var5=275..}] run tag @s add BreakItem


execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe" }},tag=BreakItem] anchored eyes run particle minecraft:item wooden_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"  }},tag=BreakItem] anchored eyes run particle minecraft:item stone_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe" }},tag=BreakItem] anchored eyes run particle minecraft:item golden_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"   }},tag=BreakItem] anchored eyes run particle minecraft:item iron_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}},tag=BreakItem] anchored eyes run particle minecraft:item diamond_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel" }},tag=BreakItem] anchored eyes run particle minecraft:item wooden_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"  }},tag=BreakItem] anchored eyes run particle minecraft:item stone_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel" }},tag=BreakItem] anchored eyes run particle minecraft:item golden_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"   }},tag=BreakItem] anchored eyes run particle minecraft:item iron_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}},tag=BreakItem] anchored eyes run particle minecraft:item diamond_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe" }},tag=BreakItem] anchored eyes run particle minecraft:item wooden_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"  }},tag=BreakItem] anchored eyes run particle minecraft:item stone_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe" }},tag=BreakItem] anchored eyes run particle minecraft:item golden_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"   }},tag=BreakItem] anchored eyes run particle minecraft:item iron_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},tag=BreakItem] anchored eyes run particle minecraft:item diamond_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe" }},tag=BreakItem] anchored eyes run particle minecraft:item wooden_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"  }},tag=BreakItem] anchored eyes run particle minecraft:item stone_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe" }},tag=BreakItem] anchored eyes run particle minecraft:item golden_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"   }},tag=BreakItem] anchored eyes run particle minecraft:item iron_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},tag=BreakItem] anchored eyes run particle minecraft:item diamond_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword" }},tag=BreakItem] anchored eyes run particle minecraft:item wooden_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"  }},tag=BreakItem] anchored eyes run particle minecraft:item stone_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword" }},tag=BreakItem] anchored eyes run particle minecraft:item golden_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"   }},tag=BreakItem] anchored eyes run particle minecraft:item iron_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}},tag=BreakItem] anchored eyes run particle minecraft:item diamond_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"    }},tag=BreakItem] anchored eyes run particle minecraft:item leather_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}},tag=BreakItem] anchored eyes run particle minecraft:item leather_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"  }},tag=BreakItem] anchored eyes run particle minecraft:item leather_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots"     }},tag=BreakItem] anchored eyes run particle minecraft:item leather_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"    }},tag=BreakItem] anchored eyes run particle minecraft:item chainmail_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}},tag=BreakItem] anchored eyes run particle minecraft:item chainmail_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"  }},tag=BreakItem] anchored eyes run particle minecraft:item chainmail_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"     }},tag=BreakItem] anchored eyes run particle minecraft:item chainmail_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"    }},tag=BreakItem] anchored eyes run particle minecraft:item golden_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}},tag=BreakItem] anchored eyes run particle minecraft:item golden_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings"  }},tag=BreakItem] anchored eyes run particle minecraft:item golden_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots"     }},tag=BreakItem] anchored eyes run particle minecraft:item golden_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"    }},tag=BreakItem] anchored eyes run particle minecraft:item iron_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}},tag=BreakItem] anchored eyes run particle minecraft:item iron_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"  }},tag=BreakItem] anchored eyes run particle minecraft:item iron_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots"     }},tag=BreakItem] anchored eyes run particle minecraft:item iron_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"    }},tag=BreakItem] anchored eyes run particle minecraft:item diamond_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}},tag=BreakItem] anchored eyes run particle minecraft:item diamond_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"  }},tag=BreakItem] anchored eyes run particle minecraft:item diamond_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"     }},tag=BreakItem] anchored eyes run particle minecraft:item diamond_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"            }},tag=BreakItem] anchored eyes run particle minecraft:item bow ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"        }},tag=BreakItem] anchored eyes run particle minecraft:item trident ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"    }},tag=BreakItem] anchored eyes run particle minecraft:item fishing_rod ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}},tag=BreakItem] anchored eyes run particle minecraft:item flint_and_steel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"         }},tag=BreakItem] anchored eyes run particle minecraft:item shears ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"  }},tag=BreakItem] anchored eyes run particle minecraft:item turtle_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s


execute if entity @s[tag=BreakItem] run replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=BreakItem] run playsound minecraft:item.shield.break player @a ~ ~ ~
tag @s[tag=BreakItem] remove BreakItem
scoreboard players reset @s Var5
