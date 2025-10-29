const $AttributeModifier = Java.loadClass("net.minecraft.world.entity.ai.attributes.AttributeModifier")

const chainmailHelmetFireResistance = new $AttributeModifier("3fda8b12-92c4-4f61-b785-ec1a2e369f48", "rediscovered:fire_resistance", 0.1, "MULTIPLY_BASE")
const chainmailChestplateFireResistance = new $AttributeModifier("eab41f97-62c1-4d3b-9f04-cc39f4170b91", "rediscovered:fire_resistance", 0.1, "MULTIPLY_BASE")
const chainmailLeggingsFireResistance = new $AttributeModifier("7cbe3a54-48d2-4e0c-bda9-8197f3c5e6b3", "rediscovered:fire_resistance", 0.1, "MULTIPLY_BASE")
const chainmailBootsFireResistance = new $AttributeModifier("15a6d8f2-3ef0-4949-bd34-8c2c6e8a715e", "rediscovered:fire_resistance", 0.1, "MULTIPLY_BASE")

const sterlingHelmetSpeed = new $AttributeModifier("a472b910-3d82-4213-a72d-f0e02e937f0c", "generic.movement_speed", 0.1, "MULTIPLY_BASE")
const sterlingChestplateSpeed = new $AttributeModifier("d8c7e3b1-75b4-465a-b9e5-4a27f36c2c48", "generic.movement_speed", 0.1, "MULTIPLY_BASE")
const sterlingLeggingsSpeed = new $AttributeModifier("29e6148f-4971-4019-8757-1c5938adfd2a", "generic.movement_speed", 0.1, "MULTIPLY_BASE")
const sterlingBootsSpeed = new $AttributeModifier("f3a27865-0f41-4b24-9e6b-e3dc06d46b89", "generic.movement_speed", 0.1, "MULTIPLY_BASE")

const netheriteHelmetSpeed = new $AttributeModifier("b472b910-3d82-4113-a72d-f0e02e837f0c", "generic.movement_speed", -0.05, "MULTIPLY_BASE")
const netheriteChestplateSpeed = new $AttributeModifier("f8c7e3b1-74b4-465a-b9e5-3a27f36c2c48", "generic.movement_speed", -0.05, "MULTIPLY_BASE")
const netheriteLeggingsSpeed = new $AttributeModifier("29a6148f-4971-4519-8757-2c5938adfd2a", "generic.movement_speed", -0.05, "MULTIPLY_BASE")
const netheriteBootsSpeed = new $AttributeModifier("63a27865-0f31-4b24-9e6b-f3dc06d46b89", "generic.movement_speed", -0.05, "MULTIPLY_BASE")

const studdedHelmetRangedResistance = new $AttributeModifier("3dda8b12-92c4-4f61-b885-ec1a2e369f48", "puffish_attributes:ranged_resistance", 0.1, "MULTIPLY_BASE")
const studdedChestplateRangedResistance = new $AttributeModifier("5ab41f97-62c1-4d5b-9f04-cc39f4170b91", "puffish_attributes:ranged_resistance", 0.1, "MULTIPLY_BASE")
const studdedLeggingsRangedResistance = new $AttributeModifier("8cbe3a54-48d2-4e3c-bda9-8197f3c5e6b3", "puffish_attributes:ranged_resistance", 0.1, "MULTIPLY_BASE")
const studdedBootsRangedResistance = new $AttributeModifier("55a6d8f2-3ef0-4949-dd34-8c2c6e8a715e", "puffish_attributes:ranged_resistance", 0.1, "MULTIPLY_BASE")

const goldenHelmetRegenerationBoost = new $AttributeModifier("2dda8b12-92c4-4f61-b895-ec1a2e369f48", "puffish_attributes:natural_regeneration", 0.3, "MULTIPLY_BASE")
const goldenChestplateRegenerationBoost = new $AttributeModifier("1ab41f97-62c1-4a5b-9f04-cc39f4170b91", "puffish_attributes:natural_regeneration", 0.3, "MULTIPLY_BASE")
const goldenLeggingsRegenerationBoost = new $AttributeModifier("1cbe3a54-48d2-4e3c-bda8-8197f3c5e6b3", "puffish_attributes:natural_regeneration", 0.3, "MULTIPLY_BASE")
const goldenBootsRegenerationBoost = new $AttributeModifier("15a6d8f2-3ef0-4949-dd34-8c1c6e8a715e", "puffish_attributes:natural_regeneration", 0.3, "MULTIPLY_BASE")

