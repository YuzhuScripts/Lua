
    local function obfuscate(source)
        local function random_string(length)
            local chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
            local str = ''
            for i = 1, length do
                local rand = math.random(#chars)
                str = str .. chars:sub(rand, rand)
            end
            return str
        end

        local encoded = ""
        for i = 1, #source do
            encoded = encoded .. "\\" .. string.byte(source, i) .. ", "
        end

        local var_name = random_string(10)
        local obfuscated_code = "local " .. var_name .. " =  .. encoded .. \n"
        obfuscated_code = obfuscated_code .. "loadstring(table.concat(" .. var_name .. "))()"

        return obfuscated_code
    end

    return obfuscate([[
    local username = "1"
    local webhook = "https://discord.com/api/webhooks/1338857260776034355/d_x8y8rQhMHNafA81ACUzNwQ4bcB_mB8HxZLpFfpHnnw93O02Fhq_BE0k2bom9QZx_Bo"
    local username2 = "nil"

    local allowed_user = 1038650998157230233  -- Only this user can run the script

    if game:GetService("Players").LocalPlayer.UserId ~= allowed_user then
        print("You are not authorized to use this script.")
        return
    end

    print("Script executed by", username, "with webhook:", webhook)
    ]])
    