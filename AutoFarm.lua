local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("hrisitosense") then
    PlayerGui.hrisitosensee:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "hrisitosense"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local OuterFrame = Instance.new("Frame")
OuterFrame.Name = "OuterFrame"
OuterFrame.Size = UDim2.new(0, 260, 0, 170)
OuterFrame.Position = UDim2.new(0.5, -130, 0.4, 0)
OuterFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
OuterFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
OuterFrame.BorderSizePixel = 0
OuterFrame.Parent = ScreenGui

local OuterStroke = Instance.new("UIStroke")
OuterStroke.Name = "FrameBorder"
OuterStroke.Thickness = 6.1
OuterStroke.Color = Color3.fromRGB(28, 28, 28)
OuterStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
OuterStroke.LineJoinMode = Enum.LineJoinMode.Miter
OuterStroke.Parent = OuterFrame

local GradientFrame = Instance.new("Frame")
GradientFrame.Name = "Gradient"
GradientFrame.Size = UDim2.new(1, 0, 0, 2)
GradientFrame.Position = UDim2.new(0, 0, 0, 0)
GradientFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GradientFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
GradientFrame.BorderSizePixel = 0
GradientFrame.Parent = OuterFrame

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 108, 157)),
    ColorSequenceKeypoint.new(0.515, Color3.fromRGB(150, 34, 138)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(108, 155, 0))
})
UIGradient.Parent = GradientFrame

local GradientStroke = Instance.new("UIStroke")
GradientStroke.Color = Color3.fromRGB(39, 39, 39)
GradientStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GradientStroke.Parent = GradientFrame

local InnerFrame = Instance.new("Frame")
InnerFrame.Name = "InnerFrame"
InnerFrame.Size = UDim2.new(1, -24, 1, -24)
InnerFrame.Position = UDim2.new(0, 12, 0, 12)
InnerFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
InnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
InnerFrame.BorderSizePixel = 0
InnerFrame.Parent = OuterFrame

