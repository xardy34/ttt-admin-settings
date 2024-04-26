-- If you want to add a custom role that can open the settings, simply add 'or "your_custom_role_in_ulx"' before 'then' on line 7


util.AddNetworkString("AdminMenu")

concommand.Add("tttadminsettings", function(ply)
	if ply:GetUserGroup() == "superadmin" then 
		net.Start("AdminMenu")
		net.Send(ply)
	else
	print("You don't have access to open the settings.")
	end
end)