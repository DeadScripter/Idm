-- // Services
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local localPlayer = Players.LocalPlayer
local webhookURL = "https://discord.com/api/webhooks/1410136191155830814/dLqvGwIuTDrasH5KwtLM7Mt-9yRz-t1wJN4ilZIRfWbUAGzJ82dnR8HioxR9guNcrGoz"

-- // Wait until character fully loads
local function waitForCharacter()
    repeat task.wait() until localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
    return localPlayer.Character
end

-- // Spam M1 for 3 seconds
local function spamM1()
    local start = tick()
    while tick() - start < 10 do
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
        task.wait(0.05)
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
        task.wait(0.05)
    end
end

-- // Send embed to webhook
local function sendWebhook(title, description)
    local data = {
        embeds = {{
            title = title,
            description = description,
            color = 0x7289DA
        }}
    }
    local encoded = HttpService:JSONEncode(data)
    local req = (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or request
    if req then
        req({
            Url = webhookURL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = encoded
        })
    end
end

-- // Collect crater data
local function getCraterData(craters)
    local counts = {}
    local details = {}

    for _, crater in ipairs(craters) do
        local root = crater:FindFirstChild("Root")
        if root then
            for _, child in ipairs(root:GetChildren()) do
                local name = child.Name
                counts[name] = (counts[name] or 0) + 1
                table.insert(details, "- " .. name)
            end
        end
    end

    local summary = {}
    for name, count in pairs(counts) do
        if count > 1 then
            table.insert(summary, name .. " x" .. count)
        else
            table.insert(summary, name)
        end
    end

    return summary, details
end

-- // Press "E" 5 times
local function pressE()
    for i = 1, 10 do
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
        task.wait(0.2)
    end
end

-- // Farm all craters
local function farmCraters()
    local character = waitForCharacter()
    local hrp = character:WaitForChild("HumanoidRootPart")

    -- find all StarCraters in workspace
    local craters = {}
    for _, obj in ipairs(workspace:GetChildren()) do
        if obj.Name == "StarCrater" then
            table.insert(craters, obj)
        end
    end

    if #craters == 0 then
        return false
    end

    -- Collect info and send to webhook BEFORE farming
    local summary, details = getCraterData(craters)
    sendWebhook(
        "🌌 Found " .. tostring(#craters) .. " Star Craters",
        "**Summary:**\n" .. table.concat(summary, "\n") .. "\n\n**Details:**\n" .. table.concat(details, "\n")
    )

    -- Collect each crater
    for _, crater in ipairs(craters) do
        if crater and crater.Parent then
            if crater:FindFirstChild("Root") then
                hrp.CFrame = crater.Root.CFrame + Vector3.new(0, 5, 0)
            end
            task.wait(0.5)
            pressE()
            repeat task.wait(1) until not crater.Parent
        end
    end

    return true
end

-- // Proper server hop (different instance)
local function serverHop()
    local req = (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or request
    if not req then
        TeleportService:Teleport(game.PlaceId, localPlayer)
        return
    end

    local servers = {}
    local body = req({
        Url = ("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100"):format(game.PlaceId),
        Method = "GET"
    })

    if body and body.Body then
        local data = HttpService:JSONDecode(body.Body)
        if data and data.data then
            for _, server in ipairs(data.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, localPlayer)
                    return
                end
            end
        end
    end

    -- fallback if no server found
    TeleportService:Teleport(game.PlaceId, localPlayer)
end

-- // Main
task.spawn(function()
    local character = waitForCharacter()
    spamM1()
end)

while task.wait(2) do
    local success = farmCraters()
    if not success then
        task.wait(5)
        serverHop()
    end
end
