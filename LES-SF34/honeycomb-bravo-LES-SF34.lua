create_command("FlyWithLua/HC_Bravo/SF34/HDG_Up", "Smoothed increase active HDG", "heading_up()", "", "")
create_command("FlyWithLua/HC_Bravo/SF34/HDG_Down", "Smoothed decrease active HDG", "heading_down()", "", "")
create_command("FlyWithLua/HC_Bravo/SF34/CRS_Up", "Smoothed increase active CRS", "course_up()", "", "")
create_command("FlyWithLua/HC_Bravo/SF34/CRS_Down", "Smoothed decrease active CRS", "course_down()", "", "")

-- Use the FWL Show joystick button numbers macro to find this
-- Course selector knob toggled via bravo switch 2
local bravo_sw_2 = 836

function heading_up()
    smooth("sim/autopilot/heading_up")
end

function course_up()
    if button(bravo_sw_2) then
        smooth("sim/radios/obs2_up")
    else
        smooth("sim/radios/obs1_up")
    end
end

function heading_down()
    smooth("sim/autopilot/heading_down")
end

function course_down()
    if button(bravo_sw_2) then
        smooth("sim/radios/obs2_down")
    else
        smooth("sim/radios/obs1_down")
    end
end

-- Left and right landing lights toggled via alpha LAND switch
create_command("FlyWithLua/HC_Alpha/SF34/landing_lights_on", "Toggle landing lights", "land_lts_toggle()", "", "")
function land_lts_toggle()
    command_once("LES/CMD/landing_light_toggle_L")
    command_once("LES/CMD/landing_light_toggle_R")
end

-- Helpers
lastclock = os.clock()
function smooth (command)
    clocknow = os.clock()
    delta = clocknow - lastclock
    if((clocknow - lastclock) < 0.1) then
        for i=0,30 do
            command_once(command)
        end
    elseif((clocknow - lastclock) < 0.3) then
        for i=0,10 do
            command_once(command)
        end
    else
        command_once(command)
    end
    -- update with the latest clock
    lastclock = clocknow
end