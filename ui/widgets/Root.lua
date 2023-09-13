--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local widgetType = Mixin({
	name = "Root",
}, WidgetTypeMixin)

function widgetType:Construct(parent)
	local frame = WidgetTypeMixin.ConstructDefault(widgetType, "Frame", nil, parent)

	function frame:SetContents(contents)
		for idx, contentPart in ipairs(contents) do
			if (type(contentPart) == "string") then
				-- todo: replace tokens and convert into a table
				contentPart = { text = contentPart}
				contents[idx] = contentPart
			end
			local type = Widgets.GetTypeForContent(contentPart)
			type:SetContents(type:Acquire(frame), contentPart)
		end
	end
	-- example
	--frame.description = frame:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	--frame.description:SetJustifyH("LEFT")
	--frame.description:SetSize(0, 0)
	--frame.description:SetPoint("TOPLEFT", 2, -8)
	--frame.description:SetPoint("RIGHT", -12, 0)
	--frame.description:SetTextColor(0.25, 0.1484375, 0.02, 1)
	--frame.description:SetWordWrap(true);
	--frame.description:SetText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur libero id faucibus nisl tincidunt. Vestibulum rhoncus est pellentesque elit. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Et tortor consequat id porta nibh venenatis. Integer enim neque volutpat ac tincidunt. Quis auctor elit sed vulputate mi sit amet mauris. Id interdum velit laoreet id donec ultrices tincidunt arcu. Duis tristique sollicitudin nibh sit amet. Et ligula ullamcorper malesuada proin libero nunc consequat interdum. Blandit libero volutpat sed cras ornare arcu. Dictum fusce ut placerat orci nulla pellentesque dignissim. Proin fermentum leo vel orci porta non pulvinar. Semper quis lectus nulla at volutpat diam ut venenatis. Faucibus a pellentesque sit amet. Quis enim lobortis scelerisque fermentum dui faucibus.\r\nBibendum at varius vel pharetra vel. Proin libero nunc consequat interdum varius sit amet. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Erat imperdiet sed euismod nisi. In eu mi bibendum neque egestas congue quisque. Aliquam sem et tortor consequat id porta nibh venenatis. Turpis massa tincidunt dui ut ornare lectus sit amet est. Urna nunc id cursus metus aliquam. Enim sit amet venenatis urna cursus eget nunc scelerisque. Gravida cum sociis natoque penatibus et magnis dis parturient. Dignissim sodales ut eu sem. Nibh cras pulvinar mattis nunc sed. Donec enim diam vulputate ut pharetra sit amet. Et egestas quis ipsum suspendisse ultrices gravida dictum. Ornare arcu odio ut sem. Lectus quam id leo in vitae. Urna id volutpat lacus laoreet non. Fermentum dui faucibus in ornare.\r\nMagna fringilla urna porttitor rhoncus dolor purus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Urna molestie at elementum eu facilisis sed odio. Turpis in eu mi bibendum neque egestas congue quisque. Amet aliquam id diam maecenas ultricies mi. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Consequat ac felis donec et odio. Sapien et ligula ullamcorper malesuada proin libero nunc. Amet facilisis magna etiam tempor orci eu. Bibendum est ultricies integer quis auctor. Praesent elementum facilisis leo vel fringilla est ullamcorper. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices. Nunc sed blandit libero volutpat sed cras ornare arcu. Vivamus arcu felis bibendum ut.\r\nVelit euismod in pellentesque massa placerat duis. Cras ornare arcu dui vivamus arcu felis bibendum. Sagittis eu volutpat odio facilisis mauris sit. Lorem donec massa sapien faucibus et molestie ac. Vitae turpis massa sed elementum tempus egestas. Eget mi proin sed libero enim. Sed libero enim sed faucibus turpis in eu. Blandit cursus risus at ultrices mi. Vel turpis nunc eget lorem dolor sed viverra ipsum nunc. Quam quisque id diam vel quam elementum pulvinar etiam.\r\nPlacerat orci nulla pellentesque dignissim. Consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat. Aliquet nibh praesent tristique magna sit amet purus. Sagittis aliquam malesuada bibendum arcu vitae elementum. Nunc mattis enim ut tellus elementum. Mauris commodo quis imperdiet massa. In nisl nisi scelerisque eu. Et netus et malesuada fames. Aliquam nulla facilisi cras fermentum odio. Volutpat commodo sed egestas egestas. Etiam dignissim diam quis enim lobortis scelerisque.")
	--frame:SetHeight(frame.description:GetStringHeight())
	-- end example

	return frame
end

Widgets.RegisterType(widgetType)
