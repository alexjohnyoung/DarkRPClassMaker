surface.CreateFont("classmaker_buttons", {
font = "Arial",
size = 20
} )

surface.CreateFont("classmaker_create", {
font = "Arial",
size = 30
} )

file.CreateDir("classmaker")
file.CreateDir("classmaker/classes")

local job_color = Color(255, 255, 255)

local ClassMaker = vgui.Create("DFrame")
ClassMaker:SetPos(ScrW()/2.6, ScrH()/4)
ClassMaker:SetSize(500, 400)
ClassMaker:SetTitle("DarkRP Class Maker")
ClassMaker:SetDraggable(true)
ClassMaker:ShowCloseButton(true)
ClassMaker:MakePopup()

	function ClassMaker:Paint()
	draw.RoundedBox(0, 0, 0, 500, 400, Color(30, 30, 30))
	end
	
local ClassMakerTeam = vgui.Create("DTextEntry", ClassMaker)
ClassMakerTeam:SetPos(5, 50)
ClassMakerTeam:SetText("TEAM_")
ClassMakerTeam:SetVisible(true)
ClassMakerTeam:SetWide(80)

local ClassMakerModel = vgui.Create("DTextEntry", ClassMaker)
ClassMakerModel:SetPos(5, 80)
ClassMakerModel:SetText("Model")
ClassMakerModel:SetVisible(true)
ClassMakerModel:SetWide(180)

	
local ClassMakerDescription = vgui.Create("DTextEntry", ClassMaker)
ClassMakerDescription:SetPos(5, 110)
ClassMakerDescription:SetText("Description")
ClassMakerDescription:SetVisible(true)
ClassMakerDescription:SetTall(100)
ClassMakerDescription:SetWide(250)
ClassMakerDescription:SetMultiline(true)

	
local ClassMakerWeapons = vgui.Create("DTextEntry", ClassMaker)
ClassMakerWeapons:SetPos(5, 220)
ClassMakerWeapons:SetText("Weapons: e.g: {weapon_bugbait, weapon_glock}")
ClassMakerWeapons:SetWide(260)
	
local ClassMakerMax = vgui.Create("DTextEntry", ClassMaker)
ClassMakerMax:SetPos(5, 250)
ClassMakerMax:SetText("Max amount")
ClassMakerMax:SetWide(65)

local ClassMakerSalary = vgui.Create("DTextEntry", ClassMaker)
ClassMakerSalary:SetPos(5, 280)
ClassMakerSalary:SetText("Salary")
ClassMakerSalary:SetWide(40)

local ClassMakerAdmin = vgui.Create("DCheckBox", ClassMaker)
ClassMakerAdmin:SetPos(460, 60)

local ClassMakerAdminLabel = vgui.Create("DLabel", ClassMaker)
ClassMakerAdminLabel:SetPos(425, 57)
ClassMakerAdminLabel:SetTextColor(Color(255, 255, 255))
ClassMakerAdminLabel:SetText("Admin:")

local ClassMakerVote = vgui.Create("DCheckBox", ClassMaker)
ClassMakerVote:SetPos(460, 80)

local ClassMakerVoteLabel = vgui.Create("DLabel", ClassMaker)
ClassMakerVoteLabel:SetPos(430, 77)
ClassMakerVoteLabel:SetTextColor(Color(255, 255, 255))
ClassMakerVoteLabel:SetText("Vote:")

local ClassMakerLicense = vgui.Create("DCheckBox", ClassMaker)
ClassMakerLicense:SetPos(460, 100)

local ClassMakerLicenseLabel = vgui.Create("DLabel", ClassMaker)
ClassMakerLicenseLabel:SetPos(420, 97)
ClassMakerLicenseLabel:SetTextColor(Color(255, 255, 255))
ClassMakerLicenseLabel:SetText("License:")

local ClassMakerDemote = vgui.Create("DCheckBox", ClassMaker)
ClassMakerDemote:SetPos(460, 120)

local ClassMakerDemoteLabel = vgui.Create("DLabel", ClassMaker)
ClassMakerDemoteLabel:SetPos(418, 117)
ClassMakerDemoteLabel:SetTextColor(Color(255, 255, 255))
ClassMakerDemoteLabel:SetText("Demote:")


local ClassMakerColor = vgui.Create("DColorMixer", ClassMaker)
ClassMakerColor:SetPos(1, 30)
ClassMakerColor:SetPalette(true) 
ClassMakerColor:SetAlphaBar(true)
ClassMakerColor:SetVisible(false)
ClassMakerColor:SetColor(Color( 255, 255, 255))

local ClassMakerBackButton = vgui.Create("DButton", ClassMaker)
ClassMakerBackButton:SetPos(1, 270)
ClassMakerBackButton:SetVisible(false)
ClassMakerBackButton:SetText("Back")
ClassMakerBackButton:SetTextColor(Color(255, 255, 255))
ClassMakerBackButton:SetFont("classmaker_buttons")
ClassMakerBackButton:SetWide(60)
ClassMakerBackButton:SetDrawBackground(false)

	function ClassMakerBackButton:OnCursorEntered()
	ClassMakerBackButton:SetTextColor(Color(0, 255, 0))
	end
	
	function ClassMakerBackButton:OnCursorExited()
	ClassMakerBackButton:SetTextColor(Color(255, 255, 255))
	end
	
	function ClassMakerBackButton:DoClick()
	ClassMaker:SetSize(500, 400)
	ClassMakerTeam:SetVisible(true)
	ClassMakerModel:SetVisible(true)
	ClassMakerDescription:SetVisible(true)
	ClassMakerWeapons:SetVisible(true)
	ClassMakerMax:SetVisible(true)
	ClassMakerSalary:SetVisible(true)
	ClassMakerAdmin:SetVisible(true)
	ClassMakerAdminLabel:SetVisible(true)
	ClassMakerVote:SetVisible(true)
	ClassMakerVoteLabel:SetVisible(true)
	ClassMakerDemote:SetVisible(true)
	ClassMakerDemoteLabel:SetVisible(true)
	ClassMakerBackButton:SetVisible(false)
	ClassMakerColor:SetVisible(false)
	job_color = ClassMakerColor:GetColor()
	end
	
