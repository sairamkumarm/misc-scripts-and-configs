function Update()
    local h = tonumber(SKIN:GetMeasure("measureHour"):GetValue())
    local m = tonumber(SKIN:GetMeasure("measureMinute"):GetValue())
    local s = tonumber(SKIN:GetMeasure("measureSecond"):GetValue())
    local remaining = (23 - h) * 3600 + (59 - m) * 60 + (60 - s)

    if remaining <= 0 then
        return "00:00:00"
    end

    local rh = math.floor(remaining / 3600)
    local rm = math.floor((remaining % 3600) / 60)
    local rs = remaining % 60

    return string.format("%02d:%02d:%02d", rh, rm, rs)
end
