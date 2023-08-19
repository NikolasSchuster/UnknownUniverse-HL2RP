
-----------------------------------------------------
--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local PANEL = {};

-- Called when the panel is initialized.
function PANEL:Init()
	self:SetBackgroundBlur(true);
	self:SetDeleteOnClose(false);
	
	-- Called when the button is clicked.
	function self.btnClose.DoClick(button)
		self:Close(); self:Remove();
		
		gui.EnableScreenClicker(false);
	end;
	
	function self:Paint(w, h)
		surface.SetDrawColor(10, 10, 50, 150)
		surface.DrawRect(0, 0, w, h)
		surface.SetDrawColor(255, 255, 255, 50)
		surface.DrawOutlinedRect(1, 1, w-2, h-2)
	end
	
	self.panelList = vgui.Create("DPanelList", self);
 	self.panelList:SetPadding(2);
 	self.panelList:SetSpacing(3);
 	self.panelList:SizeToContents();
	self.panelList:EnableVerticalScrollbar();
end;

-- Called each frame.
function PANEL:Think()
	local scrW = ScrW()
	local scrH = ScrH()
	
	self:SetSize(ScrW()/2, ScrH()-40)
	self:SetPos( (scrW / 2) - (self:GetWide() / 2), (scrH / 2) - (self:GetTall() / 2) )
end;

-- A function to populate the panel.
function PANEL:Populate(objectives)
	self:SetTitle("Objectives");
	
	self.panelList:Clear();

	self.label = vgui.Create("DLabel");
	
	self.label:SetAutoStretchVertical(true);
	self.label:SetTextColor(Color(255, 255, 255));
	self.label:SetWrap(true);
	self.label:SetHeight(ScrH()-80);
	self.label:SetText(objectives);
	
	self.panelList:AddItem(self.label);
end;

-- Called when the layout should be performed.
function PANEL:PerformLayout()
	self.panelList:StretchToParent(4, 28, 4, 4);
	
	DFrame.PerformLayout(self);
end;

vgui.Register("cwViewObjectives", PANEL, "DFrame");