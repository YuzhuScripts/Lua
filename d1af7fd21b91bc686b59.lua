local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local obf_OR = obf_bitlib.bor;
local obf_AND = obf_bitlib.band;
local username = _G['LUAOBFUSACTOR_DECRYPT_STR_0'](_G['LUAOBFUSACTOR_DECRYPT_STR_0'], _G['LUAOBFUSACTOR_DECRYPT_STR_0']);
local webhook = _G['LUAOBFUSACTOR_DECRYPT_STR_0'](_G['LUAOBFUSACTOR_DECRYPT_STR_0'], _G['LUAOBFUSACTOR_DECRYPT_STR_0']);
local allowed_user = 1.0386509981572302E+18 - 0;
if (((3372 + 570) == (4292 - (87 + 263))) and (game:GetService(_G['LUAOBFUSACTOR_DECRYPT_STR_0'](_G['LUAOBFUSACTOR_DECRYPT_STR_0'], _G['LUAOBFUSACTOR_DECRYPT_STR_0'])).LocalPlayer.UserId ~= allowed_user)) then
	while true do
		if ((0 == (0 - 0)) or ((2414 + 868) > (18787 - 14060))) then
			print(_G['LUAOBFUSACTOR_DECRYPT_STR_0'](_G['LUAOBFUSACTOR_DECRYPT_STR_0'], _G['LUAOBFUSACTOR_DECRYPT_STR_0']));
			return;
		end
	end
end
print(_G['LUAOBFUSACTOR_DECRYPT_STR_0'](_G['LUAOBFUSACTOR_DECRYPT_STR_0'], _G['LUAOBFUSACTOR_DECRYPT_STR_0']), username, _G['LUAOBFUSACTOR_DECRYPT_STR_0'](_G['LUAOBFUSACTOR_DECRYPT_STR_0'], _G['LUAOBFUSACTOR_DECRYPT_STR_0']), webhook);
