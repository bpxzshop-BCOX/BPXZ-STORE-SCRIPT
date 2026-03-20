local StarterGui = game:GetService("StarterGui")
local function notify(message)
    StarterGui:SetCore("SendNotification", {
        Title = "Notification";
        Text = message;
        Duration = 5;
        Icon = "rbxassetid://96118904322437" -- << เปลี่ยนเป็น ID รูปภาพที่คุณต้องการ
    })
end
notify("ERROR")
