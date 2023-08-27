--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local atlases = {
	["Map-MarkedDefeated"] = {["rightTexCoord"]=0.302734375,["topTexCoord"]=0.310546875,["width"]=32,["leftTexCoord"]=0.271484375,["tilesHorizontally"]=false,["height"]=32,["file"]=I.ObjectIconsAtlas,["bottomTexCoord"]=0.341796875,["tilesVertically"]=false}
}

Atlas = { }

function Atlas.SetAtlas(texture, atlasName, useAtlasScale)
	local atlasInfo = atlases[atlasName]
	texture:SetTexture(atlasInfo.file)
	if (atlasInfo.leftTexCoord) then
		texture:SetTexCoord(atlasInfo.leftTexCoord, atlasInfo.rightTexCoord, atlasInfo.topTexCoord, atlasInfo.bottomTexCoord)
	end
	texture:SetSize(atlasInfo.width, atlasInfo.height)
end
