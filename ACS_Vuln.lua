local found1 = false
local found2 = false

function toast(tit, con, col)
    syn.toast_notification({
        Type = ToastType.Info,
        Duration = 7.5,
        Title = tit,
        Content = con,
        IconColor = Color3.fromRGB(col, 234, 102)
    })
end
for i,v in pairs(game:GetDescendants()) do
	if v.Name == "Recarregar" then
		event = v
	end
	if v.Name == "Refil" then
		event2 = v
	end
end

if event then
    toast("Found ACS1", "", 128)
else
    toast("No ACS1", "", 234)
end

if event2 then
    toast("Found ACS2", "", 128)
else
    toast("No ACS2", "", 234)
end

if event then
    getgenv().SetValue = function(ValueObj,NewValue) -- NewValue
        event:FireServer(NewValue,{ACS_Modulo = {Variaveis = {StoredAmmo = ValueObj}}})
    end
end

if event2 then
    getgenv().SetValue2 = function(ValueObj,NewValue) -- NewValue
        event2:FireServer(NewValue,{ACS_Modulo = {Variaveis = {StoredAmmo = ValueObj}}})
    end
end
