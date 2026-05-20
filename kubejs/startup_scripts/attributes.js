const $AttributeModifier = Java.loadClass("net.minecraft.world.entity.ai.attributes.AttributeModifier")

//Studded Armor:
const studdedHelmetFireResistance = new $AttributeModifier("3fda8b12-92c4-4f61-b785-ec1a2e369f48", "rediscovered:fire_resistance", 0.1, "MULTIPLY_TOTAL")
const studdedChestplateFireResistance = new $AttributeModifier("eab41f97-62c1-4d3b-9f04-cc39f4170b91", "rediscovered:fire_resistance", 0.1, "MULTIPLY_TOTAL")
const studdedLeggingsFireResistance = new $AttributeModifier("7cbe3a54-48d2-4e0c-bda9-8197f3c5e6b3", "rediscovered:fire_resistance", 0.1, "MULTIPLY_TOTAL")
const studdedBootsFireResistance = new $AttributeModifier("15a6d8f2-3ef0-4949-bd34-8c2c6e8a715e", "rediscovered:fire_resistance", 0.1, "MULTIPLY_TOTAL")

//Golden Armor:
const goldenHelmetGenericArmor = new $AttributeModifier("2dda8b12-92c4-4f61-b895-ec1a2e369f48", "minecraft:generic.armor", 1.0, "ADDITION")
const goldenChestplateGenericArmor = new $AttributeModifier("1ab41f97-62c1-4a5b-9f04-cc39f4170b91", "minecraft:generic.armor", 4.0, "ADDITION")
const goldenLeggingsGenericArmor = new $AttributeModifier("1cbe3a54-48d2-4e3c-bda8-8197f3c5e6b3", "minecraft:generic.armor", 3.0, "ADDITION")
const goldenBootsGenericArmor = new $AttributeModifier("15a6d8f2-3ef0-4949-dd34-8c1c6e8a715e", "minecraft:generic.armor", 1.0, "ADDITION")

//Plate Armor: 
const plateHelmetGenericArmor = new $AttributeModifier("4f91c2ad-0b6e-4c84-9f0d-b728a61452c3", "minecraft:generic.armor", 3.0, "ADDITION")
const plateChestplateGenericArmor = new $AttributeModifier("d3a74f10-6c22-4b1a-82e9-0fb94c7de845", "minecraft:generic.armor", 7.0, "ADDITION")
const plateLeggingsGenericArmor = new $AttributeModifier("89c2e51b-f74d-41aa-9d3e-55b917a0c6ef", "minecraft:generic.armor", 6.0, "ADDITION")
const plateBootsGenericArmor = new $AttributeModifier("1ab7e934-28fd-4e5c-940d-7d0c12ea5081", "minecraft:generic.armor", 3.0, "ADDITION")

const plateHelmetArmorToughness = new $AttributeModifier("f2a6c3b1-5d84-4e7f-a1c9-3b7d9e6f2a41", "minecraft:generic.armor_toughness", 2.0, "ADDITION")
const plateChestplateArmorToughness = new $AttributeModifier("0d8b9f34-2c7a-4f11-9e6d-5a3c2b8f7d90", "minecraft:generic.armor_toughness", 2.0, "ADDITION")
const plateLeggingsArmorToughness = new $AttributeModifier("a7e1d452-8f3c-4b6a-95d2-1c9e7f0b3a64", "minecraft:generic.armor_toughness", 2.0, "ADDITION")
const plateBootsArmorToughness = new $AttributeModifier("c39f5b87-1a4e-4d2f-b6c3-8e0a7d2f5912", "minecraft:generic.armor_toughness", 2.0, "ADDITION")

//Iron Armor:
const ironChestplateGenericArmor = new $AttributeModifier("92e5b7c1-8d3a-4f06-a14c-6e9d2f0b7538", "minecraft:generic.armor", 7.0, "ADDITION")

const ironHelmetArmorToughness = new $AttributeModifier("9c3f1a7e-6d24-4f1b-8a5e-2d7c91e4b6f0", "minecraft:generic.armor_toughness", 1.0, "ADDITION")
const ironChestplateArmorToughness = new $AttributeModifier("a48e0c9b-2f6d-4b7a-93d1-5e7c0f8a2b64", "minecraft:generic.armor_toughness", 1.0, "ADDITION")
const ironLeggingsArmorToughness = new $AttributeModifier("7b2e4f1d-9a6c-4e38-b0d5-61f8c3a9247e", "minecraft:generic.armor_toughness", 1.0, "ADDITION")
const ironBootsArmorToughness = new $AttributeModifier("c1f0b7a9-5d3e-4c62-8e4a-9b6f2d1a7038", "minecraft:generic.armor_toughness", 1.0, "ADDITION")

//Diamond Armor: 
const diamondHelmetArmorToughness = new $AttributeModifier("e7a3c1b9-4d2f-4a68-9b05-6f1d8c2a73e4", "minecraft:generic.armor_toughness", 3.0, "ADDITION")
const diamondChestplateArmorToughness = new $AttributeModifier("3f9d2a1c-7b64-4e85-8c0a-b5e14d6f92a7", "minecraft:generic.armor_toughness", 3.0, "ADDITION")
const diamondLeggingsArmorToughness = new $AttributeModifier("b6c8a5d4-1e2f-4b93-9a07-3f2d8c1e7465", "minecraft:generic.armor_toughness", 3.0, "ADDITION")
const diamondBootsArmorToughness = new $AttributeModifier("0a9f3d7c-5e41-4c82-b6d8-2a1f95e73c64", "minecraft:generic.armor_toughness", 3.0, "ADDITION")

