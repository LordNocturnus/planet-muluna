local dual_icon = require("lib.dual-item-icon").dual_icon


local function generate_void_icons(fluid_icons)
    local icons = fluid_icons
    if not icons then return end

    icons = table.deepcopy(icons)
    table.insert(icons, 1, {
        icon = "__core__/graphics/filter-blacklist.png",
        icon_size = 101,
    })
    return icons
end

table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories , "muluna-greenhouse")
data:extend{
     {
        type="recipe-category",
        name="muluna-greenhouse",
      },
    {
        type = "recipe",
        name = "muluna-tree-growth-greenhouse",
        enabled = false,
        category = "muluna-greenhouse",
        icons = dual_icon("wood","carbon-dioxide"),
        ingredients = {
            {type = "item",name = "tree-seed", amount=10}, --Reminder: 1 tree seed = 2 wood
            {type = "fluid",name = "carbon-dioxide", amount=10000},
            {type = "fluid",name = "water", amount=500},
        },
        results = {
            {type = "item",name = "wood", amount=40},
            {type = "fluid",name = "maraxsis-oxygen", amount=10000,ignored_by_productivity=10000}
        },
        energy_required=5*60,
        subgroup="muluna-products",
        max_productivity = 3,
        allow_productivity = true,
        surface_conditions = {
            {
                property = "temperature",
                max = 314
            }
        }
    },
    {
        type = "recipe",
        name = "muluna-tree-growth-greenhouse-water-saving",
        enabled = false,
        category = "muluna-greenhouse",
        icons = dual_icon("wood","transport-belt"),
        ingredients = {
            {type = "item",name = "tree-seed", amount=10}, --Reminder: 1 tree seed = 2 wood
            {type = "fluid",name = "carbon-dioxide", amount=10000},
            {type = "fluid",name = "water", amount=250},
        },
        results = {
            {type = "item",name = "wood", amount=40},
            {type = "fluid",name = "maraxsis-oxygen", amount=10000,ignored_by_productivity=10000}
        },
        energy_required=10*60,
        subgroup="muluna-products",
        max_productivity = 3,
        allow_productivity = true,
        surface_conditions = {
            {
                property = "temperature",
                max = 314
            }
        }
    },
    {
        type = "recipe",
        name = "muluna-tree-growth-greenhouse-quick",
        enabled = false,
        category = "muluna-greenhouse",
        icons = dual_icon("wood","express-transport-belt"),
        ingredients = {
            {type = "item",name = "tree-seed", amount=10}, --Reminder: 1 tree seed = 2 wood
            {type = "fluid",name = "carbon-dioxide", amount=10000},
            {type = "fluid",name = "water", amount=1000},
        },
        results = {
            {type = "item",name = "wood", amount=40},
            {type = "fluid",name = "maraxsis-oxygen", amount=10000,ignored_by_productivity=10000}
        },
        energy_required=3*60,
        subgroup="muluna-products",
        max_productivity = 3,
        allow_productivity = true,
        surface_conditions = {
            {
                property = "temperature",
                max = 314
            }
        }
    },
    {
        type = "recipe",
        name = "muluna-electrolysis",
        enabled = false,
        icons = dual_icon("maraxsis-oxygen","maraxsis-hydrogen"),
        --icon = "__planet-muluna__/graphics/icons/maraxsis-water.png",
        --icon_size = 64,
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "water", amount=30},
        },
        results = {
            {type = "fluid",name = "maraxsis-oxygen", amount=100},
            {type = "fluid",name = "maraxsis-hydrogen", amount=200}
        },
        energy_required=2,
        subgroup="muluna-products"
    },
    {
        type = "recipe",
        name = "oxygen-venting",
        enabled = false,
        hidden_in_factoriopedia = true,
        icons = generate_void_icons({{icon = "__planet-muluna__/graphics/icons/oxygen.png", icon_size = 64}}),
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "maraxsis-oxygen", amount=54},
        },
        results = {},
        surface_conditions = {
            {
                property = "pressure",
                max = 50,
            }
        },
        energy_required=0.1,
        subgroup="muluna-products"
    },
    {
        type = "recipe",
        name = "carbon-dioxide-venting",
        enabled = false,
        hidden_in_factoriopedia = true,
        icons = generate_void_icons({{icon = "__planet-muluna__/graphics/icons/molecule-carbon-dioxide.png", icon_size = 64}}),
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "carbon-dioxide", amount=54},
        },
        results = {},
        surface_conditions = {
            {
                property = "pressure",
                max = 50,
            }
        },
        energy_required=0.1,
        subgroup="muluna-products"
    },
    {
        type = "recipe",
        name = "hydrogen-venting",
        enabled = false,
        hidden_in_factoriopedia = true,
        icons = generate_void_icons({{icon = "__planet-muluna__/graphics/icons/hydrogen.png", icon_size = 64}}),
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "maraxsis-hydrogen", amount=54},
        },
        results = {},
        surface_conditions = {
            {
                property = "pressure",
                max = 50,
            }
        },
        energy_required=0.1,
        subgroup="muluna-products"
    },
    -- {
    --     type = "recipe",
    --     name = "muluna-atmosphere-separation",
    --     icon = data.raw["item"]["wood"].icon,
    --     category = "chemistry",
    --     ingredients = {
    --         {type = "item",name = "atmosphere", amount=100}
    --     },
    --     results = {
    --         {type = "item",name = "maraxsis-oxygen", amount=20},
    --         {type = "item",name = "nitrogen", amount=80}
    --     },
    --     energy_required=10*60,

    -- },
    { 
        type = "recipe",
        name = "controlled-combustion",
        enabled = false,
        icon = "__planet-muluna__/graphics/icons/molecule-carbon-dioxide.png",
        icon_size = 64,
        category = "double-boiler",
        ingredients = {
            --{type = "item",name = "carbon", amount=1},
            {type = "fluid",name = "maraxsis-oxygen", amount=10}
        },
        results = {
            {type = "fluid",name = "carbon-dioxide", amount=10, temperature = 165}
        },
        energy_required=1/6,
        subgroup="muluna-products"

    },
    { 
        type = "recipe",
        name = "helium-separation",
        enabled = false,
        icons = {   
                {
                    icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                    icon_size = 64,
                    tint = {1,0.8,1},
                    scale = 0.5,
                    shift = {16,0}
                },
                {
                    icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                    icon_size = 64,
                    tint = {1,0.6,1},
                    scale = 0.5,
                    shift = {-16,0}
                },   
        },
        --icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
        --icon_size = 64,
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "helium", amount=1000}
        },
        results = {
            {type = "fluid",name = "helium-4", amount=993},
            {type = "fluid",name = "helium-3", amount=7}
        },
        energy_required=2,
        subgroup="muluna-products",
        allow_productivity = false,

    },
    { 
        type = "recipe",
        name = "kovarex-helium-enrichment",
        enabled = false,
        icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
        allow_productivity = true,
        --icon_size = 64,
        icons = {   
            {
                icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                icon_size = 64,
                tint = {1,0.6,1},
                scale = 0.5,
                shift = {16,0},
                draw_background = true,
            },
            {
                icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                icon_size = 64,
                tint = {1,0.6,1},
                scale = 0.5,
                shift = {-16,0},
                draw_background = true,
            },
           
    },
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "helium-4", amount=60},
            {type = "fluid",name = "helium-3", amount=400}
        },
        results = {
            {type = "fluid",name = "helium-4", amount=10},
            {type = "fluid",name = "helium-3", amount=402, ignored_by_productivity=400}
        },
        energy_required=0.2,
        subgroup="muluna-products"

    },
    {
        type = "recipe",
        category = "chemistry",
        enabled = false,
        name = "cellulose",
        ingredients = {
            {type = "item",name = "wood-crushed", amount=40},
            {type = "fluid",name = "sulfuric-acid", amount=5}
        },
        energy_required = 16,
        results = {
            {type = "item",name = "cellulose", amount=40},
        },
        allow_productivity = true,
    },
    -- {
    --     type = "recipe",
    --     category = "chemistry",
    --     name = "heavy-oil-cellulose",
    --     ingredients = {
    --         {type = "item",name = "cellulose", amount=40},
    --         {type = "fluid",name = "steam", amount=100}
    --     },
    --     energy_required = 8,
    --     results = {
    --         {type = "fluid",name = "heavy-oil", amount=100},
    --     },
    --     allow_productivity = true,
    -- },


}