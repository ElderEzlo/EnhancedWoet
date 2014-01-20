--Edit Keybindings Here
jumpKey = "J"
rollKey = "K"
spinKey = "L"
flipKey = ";"

--Set to false to disable a manoeuvre
jumpEnabled = true
rollEnabled = true
spinEnabled = true
flipEnabled = true

function KeyUp( args )

	if Game:GetState() ~= GUIState.Game then return end
	
	if args.key == string.byte( jumpKey ) and jumpEnabled then
		Network:Send( "EnhancedWoet", "jump" )
	end
	
	if args.key == string.byte( rollKey ) and rollEnabled then
		Network:Send( "EnhancedWoet", "roll" )
	end
	
	if args.key == string.byte( spinKey ) and spinEnabled then
		Network:Send( "EnhancedWoet", "spin" )
	end
	
	if args.key == string.byte( flipKey ) and flipEnabled then
		Network:Send( "EnhancedWoet", "flip" )
	end
        
end 
Events:Subscribe( "KeyUp", KeyUp )