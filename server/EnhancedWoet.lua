function EnhancedWoet( action, player )

        vehicle = player:GetVehicle()
        
        if not IsValid(vehicle) then
                player:SendChatMessage( "You need to be in a vehicle!", Color( 255, 0, 0 ) )
                return
        end
 
        if player:GetWorld() ~= DefaultWorld then
                player:SendChatMessage( "This has been restricted to the main world. :(", Color( 255, 0, 0 ) )
                return
        end
 
        if player:GetState() ~= PlayerState.InVehicle then
                player:SendChatMessage( "Shame on you! You're not the driver!", Color( 255, 0, 0 ) )
                return
        end

		if action == "jump" then
			dir1 = vehicle:GetLinearVelocity() + Vector3( 0, 35, 0 )
			vehicle:SetLinearVelocity( dir1 )
		end
		
		if action == "roll" then
			dir2 = vehicle:GetAngle() * Vector3( 0, 0, -30 )
			vehicle:SetAngularVelocity( dir2 )
		end
		
		if action == "spin" then
			dir2 = vehicle:GetAngle() * Vector3( 0, -30, 0 )
			vehicle:SetAngularVelocity( dir2 )
		end
		
		if action == "flip" then
			dir2 = vehicle:GetAngle() * Vector3( -30, 0, 0 )
			vehicle:SetAngularVelocity( dir2 )
		end
		
        return false
end 
Network:Subscribe( "EnhancedWoet", EnhancedWoet )