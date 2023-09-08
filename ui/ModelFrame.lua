--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("ModelFrame")

local components

function component.Init(components_)
	components = components_
	local model = CreateFrame("ModelScene", nil, EncounterJournal.encounter.info, "ModelSceneMixinTemplate")
	EncounterJournal.encounter.info.model = model
	model:SetSize(390, 423)
	model:SetPoint("BOTTOMRIGHT", -3, 1)
	model.dungeonBG = model:CreateTexture()
	model.dungeonBG:SetDrawLayer("BACKGROUND", 1)
	model.dungeonBG:SetSize(394, 425)
	model.dungeonBG:SetPoint("BOTTOMLEFT", 0, -2)
	model.dungeonBG:SetTexCoord(0.76953125, 0, 0, 0.830078125)
	local shadow = model:CreateTexture(nil, "OVERLAY")
	shadow:SetTexture("Interface/EncounterJournal/UI-EJ-BossModelPaperFrame")
	shadow:SetSize(393, 424)
	shadow:SetPoint("BOTTOMRIGHT", 3, 0)
	shadow:SetTexCoord(0.767578125, 0, 0, 0.828125)
	local titleBG = model:CreateTexture()
	titleBG:SetSize(395, 63)
	titleBG:SetDrawLayer("OVERLAY", 1)
	titleBG:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	titleBG:SetTexCoord(0.00195313, 0.77343750, 0.26953125, 0.33105469)
	model.imageTitle = model:CreateFontString()
	model.imageTitle:SetDrawLayer("OVERLAY", 2)
	model.imageTitle:SetFontObject("QuestTitleFontBlackShadow")
	model.imageTitle:SetJustifyH("CENTER")
	model.imageTitle:SetSize(380, 10)
	model.imageTitle:SetPoint("BOTTOM", 0, 6)
	model.modelDisplayIdLabel = model:CreateFontString()
	model.modelDisplayIdLabel:SetDrawLayer("OVERLAY", 2)
	model.modelDisplayIdLabel:SetFontObject("GameFontNormalSmall")
	model.modelDisplayIdLabel:SetJustifyH("LEFT")
	model.modelDisplayIdLabel:SetSize(60, 0)
	model.modelDisplayIdLabel:SetPoint("BOTTOMLEFT", model.imageTitle, "TOPLEFT", 30, 6)
	model.modelDisplayIdLabel:SetText("Display ID:")
	model.modelDisplayIdLabel:Hide()
	model.modelDisplayId = model:CreateFontString()
	model.modelDisplayId:SetDrawLayer("OVERLAY", 2)
	model.modelDisplayId:SetFontObject("GameFontHighlightSmall")
	model.modelDisplayId:SetJustifyH("LEFT")
	model.modelDisplayId:SetWordWrap(true)
	model.modelDisplayId:SetSize(320, 0)
	model.modelDisplayId:SetPoint("LEFT", model.modelDisplayIdLabel, "RIGHT", 2, 0)
	model.modelDisplayId:Hide()
	model.modelName = model:CreateFontString()
	model.modelName:SetDrawLayer("OVERLAY", 2)
	model.modelName:SetFontObject("GameFontHighlightSmall")
	model.modelName:SetJustifyH("CENTER")
	model.modelName:SetWordWrap(true)
	model.modelName:SetSize(320, 0)
	model.modelName:SetPoint("BOTTOM", model.imageTitle, "TOP", 0, 26)
	model.modelName:Hide()
	model.modelNameLabel = model:CreateFontString()
	model.modelNameLabel:SetDrawLayer("OVERLAY", 2)
	model.modelNameLabel:SetFontObject("GameFontNormalSmall")
	model.modelNameLabel:SetJustifyH("LEFT")
	model.modelNameLabel:SetWordWrap(true)
	model.modelNameLabel:SetSize(320, 0)
	model.modelNameLabel:SetPoint("BOTTOMLEFT", model.modelName, "TOPLEFT", 0, 6)
	model.modelNameLabel:SetText("Model Path:")
	model.modelNameLabel:Hide()
	EncounterJournal.encounter.info.imageTitle = model.imageTitle
	--[[
	<Scripts>
		<OnShow>
			EncounterJournal.encounter.info.encounterTitle:Hide();
			EncounterJournal.encounter.info.rightShadow:Hide();
			EncounterJournal.encounter.info.difficulty:Hide();
		</OnShow>
		<OnLoad inherit="append">
			self:GetParent().imageTitle = self.imageTitle;
		</OnLoad>
	</Scripts>
	]]
end

UI.Add(component)
