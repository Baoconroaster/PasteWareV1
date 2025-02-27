if isfolder("PasteWare") then
 if isfile("loader.lua") then
    writefile("loader.lua",'loadstring(game:HttpGet("https://raw.githubusercontent.com/Baoconroaster/PasteWareV1/refs/heads/main/loader.lua"))()')
  else
    loadstring(readfile('loader.lua'))() -- i use readfile cuz delta file functions suck
  end
else
  makefolder("PasteWare")
  repeat task.wait() until isfolder("PasteWare")
  writefile("PasteWare/loader.lua", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Baoconroaster/PasteWareV1/refs/heads/main/loader.lua"))()')
end



local suc,err = pcall(function()
                   loadstring(game:HttpGet("https://raw.githubusercontent.com/Baoconroaster/PasteWareV1/refs/heads/main/games/" .. game.PlaceId .. ".lua"))()
                end)

if suc ~= nil and not suc == false then
  print("e")
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Baoconroaster/PasteWareV1/refs/heads/main/games/universal.lua"))()
end
