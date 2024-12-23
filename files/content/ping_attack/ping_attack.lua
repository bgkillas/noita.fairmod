dofile("data/scripts/lib/coroutines.lua")

local module = {}

function module.update()
	SetRandomSeed(GameGetFrameNum(), 80)
	local chance = 3600 * 60 / 2
	if Random(1, chance) == 1 then
		GamePlaySound("mods/noita.fairmod/fairmod.bank", "pingattack/discord", 0, 0)

		local prev_cnt = ModSettingGet("noita.fairmod.discord_pings") or 0
		ModSettingSet("noita.fairmod.discord_pings", prev_cnt + 1)
	end
end

return module
