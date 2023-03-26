while game:GetService("RunService").RenderStepped:wait() do
local args = {
    [1] = {
        [1] = "a2f965df-66b4-4320-93d7-2c7accc84130", 
        [2] = {},
        [3] = 1
    }
}
workspace.__THINGS.__REMOTES:FindFirstChild("bank deposit"):InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = "a2f965df-66b4-4320-93d7-2c7accc84130",
        [2] = {},
        [3] = 1
    }
}

workspace.__THINGS.__REMOTES:FindFirstChild("bank withdraw"):InvokeServer(unpack(args))
end
