local modRef = RegisterMod("LibstarDemo", 1)

local postUpdate = require("luaLibstar.postUpdateCallback")

postUpdate:Init(modRef)
