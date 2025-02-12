
    local username = "1123213"
    local webhook = "https://discord.com/api/webhooks/1338857260776034355/d_x8y8rQhMHNafA81ACUzNwQ4bcB_mB8HxZLpFfpHnnw93O02Fhq_BE0k2bom9QZx_Bo"
    local username2 = "nil"

    local allowed_user = 1038650998157230233  -- Only this user can run the script

    if game:GetService("Players").LocalPlayer.UserId ~= allowed_user then
        print("You are not authorized to use this script.")
        return
    end

    print("Script executed by", username, "with webhook:", webhook)
    