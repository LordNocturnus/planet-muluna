local function technology_icon_constant_planet(technology_icon,icon_size)
    local icons =
    {
      {
        icon = technology_icon,
        icon_size = 1482,
      },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-planet.png",
        icon_size = 128,
        scale = 0.5,
        shift = {50, 50}
      }
    }
    return icons
  end

data:extend{
    -- {
    --     type = "technology",
    --     name = "planet-discovery-muluna",
    --     unit= {
    --         count = 500,
    --         time = 60,
    --         ingredients = data.raw["technology"]["rocket-silo"].unit.ingredients
    --     },
    --     prerequisites = {
    --         "space-science-pack"
    --     },
    --     effects = {
    --         {
    --             type = "unlock-space-location",
    --             space_location = "muluna"
    --         }
    --     },
        
    -- },
    {
        type = "technology",
        name = "asteroid-collector",
        localised_name = {"entity-name.asteroid-collector"},
        localised_description = {"entity-description.asteroid-collector"},
        unit= {
            count = 300,
            time = 60,
            ingredients = data.raw["technology"]["planet-discovery-vulcanus"].unit.ingredients
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "asteroid-collector"
            }
        },
        prerequisites = {
            "space-science-pack"
        },
        icon = "__planet-muluna__/graphics/technology/asteroid-collector(ai-upscaled).png",
        icon_size=256,
    },
    -- {
    --     type = "technology",
    --     name = "cargo-bay",
    --     localised_name = {"entity-name.cargo-bay"},
    --     unit = {
    --         count = 100,
    --         time = 60,
    --         ingredients = data.raw["technology"]["planet-discovery-vulcanus"].unit.ingredients
    --     },
    --     effects = {
    --         {
    --             type = "unlock-recipe",
    --             recipe = "cargo-bay"
    --         }
    --     },
    --     prerequisites = {
    --         "space-science-pack"
    --     },
    --     icon = data.raw["item"]["cargo-bay"].icon
    -- },
    {
        type = "technology",
        name = "crusher",
        research_trigger = {
            type = "mine-entity",
            entity = "metallic-asteroid-chunk"
        },
        localised_name = {"item-name.crusher"},
        localised_description = {"entity-description.crusher"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crusher"
            },
            {
                type = "unlock-recipe",
                recipe = "metallic-asteroid-crushing"
            },
            
            
            
            
        },
        prerequisites = {
             "planet-discovery-muluna"
        },
        icons = {
            {
                icon = "__planet-muluna__/graphics/technology/comminution.png",
                icon_size = 968,
            },  
        }
    },
    {
        type = "technology",
        name = "advanced-stone-processing",
        unit= {
            count = 500,
            time = 30,
            ingredients = table.deepcopy(data.raw["technology"]["coal-liquefaction"].unit.ingredients)
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "stone-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "landfill-stone-crushed"
            },
            {
                type = "unlock-recipe",
                recipe = "stone-bricks-stone-crushed"
            },
        },
        icons = {
            {
                icon = "__planet-muluna__/graphics/technology/comminution.png",
                icon_size = 968,
            },  
            {
                icon = data.raw["item"]["stone"].icon,
                icon_size=data.raw["item"]["stone"].icon_size,
                --scale=0.3,
                shift = {45,45},
                scale=0.75,
            },
            
        },
        prerequisites = {
            "metallurgic-science-pack"
        },
    },
    {
        type = "technology",
        name = "advanced-boiler",
        research_trigger = {
            type = "mine-entity",
            entity = "oxide-asteroid-chunk"
        },
        localised_name = {"entity-name.advanced-boiler"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-boiler"
            },
            {
                type = "unlock-recipe",
                recipe = "oxide-asteroid-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "ice-melting"
            },
            {
                type = "unlock-recipe",
                recipe = "maraxsis-atmosphere"
            },
            {
                type = "unlock-recipe",
                recipe = "atmosphere-oxygen-separation"
            },
            {
                type = "unlock-recipe",
                recipe = "advanced-water-boiling"
            },
            {
                type = "unlock-recipe",
                recipe = "advanced-water-boiling-atmosphere"
            },
            {
                type = "unlock-recipe",
                recipe = "carbon-dioxide-venting"
            },
            {
                type = "unlock-recipe",
                recipe = "hydrogen-venting"
            },
            {
                type = "unlock-recipe",
                recipe = "oxygen-venting"
            },
            {
                type = "unlock-recipe",
                recipe="muluna-electrolysis"
            },
            {
                type = "unlock-recipe",
                recipe="advanced-water-melting-atmosphere"
            },
            {
                type = "unlock-recipe",
                recipe="advanced-water-melting-oxygen"
            },
        },
        prerequisites = {
            "crusher"
        },
        icon = data.raw["technology"]["steam-power"].icon,
        icon_size = data.raw["technology"]["steam-power"].icon_size,
    },
    {
        type = "technology",
        name = "anorthite-processing",
        research_trigger = {
            type = "mine-entity",
            entity = "anorthite-chunk"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "anorthite-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "alumina-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "rocket-fuel-aluminum"
            },
            {
                type = "unlock-recipe",
                recipe = "aluminum-plate"
            },
            {
                type = "unlock-recipe",
                recipe = "aluminum-cable",
            },
            {
                type = "unlock-recipe",
                recipe = "low-density-structure-from-aluminum",
            },
            -- {
            --     type = "unlock-recipe",
            --     recipe = "electronic-circuit-aluminum",
            -- },
            -- {
            --     type = "unlock-recipe",
            --     recipe = "advanced-circuit-aluminum",
            -- },
        },
        prerequisites = {
            "crusher"
        },
        icons = {
            {
                icon = "__planet-muluna__/graphics/technology/comminution.png",
                icon_size = 968,
            },  
            {
                icon = "__planet-muluna__/graphics/icons/anorthite-chunk.png",
                icon_size=64,
                --scale=0.3,
                shift = {45,45},
                scale=0.75,
            },
            
        }
    },
    {
        type = "technology",
        name = "planet-discovery-muluna",
        research_trigger = {
            type = "build-entity",
            entity = "thruster"
        },
        effects = {
            {
                type = "unlock-space-location",
                space_location = "muluna"
            }
        },
        prerequisites = {
            "space-platform-thruster"
        },
        icons = {
            {
                icon = "__planet-muluna__/graphics/technology/planet-technology.png",
                icon_size = 256,
                shift = {0,10},
            },
            table.unpack(PlanetsLib.technology_icons_moon("__planet-muluna__/graphics/moon-icon.png",1482))
            },
        localised_description={"space-location-description.muluna"},
        -- icons = {
        --     {
        --         icon = data.raw["planet"]["muluna"].icon,
        --         icon_size = data.raw["planet"]["muluna"].icon_size,
        --     }
        -- }
        
    },
    {
        type = "technology",
        name = "cryolab",
        localised_name = {"entity-name.cryolab"},
        --localised_description = {"entity-description.asteroid-collector"},
        unit= {
            count = 5000,
            time = 60,
            ingredients = --Normally, I would base these costs on vanilla technologies to increase tolerance of other mods, but since this tech is intended to 
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1},
                    {"agricultural-science-pack", 1},
                    {"electromagnetic-science-pack", 1},
                    {"cryogenic-science-pack", 1},
                    {"interstellar-science-pack",1}
              },
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "cryolab"
            }
        },
        prerequisites = {
            "biolab","quantum-processor","helium-enrichment"
        },
        icons = {
            {
                icon = "__planet-muluna__/graphics/photometric-lab/photometric-lab-icon-big.png",
                icon_size = 640
                --icon=data.raw["technology"]["biolab"].icon,
                --icon_size=data.raw["technology"]["biolab"].icon_size,
                --tint = {r=0.7,g=0.7,b=1}
            },
        }
        --icon = "__planet-muluna__/graphics/technology/asteroid-collector(ai-upscaled).png",
        --icon_size=256,
    },
    {
        type = "technology",
        name = "helium-enrichment",
        --localised_name = {"entity-name.cryolab"},
        --localised_description = {"entity-description.asteroid-collector"},
        unit= {
            count = 500,
            time = 60,
            ingredients = --Normally, I would base these costs on vanilla technologies to increase tolerance of other mods, but since this tech is intended to 
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1},
                    {"agricultural-science-pack", 1},
                    {"electromagnetic-science-pack", 1},
                    {"cryogenic-science-pack", 1},
                    {"interstellar-science-pack",1}
              },
        },
        effects = {
            -- {
            --     type = "unlock-recipe",
            --     recipe = "interstellar-science-pack-helium-4"
            -- },
            {
                type = "unlock-recipe",
                recipe = "helium-separation"
            },
            {
                type = "unlock-recipe",
                recipe = "kovarex-helium-enrichment"
            },
        },
        prerequisites = {
            "interstellar-science-pack",
            "cryogenic-science-pack"
        },
        icons = {
            {
                icon="__planet-muluna__/graphics/technology/molecule-noble-gas.png",
                icon_size=644,
                tint = {r=0.7,g=0.7,b=1}
            },
        }
        --icon = "__planet-muluna__/graphics/technology/asteroid-collector(ai-upscaled).png",
        --icon_size=256,
    },
    {
        type = "technology",
        name = "thruster-fuel-productivity",
        icons = util.technology_icon_constant_recipe_productivity(data.raw["technology"]["space-platform-thruster"].icon),
        --icons = {
            --{
                --icon= data.raw["technology"]["space-platform-thruster"].icon,
                --icon_size=data.raw["technology"]["space-platform-thruster"].icon_size,
                --tint = {r=0.7,g=0.7,b=1}
            --},
        --},
        max_level = "infinite",
        prerequisites = {"interstellar-science-pack"},
        upgrade = true,
        unit = {
            count_formula = "2000*1.5^(L-1)",
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                --{"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"interstellar-science-pack",1},
            }
        },
        effects = {
            {
                type = "change-recipe-productivity",
                recipe = "thruster-oxidizer",
                change = 0.1,
            },
            {
                type = "change-recipe-productivity",
                recipe = "thruster-fuel",
                change = 0.1,
            },
            {
                type = "change-recipe-productivity",
                recipe = "advanced-thruster-oxidizer",
                change = 0.1,
            },
            {
                type = "change-recipe-productivity",
                recipe = "advanced-thruster-fuel",
                change = 0.1,
            },
            {
                type = "change-recipe-productivity",
                recipe = "thruster-fuel-from-rocket-fuel",
                change = 0.1,
            },
        },
    },
    {
        type = "technology",
        name = "advanced-space-science-pack",
        prerequisites = {"interstellar-science-pack"},
        icons = {
            {
                icon = data.raw["technology"]["space-science-pack"].icon,
                icon_size = data.raw["technology"]["space-science-pack"].icon_size,
            },
            {
                icon = data.raw["item"]["asteroid-collector"].icon,
                icon_size = data.raw["item"]["asteroid-collector"].icon_size,
                shift = {36,-36},
                scale = 0.75,
            },
        },
        unit = {
            count = 300,
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                --{"utility-science-pack", 1},
                --{"space-science-pack", 1},
                {"interstellar-science-pack",1},
            }
        },

        effects = {
            {
                type = "unlock-recipe",
                recipe = "space-science-pack-advanced"
            }
        }
    },

    {
        type = "technology",
        name = "crusher-2",
        unit = {
            count = 500,
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"interstellar-science-pack",1},
            }
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe="crusher-2"
            }
        },
        prerequisites = {
            "interstellar-science-pack", "crusher"
        },
        icons = {
            {
                icon = "__planet-muluna__/graphics/technology/comminution.png",
                icon_size = 968,
            },  
            {
                icon = data.raw["item"]["uranium-ore"].icon,
                icon_size=data.raw["item"]["uranium-ore"].icon_size,
                --scale=0.3,
                shift = {45,45},
                scale=0.75,
            },
            
        },
        localised_name={"",{"item-name.crusher"}," 2"},
        --localised_description={"space-location-description.muluna"},
        -- icons = {
        --     {
        --         icon = data.raw["planet"]["muluna"].icon,
        --         icon_size = data.raw["planet"]["muluna"].icon_size,
        --     }
        -- }
        
    },
    {
        type = "technology",
        name = "greenhouses",
        icon = "__planet-muluna__/graphics/greenhouse/sprites/greenhouse-icon-big.png",--data.raw["technology"]["tree-seeding"].icon,
        icon_size = 640,--data.raw["technology"]["tree-seeding"].icon_size,
        research_trigger = {
            type = "mine-entity",
            entity = "carbonic-asteroid-chunk"
        },
        prerequisites = {
            "crusher"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "carbonic-asteroid-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "electric-engine-unit-from-carbon"
            },
            {
                type = "unlock-recipe",
                recipe="controlled-combustion"
            },
            {
                type = "unlock-recipe",
                recipe="muluna-electrolysis"
            },
            -- {
            --     type = "unlock-recipe",
            --     recipe="cellulose"
            -- },
            {
                type = "unlock-recipe",
                recipe="muluna-tree-growth-greenhouse"
            },
            {
                type = "unlock-recipe",
                recipe="muluna-tree-growth-greenhouse-water-saving"
            },
            {
                type = "unlock-recipe",
                recipe="muluna-tree-growth-greenhouse-quick"
            },
            {
                type = "unlock-recipe",
                recipe="wood-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "muluna-greenhouse",
            },
            {
                type = "unlock-recipe",
                recipe = "muluna-greenhouse-wood",
            },
            -- {
            --     type = "unlock-recipe",
            --     recipe = "muluna-tree-growth-greenhouse-11x11"
            -- }

        },
        
    },
    {
        type = "technology",
        name = "space-chest",
        localised_name = {"entity-name.space-chest"},
        icon = "__planet-muluna__/graphics/technology/packaging.png",
        icon_size = 1024,
        unit = {
            count = 500,
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                --{"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"interstellar-science-pack",1},
            }
        },
        prerequisites = {
            "interstellar-science-pack",
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe="space-chest"
            },
        }
    },
    
    -- {
    --     type = "technology",
    --     name = "wood-liquifaction",
    --     unit = {
    --                 count = 100,
    --                 time = 60,
    --                 ingredients = {
    --                     --{"automation-science-pack", 1},
    --                     --{"logistic-science-pack", 1},
    --                     --{"chemical-science-pack", 1},
    --                     --{"production-science-pack", 1},
    --                     --{"utility-science-pack", 1},
    --                     {"space-science-pack", 1},
    --                     --{"agricultural-science-pack", 1},
    --                     --{"interstellar-science-pack",1},
    --                 }
    --             },
    --     prerequisites = {
    --         "space-science-pack"
    --     },
    --     effects = {
    --         {
    --             type = "unlock-recipe",
    --             recipe="wood-crushing"
    --         },
    --         {
    --             type = "unlock-recipe",
    --             recipe="cellulose"
    --         },
    --         -- {
    --         --     type = "unlock-recipe",
    --         --     recipe="heavy-oil-cellulose"
    --         -- },

    --     },
    -- }
    
    -- {
    --     type = "technology",
    --     name = "advanced-space-platform-foundation",
    --     unit = {
    --         count = 500,
    --         time = 60,
    --         ingredients = {
    --             {"automation-science-pack", 1},
    --             {"logistic-science-pack", 1},
    --             {"chemical-science-pack", 1},
    --             {"production-science-pack", 1},
    --             {"utility-science-pack", 1},
    --             {"space-science-pack", 1},
    --             {"agricultural-science-pack", 1},
    --             {"interstellar-science-pack",1},
    --         }
    --     },
    --     effects = {
    --         {
    --             type = "unlock-recipe",
    --             recipe="advanced-space-platform-foundation"
    --         }
    --     },
    --     prerequisites = {
    --         "interstellar-science-pack"
    --     },
    --     icon = data.raw["technology"]["space-platform"].icon,
    --     icon_size = data.raw["technology"]["space-platform"].icon_size,
    -- }

}

if not data.raw["technology"]["biolab"] then
    data.raw["technology"]["cryolab"] = nil
  end