local ClassMakerColorTabB = vgui.Create("DButton", ClassMaker)
ClassMakerColorTabB:SetPos(400, 30)
ClassMakerColorTabB:SetText("Select color")
ClassMakerColorTabB:SetTextColor(Color(255, 255, 255))
ClassMakerColorTabB:SetFont("classmaker_buttons")
ClassMakerColorTabB:SetWide(90)
ClassMakerColorTabB:SetDrawBackground(false)

	function ClassMakerColorTabB:OnCursorEntered()
	ClassMakerColorTabB:SetTextColor(Color(119, 0, 255))
	end
	
	function ClassMakerColorTabB:OnCursorExited()
	ClassMakerColorTabB:SetTextColor(Color(255, 255, 255))
	end
	
	function ClassMakerColorTabB:DoClick()
	ClassMaker:SetSize(260, 300)
	ClassMakerTeam:SetVisible(false)
	ClassMakerModel:SetVisible(false)
	ClassMakerDescription:SetVisible(false)
	ClassMakerWeapons:SetVisible(false)
	ClassMakerMax:SetVisible(false)
	ClassMakerSalary:SetVisible(false)
	ClassMakerAdmin:SetVisible(false)
	ClassMakerAdminLabel:SetVisible(false)
	ClassMakerVote:SetVisible(false)
	ClassMakerVoteLabel:SetVisible(false)
	ClassMakerDemote:SetVisible(false)
	ClassMakerDemoteLabel:SetVisible(false)
	ClassMakerColor:SetVisible(true)
	ClassMakerBackButton:SetVisible(true)
	end

local ClassMakerCreate = vgui.Create("DButton", ClassMaker)
ClassMakerCreate:SetPos(180, 350)
ClassMakerCreate:SetTextColor(Color(255, 255, 255))
ClassMakerCreate:SetText("Create")
ClassMakerCreate:SetFont("classmaker_create")
ClassMakerCreate:SetDrawBackground(false)
ClassMakerCreate:SetWide(100)

	function ClassMakerCreate:OnCursorEntered()
	ClassMakerCreate:SetTextColor(Color(255, 0, 0))
	end
	
	function ClassMakerCreate:OnCursorExited()
	ClassMakerCreate:SetTextColor(Color(255, 255, 255))
	end
	
	function ClassMakerCreate:DoClick()
	local team_value = ClassMakerTeam:GetValue()
	local model_value = ClassMakerModel:GetValue()
	local description_value = ClassMakerDescription:GetValue()
	local weapons_value = ClassMakerWeapons:GetValue()
	local max = ClassMakerMax:GetValue()
	local salary = ClassMakerSalary:GetValue()
	local admin = ClassMakerAdmin:GetChecked()
	local vote = ClassMakerVote:GetChecked()
	local license = ClassMakerLicense:GetChecked()
	local demote = ClassMakerDemote:GetChecked()
		if admin then
		admin = 1
		else
		admin = 0
		end
		if !vote then
		vote = "false"
		else
		vote = "true"
		end
		if !license then
		license = "false"
		else
		license = "true"
		end
		if demote then
		demote = "true"
		else
		demote = "false"
		end
		
		if team_value ~= "TEAM_" 
		and model_value ~= "Model" 
		and description_value ~= "Description" 
		and weapons_value ~= "Weapons: e.g: {weapon_bugbait, weapon_glock}" 
		and max ~= "Max amount" 
		and salary ~= "Salary" then
		
		local team_extrateam1 = string.upper(string.sub(team_value, 6, 6))
		local team_extrateam2 = team_extrateam1..string.lower(string.sub(team_value, 7))
		local firstline = string.upper(team_value).." = AddExtraTeam("..team_extrateam2..", { \n"
		local writecolor = "color = Color("..job_color["r"]..","..job_color["g"]..","..job_color["b"]..","..job_color["a"].."),\n"
		local writemodel = "model = "..model_value..",\n"
		local writedescription = "description = [["..description_value.."]],\n"
		local writeweapons = "weapons = "..weapons_value..",\n"
		local writecommand = "command = "..string.lower(string.sub(team_value, 6))..",\n"
		local writemax = "max = "..max..",\n"
		local writesalary = "salary = "..salary..",\n"
		local writeadmin = "admin = "..admin..",\n"
		local writevote = "vote = "..vote..",\n"
		local writelicense = "hasLicense = "..license.."\n}"
		
		local write1 = "classmaker/classes/"..team_value..".txt"
		local write2 = firstline..writecolor..writemodel..writedescription..writeweapons..writecommand..writemax..writesalary..writeadmin..writevote..writelicense
		file.Write(write1, write2)
		print(write2)
		end
	end
	
