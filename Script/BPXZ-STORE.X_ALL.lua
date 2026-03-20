-- Map Script Loader
local placeId = game.PlaceId

-- ตารางเก็บ MapId + Script
local scripts = {
    [142823291] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/mm2.lua",
	[155615604] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/Prsion-LIfe.lua",
	[136801880565837] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/%5BFPS%5D%20Flick.lua",
	[126884695634066] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/Grow%20a%20Garden.lua",
	[79546208627805] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/99%20nights%20in%20the%20forest.lua",
	[2753915549] = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/blox%20fruits.lua"
}

-- Default Script (ถ้าไม่ตรงแมพ)
local defaultScript = "https://raw.githubusercontent.com/bpxzshop-BCOX/BPXZ-STORE-SCRIPT/main/Script/error.lua"

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