ForgeEvents.onEvent("net.minecraftforge.event.ItemAttributeModifierEvent", (event) => {

//Diamond Armor:
	if (event.itemStack.id == "minecraft:diamond_helmet" && event.slotType == "head") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", diamondHelmetArmorToughness)
	}
	if (event.itemStack.id == "minecraft:diamond_chestplate" && event.slotType == "chest") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", diamondChestplateArmorToughness)
	}
	if (event.itemStack.id == "minecraft:diamond_leggings" && event.slotType == "legs") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", diamondLeggingsArmorToughness)
	}
	if (event.itemStack.id == "minecraft:diamond_boots" && event.slotType == "feet") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", diamondBootsArmorToughness)
	}

//Iron Armor:
	if (event.itemStack.id == "minecraft:iron_helmet" && event.slotType == "head") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", ironHelmetArmorToughness)
	}
	if (event.itemStack.id == "minecraft:iron_chestplate" && event.slotType == "chest") {
		event.removeAttribute("minecraft:generic.armor")
		event.addModifier("minecraft:generic.armor", ironChestplateGenericArmor)
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", ironChestplateArmorToughness)
	}
	if (event.itemStack.id == "minecraft:iron_leggings" && event.slotType == "legs") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", ironLeggingsArmorToughness)
	}
	if (event.itemStack.id == "minecraft:iron_boots" && event.slotType == "feet") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", ironBootsArmorToughness)
	}

//Plate Armor:
	if (event.itemStack.id == "rediscovered:plate_helmet" && event.slotType == "head") {
		event.removeAttribute("minecraft:generic.armor")
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("minecraft:generic.knockback_resistance")
		event.addModifier("minecraft:generic.armor", plateHelmetGenericArmor)
	}
	if (event.itemStack.id == "rediscovered:plate_chestplate" && event.slotType == "chest") {
		event.removeAttribute("minecraft:generic.armor")
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("minecraft:generic.knockback_resistance")
		event.addModifier("minecraft:generic.armor", plateChestplateGenericArmor)
	}
	if (event.itemStack.id == "rediscovered:plate_leggings" && event.slotType == "legs") {
		event.removeAttribute("minecraft:generic.armor")
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("minecraft:generic.knockback_resistance")
		event.addModifier("minecraft:generic.armor", plateLeggingsGenericArmor)
	}
	if (event.itemStack.id == "rediscovered:plate_boots" && event.slotType == "feet") {
		event.removeAttribute("minecraft:generic.armor")
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("minecraft:generic.knockback_resistance")
		event.addModifier("minecraft:generic.armor", plateBootsGenericArmor)
	}

	if (event.itemStack.id == "rediscovered:plate_helmet" && event.slotType == "head") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", plateHelmetArmorToughness)
	}
	if (event.itemStack.id == "rediscovered:plate_chestplate" && event.slotType == "chest") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", plateChestplateArmorToughness)
	}
	if (event.itemStack.id == "rediscovered:plate_leggings" && event.slotType == "legs") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", plateLeggingsArmorToughness)
	}
	if (event.itemStack.id == "rediscovered:plate_boots" && event.slotType == "feet") {
		event.removeAttribute("minecraft:generic.armor_toughness")
		event.addModifier("minecraft:generic.armor_toughness", plateBootsArmorToughness)
	}

//Studded Armor:
	if (event.itemStack.id == "rediscovered:studded_helmet" && event.slotType == "head") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("rediscovered:explosion_resistance")
		event.addModifier("rediscovered:fire_resistance", studdedHelmetFireResistance)
	}
	if (event.itemStack.id == "rediscovered:studded_chestplate" && event.slotType == "chest") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("rediscovered:explosion_resistance")
		event.addModifier("rediscovered:fire_resistance", studdedChestplateFireResistance)
	}
	if (event.itemStack.id == "rediscovered:studded_leggings" && event.slotType == "legs") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("rediscovered:explosion_resistance")
		event.addModifier("rediscovered:fire_resistance", studdedLeggingsFireResistance)
	}
	if (event.itemStack.id == "rediscovered:studded_boots" && event.slotType == "feet") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.removeAttribute("rediscovered:explosion_resistance")
		event.addModifier("rediscovered:fire_resistance", studdedBootsFireResistance)
	}

//Golden Armor:
	if (event.itemStack.id == "minecraft:golden_helmet" && event.slotType == "head") {
		event.removeAttribute("minecraft:generic.armor")
		event.addModifier("minecraft:generic.armor", goldenHelmetGenericArmor)
	}
	if (event.itemStack.id == "minecraft:golden_chestplate" && event.slotType == "chest") {
		event.removeAttribute("minecraft:generic.armor")
		event.addModifier("minecraft:generic.armor", goldenChestplateGenericArmor)
	}
	if (event.itemStack.id == "minecraft:golden_leggings" && event.slotType == "legs") {
		event.removeAttribute("minecraft:generic.armor")
		event.addModifier("minecraft:generic.armor", goldenLeggingsGenericArmor)
	}
	if (event.itemStack.id == "minecraft:golden_boots" && event.slotType == "feet") {
		event.removeAttribute("minecraft:generic.armor")
		event.addModifier("minecraft:generic.armor", goldenBootsGenericArmor)
	}
})
