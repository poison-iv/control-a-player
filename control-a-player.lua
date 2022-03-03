-- CREDS ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[[               ____  ______| dP     dP   88888888b dP        dP dP    dP 
 _      __(_)___  / __ \/ ____/| 88     88   88        88        88 Y8.  .8P 
| | /| / / / __ \/ /_/ /___ \  | 88aaaaa88a a88aaaa    88        88  Y8aa8P  
| |/ |/ / / / / /\__, /___/ /  | 88     88   88        88        88 d8'  `8b
|__/|__/_/_/ /_//____/_____/   | 88     88   88        88        88 88    88 
                               | dP     dP   88888888P 88888888P dP dP    dP 
Script made by win95|HELIX
--]]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- LOAD STATEMENT -------------------

print("control-a-player loaded!")

-------------------------------------

-- VARS ------------------------------

local player = game.Players.LocalPlayer
local Character = player.Character
local HumRoot = Character:WaitForChild("HumanoidRootPart")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--------------------------------------

-- CHANGENAME FUNCTION ------------------------

function changeName(n)

    local A_1 = "Update"
    
    local A_2 = {
      ["DescriptionText"] = n,
      ["ImageId"] = decal
    }
    local event = ReplicatedStorage.CustomiseBooth
  
    event:FireServer(A_1, A_2)
  
  end
  
---------------------------------------------------
changeName("Control a player!\n Controls: wasd (lowercased, in chat)")
game:GetService("Players").PlayerChatted:Connect(function(type, plr, message)
    if message == "w" then
        HumRoot.CFrame = HumRoot.CFrame*CFrame.new(0,0,-1)
        changeName("Control a player!\n Controls: wasd (lowercased, in chat) \n Last player to control: ".. plr.Name)
    end
    if message == "s" then
        HumRoot.CFrame = HumRoot.CFrame*CFrame.new(0,0,1)
        changeName("Control a player!\n Controls: wasd (lowercased, in chat) \n Last player to control: ".. plr.Name)
    end
    if message == "a" then
        HumRoot.CFrame = HumRoot.CFrame*CFrame.new(1,0,0)
        changeName("Control a player!\n Controls: wasd (lowercased, in chat) \n Last player to control: ".. plr.Name)
    end
    if message == "d" then
        HumRoot.CFrame = HumRoot.CFrame*CFrame.new(-1,0,0)
        changeName("Control a player!\n Controls: wasd (lowercased, in chat) \n Last player to control: ".. plr.Name)
    end
 end)