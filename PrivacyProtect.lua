function PPStart()
	if (AreAccountAchievementsHidden() == false) then
		message("PrivacyProtect: Your account-wide achievements are now hidden.");
		ShowAccountAchievements(true);
	end
end


local frame = CreateFrame("FRAME", "PPFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");

local function PPeventHandler(self, event, ...)
	if ( event == "PLAYER_ENTERING_WORLD" ) then
		PPStart();
	end
end

frame:SetScript("OnEvent", PPeventHandler);
