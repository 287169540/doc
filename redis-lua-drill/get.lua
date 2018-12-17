--[[
file name: get.lua
redis-cli --eval get.lua name
--]]
local num = redis.call('GET', KEYS[1]); 
return num;
