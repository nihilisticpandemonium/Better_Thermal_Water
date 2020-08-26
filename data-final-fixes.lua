-- modify thermal water extraction tech
bobmods.lib.tech.remove_recipe_unlock("thermal-water-extraction", "thermal-water-filtering-1")
bobmods.lib.tech.remove_recipe_unlock("thermal-water-extraction", "thermal-water-filtering-2")
-- add new advanced tech
data:extend({
    {
        type = "technology",
        name = "advanced-thermal-water-filtering",
        icon = "__angelsrefining__/graphics/technology/thermal-extractor.png",
        icon_size = 128,
        prerequisites =
        {
            "thermal-water-extraction",
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "thermal-water-filtering-1"
            },
            {
                type = "unlock-recipe",
                recipe = "thermal-water-filtering-2"
            },
        },
        unit =
        {
            count = 50,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 15
        },
        order = "a-a-a1"
    }
})

-- modify thermal water extractor crafting recipe
bobmods.lib.recipe.replace_ingredient("thermal-extractor", "processing-unit", "advanced-circuit")
bobmods.lib.recipe.replace_ingredient("thermal-extractor", "titanium-plate", "aluminium-plate")
bobmods.lib.recipe.replace_ingredient("thermal-extractor", "titanium-gear-wheel", "brass-gear-wheel")
bobmods.lib.recipe.replace_ingredient("thermal-extractor", "reinforced-concrete-brick", "concrete-brick")
bobmods.lib.recipe.replace_ingredient("thermal-extractor", "titanium-pipe", "brass-pipe")