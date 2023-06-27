--[[ See license.txt for license and copyright information ]]
select(2, ...).SetupGlobalFacade()

local ComponentMixin = { }

function ComponentMixin:MarkClean()
	self.isDirty = false
end

function ComponentMixin:MarkDirty()
	self.isDirty = true
end

function ComponentMixin:IsDirty()
	return self.isDirty or false
end

function UI.CreateComponent(name)
	local component = CreateFromMixins(ComponentMixin)
	component.name = name
	return component
end
