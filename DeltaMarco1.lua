-- Delta-compatible Marco Toggle Script

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "DeltaMarcoGui"
gui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0, 20, 0, 20)
button.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 24
button.Text = "Marco"
button.Parent = gui

local isActive = false

local function doLoop()
	while isActive do
		-- ตรงนี้คือส่วนที่จะรันซ้ำ ๆ
		-- ตัวอย่าง: ส่ง RemoteEvent, ฟาร์มหรือใช้สกิลในเกม
		print("Marco Loop Running...")  -- เปลี่ยนเป็นคำสั่งที่คุณต้องการในเกม
		wait(0.1)
	end
end

button.MouseButton1Click:Connect(function()
	isActive = not isActive
	if isActive then
		button.Text = "Marco ON"
		coroutine.wrap(doLoop)()
	else
		button.Text = "Marco OFF"
	end
end)
