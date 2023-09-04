-- Universal_Simplified for Logitech GHUB
-- github @yorisofficial

local NR = 1                            -- rubah angka 1 - 5 untuk menyesuaikan weapons recoil
local Sleep_ = 10                       -- jangan rubah apapun!
local ActivationButton = "scrolllock"   -- rubah untuk menyesuaikan

EnablePrimaryMouseButtonEvents(true)

function NoRecoil()
    repeat
        MoveMouseRelative(0, NR)
        Sleep(Sleep_)
    until not IsMouseButtonPressed(1)
end

function OnEvent(event, arg)
    if IsKeyLockOn(ActivationButton) and event == "MOUSE_BUTTON_PRESSED" and arg == 1 then
        NoRecoil()
    end
end