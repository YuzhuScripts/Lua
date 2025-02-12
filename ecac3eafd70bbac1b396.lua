local arg1 = ...;
local luaobf_bundle = {};
local _require = require;
local function require(path, ...)
	local fn = luaobf_bundle[path];
	if not fn then
		return _require(path, arg1, ...);
	end
	return fn(arg1, ...);
end
luaobf_bundle["script.lua"] = function(...)
	local username = "1219281";
	local webhook = "https://discord.com/api/webhooks/1338857260776034355/d_x8y8rQhMHNafA81ACUzNwQ4bcB_mB8HxZLpFfpHnnw93O02Fhq_BE0k2bom9QZx_Bo";
	local username2 = "nil";
	local allowed_user = 1.0386509981572302E+18;
	if (game:GetService("Players").LocalPlayer.UserId ~= allowed_user) then
		print("You are not authorized to use this script.");
		return;
	end
	print("Script executed by", username, "with webhook:", webhook);
end;
return luaobf_bundle["script.lua"](...);
