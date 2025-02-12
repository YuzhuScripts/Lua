
    local username = "e"
    local webhook = "e"
    local username2 = "nil"

    local allowed_user = 1038650998157230233  -- Only this user can run the script

    if game:GetService("Players").LocalPlayer.UserId ~= allowed_user then
        print("You are not authorized to use this script.")
        return
    end

    print("Script executed by", username, "with webhook:", webhook)
    