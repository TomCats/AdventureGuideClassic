--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
function GetEquipMapping()
    return {
        INVTYPE_HEAD = "Head",
        INVTYPE_NECK = "Neck",
        INVTYPE_SHOULDER = "Shoulder",
        INVTYPE_BODY = "Shirt",
        INVTYPE_CLOAK = "Back",
        INVTYPE_CHEST = "Chest",
        INVTYPE_WRIST = "Wrist",
        INVTYPE_HAND = "Hands",
        INVTYPE_WAIST = "Waist",
        INVTYPE_LEGS = "Legs",
        INVTYPE_FEET = "Feet",
        INVTYPE_FINGER = "Finger",
        INVTYPE_TRINKET = "Trinket",
        INVTYPE_WEAPON = "One-Hand",
        INVTYPE_SHIELD = "Off Hand",
        INVTYPE_2HWEAPON = "Two-Hand",
        INVTYPE_WEAPONMAINHAND = "Main Hand",
        INVTYPE_WEAPONOFFHAND = "Off Hand",
        INVTYPE_NON_EQUIP_IGNORE = "Unique",
        INVTYPE_HOLDABLE = "Held In Off-hand",
        INVTYPE_RANGED = "Ranged",
        INVTYPE_RANGEDRIGHT = "Ranged",
        INVTYPE_THROWN = "Thrown",
        INVTYPE_RELIC = "Relic",
        INVTYPE_TABARD = "Tabard",
        INVTYPE_ROBE = "Chest",
        INVTYPE_BAG = "Bag",
        INVTYPE_QUIVER = "Quiver",
        INVTYPE_AMMO = "Ammo",
        INVTYPE_GUN = "Gun",
        INVTYPE_CROSSBOW = "Crossbow",
        INVTYPE_WAND = "Wand",
        INVTYPE_FIST = "Fist Weapon",
    }
end

select(2, ...).SetupGlobalFacade("GetEquipMapping", GetEquipMapping)
