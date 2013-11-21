minedexer = {}

local httpstatus = require("httpstatus")
local configor = require("configor")

local template = include("template.lua")

minedexer.index = function(req, res)
	template.generate(res, "Minedexer", {"Hello, world!"})
end


reqs.AddPattern("*", "/minedexer/", minedexer.index)