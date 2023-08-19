
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
	local scrW = ScrW();
	local scrH = ScrH();
	
	self:SetSize(ScrW()/2, ScrH()-40)
	self:SetPos( (scrW / 2) - (self:GetWide() / 2), (scrH / 2) - (self:GetTall() / 2) );
end;

-- A function to populate the panel.
function PANEL:Populate(objectives)
	self:SetTitle("Objectives");
	
	self.panelList:Clear();
	
	local textEntry = vgui.Create("DTextEntry");
	local button = vgui.Create("DButton");
	
	textEntry:SetMultiline(true);
	textEntry:SetHeight(ScrH()-105);
	textEntry:SetText(objectives);
	
	button:SetText("Okay");
	
	-- A function to set the text entry's real value.
	function textEntry:SetRealValue(text)
		self:SetValue(text);
		self:SetCaretPos( string.len(text) );
	end;
	
	-- Called each frame.
	function textEntry:Think()
		local text = self:GetValue();
		
		if (string.len(text) > 10000) then
			self:SetRealValue( string.sub(text, 0, 10000) );
			
			surface.PlaySound("common/talk.wav");
		end;
	end;
	
	-- Called when the button is clicked.
	function button.DoClick(button)
		Clockwork.datastream:Start("EditObjectives", string.sub(textEntry:GetValue(), 0, 10000));
		
		self:Close(); self:Remove();
		
		gui.EnableScreenClicker(false);
	end;
	
	self.panelList:AddItem(textEntry);
	self.panelList:AddItem(button);
end;

-- Called when the layout should be performed.
function PANEL:PerformLayout()
	self.panelList:StretchToParent(4, 28, 4, 4);
	
	DFrame.PerformLayout(self);
end;

vgui.Register("cwObjectives", PANEL, "DFrame");