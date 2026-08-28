-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:
function has_more_then_n_consumable(n)
    local count = Tracker:ProviderCountForCode('consumable')
    local val = (count > tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_more_then_n_consumable: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

-- Check If "Reach Port via sewer" mission is checked. Use to unlock other checks
function is_sewer_checked()
    return Tracker:FindObjectForCode("@Reach Port via sewer/").AvailableChestCount == 0
end

-- Check If "Beat turret challenge" mission is checked. Use to unlock other checks
function is_turret_checked()
    return Tracker:FindObjectForCode("@Beat turret challenge/").AvailableChestCount == 0
end

-- Check If "Destroy eggs in nest" mission is checked. Use to unlock other checks
function is_nest_eggs_checked()
    return Tracker:FindObjectForCode("@Sig/Destroy eggs in nest").AvailableChestCount == 0
end

-- Check If "Kill dark plants in forest" mission is checked. Use to unlock other checks
function is_dark_plants_checked()
    return Tracker:FindObjectForCode("@Haven Forest/Kill dark plants in forest").AvailableChestCount == 0
end

-- Check If "Beat pillar ring challenges" mission is checked. Use to unlock other checks
function is_pillar_checked()
    return Tracker:FindObjectForCode("@Haven Forest/Beat pillar ring challenges").AvailableChestCount == 0
end

-- Check If "Destroy barrier with missile" mission is checked. Use to unlock other checks
function is_missile_checked()
    return Tracker:FindObjectForCode("@Port Missions/Destroy barrier with missile").AvailableChestCount == 0
end

-- Check If "Activate Astro-Viewer in Haven Forest" mission is checked. Use to unlock other checks
function is_astro_viewer_checked()
    return Tracker:FindObjectForCode("@Haven Forest/Activate Astro-Viewer in Haven Forest").AvailableChestCount == 0
end

-- Check If "Destroy dark ship shield" mission is checked. Use to unlock other checks
function is_dark_ship_checked()
    return Tracker:FindObjectForCode("@Haven Forest/Destroy dark ship shield").AvailableChestCount == 0
end

-- Check If "Destroy war factory defenses" mission is checked. Use to unlock other checks
function is_dwf_checked()
    return Tracker:FindObjectForCode("@HQ Missions/Destroy war factory defenses").AvailableChestCount == 0
end

-- Check If "Explore war factory" mission is checked. Use to unlock other checks
function is_ewf_checked()
    return Tracker:FindObjectForCode("@HQ Missions/Explore war factory").AvailableChestCount == 0
end

-- Check If "Reach catacombs via palace ruins" mission is checked. Use to unlock other checks
function is_catacombs_checked()
    return Tracker:FindObjectForCode("@Reach catacombs via palace ruins/").AvailableChestCount == 0
end