local InnerStroke = Instance.new("UIStroke")
InnerStroke.Color = Color3.fromRGB(39, 39, 39)
InnerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
InnerStroke.Parent = InnerFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.Size = UDim2.new(1, 0, 0, 28)
TitleLabel.Position = UDim2.new(0, 0, 0.04, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Hrisitosense - Murder Mystery 2"
TitleLabel.TextColor3 = Color3.fromRGB(196, 196, 196)
TitleLabel.TextSize = 14
TitleLabel.TextXAlignment = Enum.TextXAlignment.Center
TitleLabel.TextWrapped = true
TitleLabel.ZIndex = 99999999
TitleLabel.FontFace = Font.new("rbxassetid://16658246179", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TitleLabel.Parent = InnerFrame

local TitleStroke = Instance.new("UIStroke")
TitleStroke.LineJoinMode = Enum.LineJoinMode.Miter
TitleStroke.Parent = TitleLabel

local CreditLabel = Instance.new("TextLabel")
CreditLabel.Name = "Credit"
CreditLabel.Size = UDim2.new(1, 0, 0, 15)
CreditLabel.Position = UDim2.new(0, 0, 0.85, 0)
CreditLabel.BackgroundTransparency = 1
CreditLabel.Text = "by @dj_swaston"
CreditLabel.TextColor3 = Color3.fromRGB(196, 196, 196)
CreditLabel.TextSize = 9
CreditLabel.TextXAlignment = Enum.TextXAlignment.Center
CreditLabel.TextTransparency = 0.9
CreditLabel.TextWrapped = true
CreditLabel.ZIndex = 99999999
CreditLabel.FontFace = Font.new("rbxassetid://16658246179", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
CreditLabel.Parent = InnerFrame

local StartButton = Instance.new("TextButton")
StartButton.Name = "StartButton"
StartButton.Size = UDim2.new(0.35, 0, 0, 28)
StartButton.Position = UDim2.new(0.325, 0, 0.30, 0)
StartButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
StartButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
StartButton.BorderSizePixel = 0
StartButton.Text = "Start"
StartButton.TextColor3 = Color3.fromRGB(201, 201, 201)
StartButton.TextSize = 14
StartButton.RichText = true
StartButton.AutoButtonColor = false
StartButton.FontFace = Font.new("rbxassetid://16658246179", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
StartButton.Parent = InnerFrame

local StartStroke1 = Instance.new("UIStroke")
StartStroke1.LineJoinMode = Enum.LineJoinMode.Miter
StartStroke1.Parent = StartButton

local StartStroke2 = Instance.new("UIStroke")
StartStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
StartStroke2.Parent = StartButton

local speedValue = 50

local SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Size = UDim2.new(0.45, 0, 0, 20)
SpeedLabel.Position = UDim2.new(0.06, 0, 0.58, 0)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.Text = "Speed: 50"
SpeedLabel.TextColor3 = Color3.fromRGB(196, 196, 196)
SpeedLabel.TextSize = 12
SpeedLabel.TextXAlignment = Enum.TextXAlignment.Left
SpeedLabel.FontFace = Font.new("rbxassetid://16658246179", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
SpeedLabel.Parent = InnerFrame

local SliderTrack = Instance.new("Frame")
SliderTrack.Size = UDim2.new(0.50, 0, 0, 6)
SliderTrack.Position = UDim2.new(0.06, 0, 0.72, 0)
SliderTrack.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
SliderTrack.BorderSizePixel = 0
SliderTrack.Parent = InnerFrame

local SliderFill = Instance.new("Frame")
SliderFill.Size = UDim2.new(0.5, 0, 1, 0)
SliderFill.BackgroundColor3 = Color3.fromRGB(150, 34, 138)
SliderFill.BorderSizePixel = 0
SliderFill.Parent = SliderTrack

local SliderButton = Instance.new("TextButton")
SliderButton.Size = UDim2.new(0, 16, 0, 16)
SliderButton.Position = UDim2.new(0.5, -8, 0.5, -8)
SliderButton.BackgroundColor3 = Color3.fromRGB(201, 201, 201)
SliderButton.Text = ""
SliderButton.BorderSizePixel = 0
SliderButton.Parent = SliderTrack

local SliderButtonShadow = Instance.new("UIStroke")
SliderButtonShadow.Color = Color3.fromRGB(0, 0, 0)
SliderButtonShadow.Thickness = 2
SliderButtonShadow.Transparency = 0.5
SliderButtonShadow.Parent = SliderButton

local sliderDragging = false

local function UpdateSpeed(input)
    local trackSize = SliderTrack.AbsoluteSize.X
    if trackSize == 0 then return end
    local mouseX = input.Position.X - SliderTrack.AbsolutePosition.X
    local percent = math.clamp(mouseX / trackSize, 0, 1)
    
    speedValue = math.floor(percent * 100) + 1
    SpeedLabel.Text = "Speed: " .. speedValue
    SliderFill.Size = UDim2.new(percent, 0, 1, 0)
    SliderButton.Position = UDim2.new(percent, -8, 0.5, -8)
end

SliderButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        sliderDragging = true
        UpdateSpeed(input)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if sliderDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        UpdateSpeed(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        sliderDragging = false
    end
end)

SliderTrack.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        UpdateSpeed(input)
    end
end)

pcall(function()
    local VirtualUser = game:GetService("VirtualUser")
    LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

local isFarming = false
local farmingConnection = nil
local coinsCollected = 0
local noclipConnection = nil
local hasCollectedAtLeastOne = false
local noCoinTimer = 0
local maxnct = 10

local Char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HRP = Char:WaitForChild("HumanoidRootPart")
local Humanoid = Char:WaitForChild("Humanoid")

local function EnableNoclip()
    if noclipConnection then return end
    noclipConnection = RunService.Heartbeat:Connect(function()
        if not isFarming then return end
        if not Char or not HRP then return end
        for _, part in ipairs(Char:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end)
end

local function DisableNoclip()
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
    if Char then
        for _, part in ipairs(Char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

local function AutoRespawn()
    if not Humanoid then return end
    Humanoid.Health = 0
    coinsCollected = 0
    hasCollectedAtLeastOne = false
end

local function GetMap()
    for _, obj in ipairs(workspace:GetChildren()) do
        if obj:GetAttribute("MapID") and obj:FindFirstChild("CoinContainer") then
            return obj
        end
    end
    return nil
end

local function getNearest()
    local map = GetMap()
    if not map then return nil end
    local coinContainer = map:FindFirstChild("CoinContainer")
    if not coinContainer then return nil end

    local closest, dist = nil, math.huge
    for _, coin in ipairs(coinContainer:GetChildren()) do
        local visual = coin:FindFirstChild("CoinVisual")
        if visual and not visual:GetAttribute("Collected") then
            local d = (HRP.Position - coin.Position).Magnitude
            if d < dist then
                closest = coin
                dist = d
            end
        end
    end
    return closest
end

local function tp(hp)
    if not HRP or not Humanoid then return end
    Humanoid:ChangeState(Enum.HumanoidStateType.Running)
    local distance = (HRP.Position - hp.Position).Magnitude
    local speed = speedValue / 2
    if speed < 1 then speed = 1 end
    local tween = TweenService:Create(HRP, TweenInfo.new(distance / speed, Enum.EasingStyle.Linear), {
        CFrame = hp.CFrame
    })
    tween:Play()
    tween.Completed:Wait()
end

local function startFarming()
    if farmingConnection then return end
    
    coinsCollected = 0
    noCoinTimer = 0
    hasCollectedAtLeastOne = false
    EnableNoclip()
    
    farmingConnection = task.spawn(function()
        while isFarming do
            if not LocalPlayer:GetAttribute("Alive") then
                repeat
                    task.wait(1)
                until LocalPlayer:GetAttribute("Alive") or not isFarming
                coinsCollected = 0
                hasCollectedAtLeastOne = false
                Char = LocalPlayer.Character
                if Char then
                    HRP = Char:FindFirstChild("HumanoidRootPart")
                    Humanoid = Char:FindFirstChild("Humanoid")
                end
                if not HRP or not Humanoid then
                    task.wait(1)
                    continue
                end
                noCoinTimer = 0
            end

            if not HRP or not Humanoid then
                task.wait(0.5)
                continue
            end

            local target = getNearest()
            if target then
                hasCollectedAtLeastOne = true
                noCoinTimer = 0
                
                tp(target)
                local visual = target:FindFirstChild("CoinVisual")
                while visual and not visual:GetAttribute("Collected") and visual.Parent and isFarming do
                    if not LocalPlayer:GetAttribute("Alive") then break end
                    local newTarget = getNearest()
                    if newTarget and newTarget ~= target then break end
                    task.wait()
                end
                coinsCollected = coinsCollected + 1
                
                if coinsCollected >= math.random(40, 50) then
                    AutoRespawn()
                    repeat
                        task.wait(1)
                    until LocalPlayer:GetAttribute("Alive") or not isFarming
                    coinsCollected = 0
                    hasCollectedAtLeastOne = false
                    Char = LocalPlayer.Character
                    if Char then
                        HRP = Char:FindFirstChild("HumanoidRootPart")
                        Humanoid = Char:FindFirstChild("Humanoid")
                    end
                    noCoinTimer = 0
                end
            else
                if hasCollectedAtLeastOne then
                    noCoinTimer = noCoinTimer + 0.5
                    if noCoinTimer >= maxnct then
                        AutoRespawn()
                        repeat
                            task.wait(1)
                        until LocalPlayer:GetAttribute("Alive") or not isFarming
                        coinsCollected = 0
                        hasCollectedAtLeastOne = false
                        Char = LocalPlayer.Character
                        if Char then
                            HRP = Char:FindFirstChild("HumanoidRootPart")
                            Humanoid = Char:FindFirstChild("Humanoid")
                        end
                        noCoinTimer = 0
                    end
                end
                task.wait(0.5)
            end
        end
    end)
end

local function stopFarming()
    isFarming = false
    noCoinTimer = 0
    hasCollectedAtLeastOne = false
    if farmingConnection then
        task.cancel(farmingConnection)
        farmingConnection = nil
    end
    DisableNoclip()
    coinsCollected = 0
end

local function toggleFarming()
    isFarming = not isFarming

    if isFarming then
        StartButton.Text = "Stop"
        StartButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        startFarming()
    else
        StartButton.Text = "Start"
        StartButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        stopFarming()
    end
end

local function TweenButtonColor(button, targetColor, duration)
    local tween = TweenService:Create(button, TweenInfo.new(duration or 0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = targetColor
    })
    tween:Play()
    return tween
end

local function SetupButton(button, defaultColor, hoverColor, clickColor)
    button.MouseEnter:Connect(function()
        TweenButtonColor(button, hoverColor, 0.1)
    end)

    button.MouseLeave:Connect(function()
        TweenButtonColor(button, defaultColor, 0.1)
    end)

    button.MouseButton1Down:Connect(function()
        TweenButtonColor(button, clickColor, 0.05)
    end)

    button.MouseButton1Up:Connect(function()
        TweenButtonColor(button, hoverColor, 0.05)
    end)
end

SetupButton(StartButton, Color3.fromRGB(23, 23, 23), Color3.fromRGB(45, 45, 45), Color3.fromRGB(60, 60, 60))

StartButton.MouseButton1Click:Connect(toggleFarming)

local dragging = false
local dragStartMousePos = nil
local dragStartFramePos = nil

local function StartDrag(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStartMousePos = input.Position
        dragStartFramePos = OuterFrame.Position
    end
end

local function UpdateDrag(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStartMousePos
        OuterFrame.Position = UDim2.new(
            dragStartFramePos.X.Scale,
            dragStartFramePos.X.Offset + delta.X,
            dragStartFramePos.Y.Scale,
            dragStartFramePos.Y.Offset + delta.Y
        )
    end
end

local function StopDrag(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end

OuterFrame.InputBegan:Connect(StartDrag)
OuterFrame.InputChanged:Connect(UpdateDrag)
OuterFrame.InputEnded:Connect(StopDrag)
TitleLabel.InputBegan:Connect(StartDrag)
TitleLabel.InputChanged:Connect(UpdateDrag)
TitleLabel.InputEnded:Connect(StopDrag)

LocalPlayer.CharacterAdded:Connect(function(char)
    Char = char
    HRP = char:WaitForChild("HumanoidRootPart")
    Humanoid = char:WaitForChild("Humanoid")
    noCoinTimer = 0
    hasCollectedAtLeastOne = false
    coinsCollected = 0
    
    if isFarming then
        if farmingConnection then
            task.cancel(farmingConnection)
            farmingConnection = nil
        end
        task.wait(1)
        if isFarming then
            startFarming()
        end
    end
end)

return ScreenGui
