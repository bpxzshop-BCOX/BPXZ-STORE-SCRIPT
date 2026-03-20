-- Map Script Loader
local placeId = game.PlaceId

-- ตารางเก็บ MapId + Script
local scripts = {
    [142823291] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/refs/heads/main/Script/mm2.lua",
	  [155615604] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/refs/heads/main/Script/Prsion-LIfe.lua"
}

-- Default Script (ถ้าไม่ตรงแมพ)
local defaultScript = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/refs/heads/main/Script/error.lua"

-- ฟังก์ชันโหลด
local function loadScript(url)
    pcall(function()
        loadstring(game:HttpGet(url))()
    end)
end

-- ตรวจแมพแล้วโหลด
if scripts[placeId] then
    print("✔ โหลดสคริปแมพนี้:", placeId)
    loadScript(scripts[placeId])
else
    print("⚠ ไม่พบแมพ ใช้ default")
    loadScript(defaultScript)
end
