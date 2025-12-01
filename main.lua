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
