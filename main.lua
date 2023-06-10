local modRef = RegisterMod("LibstarDemo", 1)

local postUpdate = require("luaLibstar.PostUpdateCallback")

postUpdate:Init(modRef)