ForgeEvents.onEvent("net.minecraftforge.event.ItemAttributeModifierEvent", (event) => {

//Sterling Armor:
	if (event.itemStack.id == "galosphere:sterling_helmet" && event.slotType == "head") {
		event.removeAttribute("galosphere:illager_resistance")
		event.addModifier("minecraft:generic.movement_speed", sterlingHelmetSpeed)
	}
	if (event.itemStack.id == "galosphere:sterling_chestplate" && event.slotType == "chest") {
		event.removeAttribute("galosphere:illager_resistance")
		event.addModifier("minecraft:generic.movement_speed", sterlingChestplateSpeed)
	}
	if (event.itemStack.id == "galosphere:sterling_leggings" && event.slotType == "legs") {
		event.removeAttribute("galosphere:illager_resistance")
		event.addModifier("minecraft:generic.movement_speed", sterlingLeggingsSpeed)
	}
	if (event.itemStack.id == "galosphere:sterling_boots" && event.slotType == "feet") {
		event.removeAttribute("galosphere:illager_resistance")
		event.addModifier("minecraft:generic.movement_speed", sterlingBootsSpeed)
	}

//Chainmail Armor:
	if (event.itemStack.id == "minecraft:chainmail_helmet" && event.slotType == "head") {
		event.addModifier("rediscovered:fire_resistance", chainmailHelmetFireResistance)
	}
	if (event.itemStack.id == "minecraft:chainmail_chestplate" && event.slotType == "chest") {
		event.addModifier("rediscovered:fire_resistance", chainmailChestplateFireResistance)
	}
	if (event.itemStack.id == "minecraft:chainmail_leggings" && event.slotType == "legs") {
		event.addModifier("rediscovered:fire_resistance", chainmailLeggingsFireResistance)
	}
	if (event.itemStack.id == "minecraft:chainmail_boots" && event.slotType == "feet") {
		event.addModifier("rediscovered:fire_resistance", chainmailBootsFireResistance)
	}

//Studded Armor:
	if (event.itemStack.id == "rediscovered:studded_helmet" && event.slotType == "head") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.addModifier("puffish_attributes:ranged_resistance", studdedHelmetRangedResistance)
	}
	if (event.itemStack.id == "rediscovered:studded_chestplate" && event.slotType == "chest") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.addModifier("puffish_attributes:ranged_resistance", studdedChestplateRangedResistance)
	}
	if (event.itemStack.id == "rediscovered:studded_leggings" && event.slotType == "legs") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.addModifier("puffish_attributes:ranged_resistance", studdedLeggingsRangedResistance)
	}
	if (event.itemStack.id == "rediscovered:studded_boots" && event.slotType == "feet") {
		event.removeAttribute("rediscovered:fire_resistance")
		event.addModifier("puffish_attributes:ranged_resistance", studdedBootsRangedResistance)
	}

//Netherite Armor:
	if (event.itemStack.id == "minecraft:netherite_helmet" && event.slotType == "head") {
		event.addModifier("minecraft:generic.movement_speed", netheriteHelmetSpeed)
	}
	if (event.itemStack.id == "minecraft:netherite_chestplate" && event.slotType == "chest") {
		event.addModifier("minecraft:generic.movement_speed", netheriteChestplateSpeed)
	}
	if (event.itemStack.id == "minecraft:netherite_leggings" && event.slotType == "legs") {
		event.addModifier("minecraft:generic.movement_speed", netheriteLeggingsSpeed)
	}
	if (event.itemStack.id == "minecraft:netherite_boots" && event.slotType == "feet") {
		event.addModifier("minecraft:generic.movement_speed", netheriteBootsSpeed)
	}

//Golden Armor:
	//if (event.itemStack.id == "minecraft:golden_helmet" && event.slotType == "head") {
		//event.addModifier("puffish_attributes:natural_regeneration", goldenHelmetRegenerationBoost)
	//}
	//if (event.itemStack.id == "minecraft:golden_chestplate" && event.slotType == "chest") {
		//event.addModifier("puffish_attributes:natural_regeneration", goldenChestplateRegenerationBoost)
	//}
	//if (event.itemStack.id == "minecraft:golden_leggings" && event.slotType == "legs") {
		//event.addModifier("puffish_attributes:natural_regeneration", goldenLeggingsRegenerationBoost)
	//}
	//if (event.itemStack.id == "minecraft:golden_boots" && event.slotType == "feet") {
		//event.addModifier("puffish_attributes:natural_regeneration", goldenBootsRegenerationBoost)
	//}
})
