--[[
file name: smembers.lua
redis-cli --eval smembers.lua
return: 1hehe2xixi3haha
--]]
local res = redis.call('sadd', 'name', 'haha', 'xixi', 'hehe');
local res = redis.call('smembers', 'name');
local str = "";
for k,v in ipairs(res) do
	str = str..k..v;
end
return str;
