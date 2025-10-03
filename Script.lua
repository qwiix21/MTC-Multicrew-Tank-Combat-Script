getgenv().Toggle = true

local DB = false
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function getVehicleColor(name)
    if name:find("Mi%-") then return Color3.fromRGB(0, 255, 0)
    elseif name:find("2S") or name:find("BM%-21") then return Color3.fromRGB(255, 128, 0)
    elseif name:find("T%-") then return Color3.fromRGB(255, 0, 0)
    else return Color3.fromRGB(128, 128, 255) end
end

local function getDistance(vehicle)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local playerPos = LocalPlayer.Character.HumanoidRootPart.Position
        local vehiclePos = vehicle:GetPivot().Position
        return math.floor((playerPos - vehiclePos).Magnitude)
    end
    return 0
end

while task.wait() do
    if not getgenv().Toggle then
        break
    end
    if DB then 
        return 
    end
    DB = true

    pcall(function()
        local spawnedVehicles = workspace:FindFirstChild("SpawnedVehicles")
        if spawnedVehicles then
            for _, vehicle in pairs(spawnedVehicles:GetChildren()) do
                if vehicle and vehicle:FindFirstChild("VehicleESP") == nil and vehicle:FindFirstChild("VehicleInfo") == nil then
                    
                    local color = getVehicleColor(vehicle.Name)
                    local distance = getDistance(vehicle)
                    
                    local ESP = Instance.new("Highlight")
                    ESP.Name = "VehicleESP"
                    ESP.Adornee = vehicle
                    ESP.Archivable = true
                    ESP.Enabled = true
                    ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    ESP.FillColor = color
                    ESP.FillTransparency = 0.5
                    ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
                    ESP.OutlineTransparency = 0
                    ESP.Parent = workspace.CurrentCamera
                    
                    local Icon = Instance.new("BillboardGui", vehicle)
                    local ESPText = Instance.new("TextLabel")

                    Icon.Name = "VehicleInfo"
                    Icon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    Icon.Active = true
                    Icon.AlwaysOnTop = true
                    Icon.ExtentsOffset = Vector3.new(0, 1, 0)
                    Icon.LightInfluence = 1.000
                    Icon.Size = UDim2.new(0, 250, 0, 50)

                    ESPText.Name = "Vehicle Text"
                    ESPText.Parent = Icon
                    ESPText.BackgroundColor3 = color
                    ESPText.BackgroundTransparency = 1.000
                    ESPText.Size = UDim2.new(0, 250, 0, 50)
                    ESPText.Font = Enum.Font.SciFi
                    ESPText.Text = vehicle.Name .. " | Distance: " .. distance
                    ESPText.TextColor3 = color
                    ESPText.TextSize = 12.000
                    ESPText.TextWrapped = true
                    
                    local espRef = Instance.new("ObjectValue")
                    espRef.Name = "VehicleESP"
                    espRef.Value = ESP
                    espRef.Parent = vehicle
                else
                    local info = vehicle:FindFirstChild("VehicleInfo")
                    if info and info:FindFirstChild("Vehicle Text") then
                        local distance = getDistance(vehicle)
                        info["Vehicle Text"].Text = vehicle.Name .. " | Distance: " .. distance
                    end
                end
            end
        end
    end)
    
    wait()
    DB = false
end
