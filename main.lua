SLASH_DUMP1 = "/dump"

function SlashCmdList.DUMP(msg)
	local res = _G[msg]

	local action = loadstring("return " .. msg)
	if action ~= nil then
		res = {action()}
		if res[1] == nil then
			res = nil
		elseif table.getn(res) == 1 then
			res = res[1]
		end
	end

	if type(res) ~= "table" then
		print("type: " .. type(res))
		print(tostring(res))
		return
	end

	local table = res
	print("type: table")
	for k, v in table do
		print(k .. ": " .. tostring(v))
	end
end

local mount = {
	-- Human Horseys
	[51560] = "A",
	[51561] = "A",
	-- Rams
	[4779] = "A",
	[4710] = "A",

	-- Kodos
	[12354] = "H",
	[12355] = "H",
	-- Wolves
	[51580] = "H",
	[51581] = "H",
}
local icon_root = "Interface\\AddOns\\pfquest-mounts"
local icon_path = "mount"

for k, _ in pairs(mount) do
	pfDatabase:AddCustomIcon(k, icon_path, icon_root)
end

pfDB["meta"]["mount"] = mount

pfDatabase:TrackMeta("mount", true)
