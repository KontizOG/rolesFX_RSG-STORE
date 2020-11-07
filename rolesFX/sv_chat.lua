--DO NOT TOUCH THE BELOW CODE IT COULD CAUSE SERIOUS PROBLEMS TO THE SCRIPT |RSG STORE| 
local Owner = {"steam:"}
local CoOwner = {"steam:"}
local CommunityManager = {"steam:"}
local CommunitySupervisor = {"steam:"}
local HeadAdmin = {"steam:"}
local Admin = {"steam:"}
local Supporter = {"steam:"}
local Helper = {"steam:110000141a28c7c"}



AddEventHandler('chatMessage', function(Source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
    else     
        local player = GetPlayerIdentifiers(Source)[1]
        if has_value(Owner, player) then
            TriggerClientEvent('chatMessage', -1, "Owner|" .. Name, { 255, 0, 0 }, Msg)           
        elseif has_value(CoOwner, player) then
            TriggerClientEvent('chatMessage', -1, "Co Owner|" .. Name, { 255, 0, 0 }, Msg)
        elseif has_value(CommunityManager, player) then
            TriggerClientEvent('chatMessage', -1, "Community Manager|" .. Name, { 0, 0, 255 }, Msg)
        elseif has_value(CommunitySupervisor, player) then
            TriggerClientEvent('chatMessage', -1, "Community Supervisor|" .. Name, { 0, 0, 255 }, Msg)
        elseif has_value(HeadAdmin, player) then
            TriggerClientEvent('chatMessage', -1, "STAFF™|Head Admin|" .. Name, { 255, 0, 0 }, Msg)
        elseif has_value(Admin, player) then
            TriggerClientEvent('chatMessage', -1, "STAFF™|Admin|" .. Name, { 255, 0, 0 }, Msg)
	    elseif has_value(Supporter, player) then
            TriggerClientEvent('chatMessage', -1, "STAFF™|Supporter|" .. Name, {255, 0, 0 }, Msg)
        elseif has_value(Helper, player) then
            TriggerClientEvent('chatMessage', -1, "STAFF™|Helper|" .. Name, { 255, 0, 0 }, Msg)
        end
            
    end
end)

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

---ALLOWS YOU TO CHECK VERSIONS IN GAME

AddEventHandler('chatMessage', function(source, name, msg)
  if msg:sub(1, 1) == "/" then
    sm = stringsplit(msg, " ");
	   if sm[1] == "/fversion" then
		     CancelEvent()
	TriggerClientEvent('chatMessage', source, "^0[^1RolesFX Script Version Check^0]", {30, 144, 255}, " ^2Version 1.1.0 | RolesFX By Jay Gatsby!^0 ) " .. string.sub(msg,11))
     end
  end

end)

---PRINT THE SIGN OF RSG STORE

print('=========================================================')
print('====================RolesFX|RSG STORE====================')
print('=========================================================')