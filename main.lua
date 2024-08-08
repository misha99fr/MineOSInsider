local GUI = require("GUI")
local system = require("System")

local workspace, window, menu = system.addWindow(GUI.titledWindow(1, 1, 50, 10, "Приветствие", true))

local textBox = window:addChild(GUI.textBox(2, 2, 46, 5, nil, 0x000000, {
    "Добро пожаловать в приложение Lenivo Vantage, к сожалению к ы и пловылпы."
}, 1, 0, 0, true, true))

-- Добавление кнопки
local button = window:addChild(GUI.button(2, 8, 46, 3, 0xCCCCCC, 0x000000, 0xAAAAAA, 0x000000, "Что это?"))

-- Обработчик события для кнопки
button.onTouch = function()
    GUI.alert("Это специально по, которое будет устанавливаться на специальные ноутбуки Lenivo(TM), пока что я его делаю и чета пробую")
end

window.actionButtons.close.onTouch = function()
    window:remove()
end

workspace:draw()
