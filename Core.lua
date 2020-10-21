local HIDE_TOOLTIP_HEALTHBAR = true


local AddonName = ...
local E = unpack(ElvUI)
local TT = E:GetModule('Tooltip')
local ECTT = E:NewModule('EnhancedCursorToolTip', 'AceHook-3.0')

local GameTooltip = GameTooltip
local GetMouseFocus = GetMouseFocus
local UnitPlayerControlled = UnitPlayerControlled

function ECTT:GameTooltip_SetDefaultAnchor(tooltip, parent)
	if GetMouseFocus() == WorldFrame and not UnitPlayerControlled('mouseover') then
		-- Enable cursor anchor for non-player tooltips
		TT.db.cursorAnchor = true
	else
		-- Otherwise, disable cursor anchord
		TT.db.cursorAnchor = false
	end
end

function ECTT:Initialize()
	-- Setup hook
	ECTT:Hook(TT, 'GameTooltip_SetDefaultAnchor')

	if HIDE_TOOLTIP_HEALTHBAR then
		-- Hide tooltip health bar
		GameTooltip.StatusBar:Hide()
		GameTooltip.StatusBar:SetAlpha(0)
		-- Overwrite health bar's Show method
		ECTT:RawHook(GameTooltip.StatusBar, 'Show', function() end, true)
	end
end

E:RegisterModule(ECTT:GetName())
LibStub('LibElvUIPlugin-1.0'):RegisterPlugin(AddonName)
