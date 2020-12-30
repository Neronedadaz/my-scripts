script_name('Admin TOOLS')
script_author('Wolt Nestero')
script_description('Command')

require "lib.moonloader"
local inicfg = require 'inicfg'
local keys = require "vkeys"
local imgui = require "imgui"
local encoding = require "encoding"
encoding.default = "CP1251"
u8 = encoding.UTF8

local tag = '{FF00FF}[ADMIN Tools]: '
local main_color = 0x5A90CE
local main_color_text = "{5A90CE}"
local white_color = "{FFFFFF}"

local main_window = imgui.ImBool(false)
local window = imgui.ImBool(false)
local testokno = imgui.ImBool(false)
local airbrake = imgui.ImBool(false)
local huy = imgui.ImBool(false)
local pomoch = imgui.ImBool(false)
local arr = imgui.ImBool(false)
local arrr = imgui.ImBool(false)
local arrrr = imgui.ImBool(false)
local checked_radio = imgui.ImInt(1)

local text_buffer = imgui.ImBuffer(256)
local text_buffer2 = imgui.ImBuffer(256)
local text_buffer3 = imgui.ImBuffer(256)
local text_buffer4 = imgui.ImBuffer(256)
local text_buffer5 = imgui.ImBuffer(256)
local text_buffer6 = imgui.ImBuffer(256)
local text_buffer7 = imgui.ImBuffer(256)
local text_buffer8 = imgui.ImBuffer(256)
local text_buffer9 = imgui.ImBuffer(256)
local text_buffer10 = imgui.ImBuffer(256)

local text_buffer11 = imgui.ImBuffer(256)
local text_buffer12 = imgui.ImBuffer(256)
local text_buffer13 = imgui.ImBuffer(256)
local text_buffer14 = imgui.ImBuffer(256)

local meropriyatie = imgui.ImBool(false)
local spawncarsall = imgui.ImBool(false)
local pravilaall = imgui.ImBool(false)

local style = imgui.GetStyle() -- оранжевя тема
local colors = style.Colors
local clr = imgui.Col
local ImVec4 = imgui.ImVec4
local ImVec2 = imgui.ImVec2

local ImVec2 = imgui.ImVec2

local armiya = imgui.ImBool(false)

function main()
if not isSampLoaded() or not isSampfuncsLoaded() then return end
while not isSampAvailable() do wait(100) end

sampAddChatMessage(tag .. "{FFFF00}Скрипт успешно активирован, для деактивации напишите /aroff", main_color)

sampRegisterChatCommand("ar", cmd_ar)
sampRegisterChatCommand("aroff", cmd_aroff)
sampRegisterChatCommand("update", cmd_update)

_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
nick = sampGetPlayerNickname(id)

imgui.Process = false

autoupdate("https://raw.githubusercontent.com/Neronedadaz/my-scripts/main/what", '['..string.upper(thisScript().name)..']: ', "https://raw.githubusercontent.com/Neronedadaz/my-scripts/main/ban.lua")

while true do
wait(0)
if isKeyJustPressed(VK_F1) then
sampSendChat('/a Доказательства ? [+/-]')
wait(500)
end

imgui.Process = main_window.v or armiya.v or pomoch.v or meropriyatie.v or spawncarsall.v or pravilaall.v

-- for arizona role play
end
end

function apply_custom_style()
	imgui.SwitchContext()
	local style = imgui.GetStyle()
	local colors = style.Colors
	local clr = imgui.Col
	local ImVec4 = imgui.ImVec4

	style.WindowRounding = 2.0
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.84)
	style.ChildWindowRounding = 2.0
	style.FrameRounding = 2.0
	style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
	style.ScrollbarSize = 13.0
	style.ScrollbarRounding = 0
	style.GrabMinSize = 8.0
	style.GrabRounding = 1.0
	-- style.Alpha =
	-- style.WindowPadding =
	-- style.WindowMinSize =
	-- style.FramePadding =
	-- style.ItemInnerSpacing =
	-- style.TouchExtraPadding =
	-- style.IndentSpacing =
	-- style.ColumnsMinSpacing = ?
	-- style.ButtonTextAlign =
	-- style.DisplayWindowPadding =
	-- style.DisplaySafeAreaPadding =
	-- style.AntiAliasedLines =
	-- style.AntiAliasedShapes =
	-- style.CurveTessellationTol =

	colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
	colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
	colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
	colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
	colors[clr.ComboBg]                = colors[clr.PopupBg]
	colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
	colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.FrameBg]                = ImVec4(0.16, 0.29, 0.48, 0.54)
	colors[clr.FrameBgHovered]         = ImVec4(0.26, 0.59, 0.98, 0.40)
	colors[clr.FrameBgActive]          = ImVec4(0.26, 0.59, 0.98, 0.67)
	colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
	colors[clr.TitleBgActive]          = ImVec4(0.16, 0.29, 0.48, 1.00)
	colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
	colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
	colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
	colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
	colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
	colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
	colors[clr.CheckMark]              = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.SliderGrab]             = ImVec4(0.24, 0.52, 0.88, 1.00)
	colors[clr.SliderGrabActive]       = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.Button]                 = ImVec4(0.26, 0.59, 0.98, 0.40)
	colors[clr.ButtonHovered]          = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.ButtonActive]           = ImVec4(0.06, 0.53, 0.98, 1.00)
	colors[clr.Header]                 = ImVec4(0.26, 0.59, 0.98, 0.31)
	colors[clr.HeaderHovered]          = ImVec4(0.26, 0.59, 0.98, 0.80)
	colors[clr.HeaderActive]           = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.Separator]              = colors[clr.Border]
	colors[clr.SeparatorHovered]       = ImVec4(0.26, 0.59, 0.98, 0.78)
	colors[clr.SeparatorActive]        = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.ResizeGrip]             = ImVec4(0.26, 0.59, 0.98, 0.25)
	colors[clr.ResizeGripHovered]      = ImVec4(0.26, 0.59, 0.98, 0.67)
	colors[clr.ResizeGripActive]       = ImVec4(0.26, 0.59, 0.98, 0.95)
	colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
	colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
	colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
	colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
	colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
	colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
	colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
	colors[clr.TextSelectedBg]         = ImVec4(0.26, 0.59, 0.98, 0.35)
	colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
end
apply_custom_style()

function imgui.TextColoredRGB(text)
    local style = imgui.GetStyle()
    local colors = style.Colors
    local ImVec4 = imgui.ImVec4

    local explode_argb = function(argb)
        local a = bit.band(bit.rshift(argb, 24), 0xFF)
        local r = bit.band(bit.rshift(argb, 16), 0xFF)
        local g = bit.band(bit.rshift(argb, 8), 0xFF)
        local b = bit.band(argb, 0xFF)
        return a, r, g, b
    end

    local getcolor = function(color)
        if color:sub(1, 6):upper() == 'SSSSSS' then
            local r, g, b = colors[1].x, colors[1].y, colors[1].z
            local a = tonumber(color:sub(7, 8), 16) or colors[1].w * 255
            return ImVec4(r, g, b, a / 255)
        end
        local color = type(color) == 'string' and tonumber(color, 16) or color
        if type(color) ~= 'number' then return end
        local r, g, b, a = explode_argb(color)
        return imgui.ImColor(r, g, b, a):GetVec4()
    end

    local render_text = function(text_)
        for w in text_:gmatch('[^\r\n]+') do
            local text, colors_, m = {}, {}, 1
            w = w:gsub('{(......)}', '{%1FF}')
            while w:find('{........}') do
                local n, k = w:find('{........}')
                local color = getcolor(w:sub(n + 1, k - 1))
                if color then
                    text[#text], text[#text + 1] = w:sub(m, n - 1), w:sub(k + 1, #w)
                    colors_[#colors_ + 1] = color
                    m = n
                end
                w = w:sub(1, n - 1) .. w:sub(k + 1, #w)
            end
            if text[0] then
                for i = 0, #text do
                    imgui.TextColored(colors_[i] or colors[1], u8(text[i]))
                    imgui.SameLine(nil, 0)
                end
                imgui.NewLine()
            else imgui.Text(u8(w)) end
        end
    end

    render_text(text)
end

function cmd_infoh()
end

function onExitScript(quitGame)
showCursor(false)
end

function cmd_aroff(arg)
thisScript():unload()
end

function cmd_update(arg)
sampAddChatMessage(u8"113123123213213")
end

sampRegisterChatCommand("gg", function(gg_arg)
local gg_id = gg_arg:match('(%d+)')
if tonumber (gg_id) then
if sampIsPlayerConnected(tonumber(gg_id)) then
sampSendChat('/pm ' .. tostring(gg_id) .. ' 0 Администрация Arizona RP желает вам приятной игры и хорошего настроения :)') 
else
sampAddChatMessage('Такого игрока нету в сети', mcx)
end
else
sampAddChatMessage('{FFFFFF}Используйте {FF0000}/gg {FFFF00}ID', mcx)
end
end)

function autoupdate(json_url, prefix, url)
  local dlstatus = require('moonloader').download_status
  local json = getWorkingDirectory() .. '\\'..thisScript().name..'-version.json'
  if doesFileExist(json) then os.remove(json) end
  downloadUrlToFile(json_url, json,
    function(id, status, p1, p2)
      if status == dlstatus.STATUSEX_ENDDOWNLOAD then
        if doesFileExist(json) then
          local f = io.open(json, 'r')
          if f then
            local info = decodeJson(f:read('*a'))
            updatelink = info.updateurl
            updateversion = info.latest
            f:close()
            os.remove(json)
            if updateversion ~= thisScript().version then
              lua_thread.create(function(prefix)
                local dlstatus = require('moonloader').download_status
                local color = -1
                sampAddChatMessage((prefix..'Обнаружено обновление. Пытаюсь обновиться c '..thisScript().version..' на '..updateversion), color)
                wait(250)
                downloadUrlToFile(updatelink, thisScript().path,
                  function(id3, status1, p13, p23)
                    if status1 == dlstatus.STATUS_DOWNLOADINGDATA then
                      print(string.format('Загружено %d из %d.', p13, p23))
                    elseif status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
                      print('Загрузка обновления завершена.')
                      sampAddChatMessage((prefix..'Обновление завершено!'), color)
                      goupdatestatus = true
                      lua_thread.create(function() wait(500) thisScript():reload() end)
                    end
                    if status1 == dlstatus.STATUSEX_ENDDOWNLOAD then
                      if goupdatestatus == nil then
                        sampAddChatMessage((prefix..'Обновление прошло неудачно. Запускаю устаревшую версию..'), color)
                        update = false
                      end
                    end
                  end
                )
                end, prefix
              )
            else
              update = false
              print('v'..thisScript().version..': Обновление не требуется.')
            end
          end
        else
          print('v'..thisScript().version..': Не могу проверить обновление. Смиритесь или проверьте самостоятельно на '..url)
          update = false
        end
      end
    end
  )
  while update ~= false do wait(100) end
end

function cmd_ar(arg)
main_window.v = not main_window.v
end

function imgui.OnDrawFrame()

imgui.SetNextWindowPos(imgui.ImVec2 (500, 200), imgui.Cond.FirstUseEver)
if main_window.v then
local sw, sh = getScreenResolution()
--- center
imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
imgui.SetNextWindowSize(imgui.ImVec2(300, 300), imgui.Cond.FirstUseEver)
imgui.Begin('ADMIN TOOLS | v.0.1 | Wolt_Nestero', main_window, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoMove)
local btn_size = imgui.ImVec2(-0.1, 0)
if imgui.Button(u8'Лидеры', btn_size) then
armiya.v = not armiya.v
main_window.v = false
end
if imgui.Button(u8'Мероприятия', btn_size) then
meropriyatie.v = not meropriyatie.v
main_window.v = false
end
local sjsdaj2 = imgui.ImVec2(-0.1, 0) 
if imgui.Button(u8'Спавн машин[В РАЗРАБОТКЕ]', sjsdaj2) then
end
local qwerty123 = imgui.ImVec2(-0.1, 0)
if imgui.Button(u8'Общие Правила', qwerty123) then
pravilaall.v = not pravilaall.v 
main_window.v = false
end
local pom4 = imgui.ImVec2(-0.1, 0) 
if imgui.Button(u8'Информация', pom4) then
pomoch.v = not pomoch.v
main_window.v = false
end
imgui.End()
end
if armiya.v then
local sw, sh = getScreenResolution()
--- center
imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
imgui.SetNextWindowSize(imgui.ImVec2(300, 300), imgui.Cond.FirstUseEver)
imgui.Begin(u8'Объявить лидера', armiya)
if imgui.CollapsingHeader(u8'МО') then
imgui.Separator()
imgui.Text(u8"Объявить лидера ТСР")
imgui.InputText(u8"Введите ник лидера.", text_buffer)
imgui.Text(u8"/ao Новый лидер Тюрьмы Строго Режима -  " .. u8:decode( text_buffer.v) .. u8". Поздравляем!!")
imgui.Separator()
if imgui.Button(u8'Объявить лидера') then
sampSendChat('/ao Новый Лидер Тюрьмы Строго Режима -' .. u8:decode( text_buffer.v) .. u8'.Поздравляем!!')
end
imgui.Separator()
imgui.Separator()
imgui.Text(u8'Объявить лидера об окончании срока!!')
imgui.InputText(u8'Введите ник', text_buffer2)
imgui.Text(u8'/ao Лидер Тюрьмы Строгого Режима ' .. u8:decode( text_buffer2.v) .. u8' успешно отстоял свой срок. Поздравим его!!')
imgui.Separator()
if imgui.Button(u8'Объявить') then
sampSendChat(u8'/ao Лидер Тюрьмы Строгого Режима ' .. u8:decode( text_buffer2.v) .. u8' успешно отстоял свой срок. Поздравим его!!')
end
imgui.Separator()
imgui.Separator()
imgui.Text(u8"Объявить лидера ЛСА(МП)")
imgui.InputText(u8"Введите ник лидера.", text_buffer3)
imgui.Text(u8"/ao Новый лидер Армии г.Лос-Сантос -  " .. u8:decode( text_buffer3.v) .. u8". Поздравляем!!")
imgui.Separator()
if imgui.Button(u8'Объявить лидера') then
sampSendChat('/ao Новый Лидер Армии г.Лос-Сантос -' .. u8:decode( text_buffer3.v) .. u8'.Поздравляем!!')
end
imgui.Separator()
imgui.Text(u8'Объявить лидера об окончании срока!!')
imgui.InputText(u8'Введите ник', text_buffer3)
imgui.Text(u8'/ao Лидер Армии г.Лос-Сантос ' .. u8:decode( text_buffer3.v) .. u8' успешно отстоял свой срок. Поздравим его!!')
imgui.Separator()
if imgui.Button(u8'Объявить') then
sampSendChat(u8'/ao Лидер Армии г.Лос-Сантос ' .. u8:decode( text_buffer3.v) .. u8' успешно отстоял свой срок. Поздравим его!!')
end
imgui.Separator()
imgui.Separator()
imgui.Text(u8"Объявить лидера СФА(ВМС)")
imgui.InputText(u8"Введите ник лидера.", text_buffer3)
imgui.Text(u8"/ao Новый лидер Армии г.Сан-Фиерро -  " .. u8:decode( text_buffer4.v) .. u8". Поздравляем!!")
imgui.Separator()
if imgui.Button(u8'Объявить лидера') then
sampSendChat('/ao Новый Лидер Армии г.Сан-Фиерро -' .. u8:decode( text_buffer4.v) .. u8'.Поздравляем!!')
end
imgui.Separator()
imgui.Text(u8'Объявить лидера об окончании срока!!')
imgui.InputText(u8'Введите ник', text_buffer4)
imgui.Text(u8'/ao Лидер Армии г.Сан-Фиерро ' .. u8:decode( text_buffer4.v) .. u8' успешно отстоял свой срок. Поздравим его!!')
imgui.Separator()
if imgui.Button(u8'Объявить') then
sampSendChat(u8'/ao Лидер Армии г.Сан-Фиерро' .. u8:decode( text_buffer4.v) .. u8' успешно отстоял свой срок. Поздравим его!!')
end
end
if imgui.CollapsingHeader(u8'МЮ') then
imgui.Text(u8"Объявить лидера ФБР")
imgui.InputText(u8"Введите ник лидера.", text_buffer5)
imgui.Text(u8"/ao Новый Директор ФБР -  " .. u8:decode( text_buffer5.v) .. u8". Поздравляем!!")
imgui.Separator()
if imgui.Button(u8'Объявить лидера') then
sampSendChat('/ao Новый Директор ФБР -' .. u8:decode( text_buffer5.v) .. u8'. Поздравляем!!')
end
end
imgui.End()
end
-- new okno
if pomoch.v then
local sw, sh = getScreenResolution()
--- center
imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
imgui.SetNextWindowSize(imgui.ImVec2(300, 300), imgui.Cond.FirstUseEver)
imgui.Begin(u8"Информация", pomoch)
if imgui.CollapsingHeader(u8"Обновления") then
imgui.Text(u8"Версия скрипта[1.01]")
imgui.TextColoredRGB('{FFFFFF}Добавлена система авто обновления')
imgui.TextColoredRGB('{FFFFFF}Добавлено сокращения команд')
end
if imgui.CollapsingHeader(u8"Информация о скрипте") then
imgui.TextColoredRGB('{FF0000}F1{FFFFFF} - Быстро спросить есть ли доказательства на кинутую форму')
imgui.TextColoredRGB('/dm {FF0000}[ID]{FFFFFF} - Быстро накзаать за ДМ ')
end
imgui.End()
end
-- okk
if meropriyatie.v then
local sw, sh = getScreenResolution()
--- center
imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
imgui.SetNextWindowSize(imgui.ImVec2(300, 300), imgui.Cond.FirstUseEver)
imgui.Begin(u8"Мероприятия", meropriyatie, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.AlwaysAutoResize)
imgui.Text(u8'					Обявить о Мероприятии')
imgui.InputText(u8"Введите название МП", text_buffer9)
imgui.InputText(u8"Строй/Разбегаемся", text_buffer10)
imgui.InputText(u8"Количесто денег", text_buffer8)
imgui.Text(u8"/ao Уважаемые игроки, сейчас пройдет МП : " ..( text_buffer9.v))
imgui.Text(u8"/ao После телепортации сразу " ..( text_buffer10.v) .. u8". Приз : " ..( text_buffer8.v) .. u8"$")
if imgui.Button(u8"Объявить") then
lua_thread.create(function()
sampSendChat(u8"/ao Уважаемые игроки, сейчас пройдет МП : " ..( text_buffer9.v))
wait(1000)
sampSendChat(u8"/ao После телепортации сразу " ..( text_buffer10.v) .. u8". Приз : " ..( text_buffer8.v) .. u8"$")
wait(1000)
end)
end
imgui.Separator()
imgui.Separator()
imgui.Text(u8"			ВЫДАЧА НА МП | (!!!) делать после того как закрыт телепорт")
imgui.Separator()
imgui.Separator()
imgui.Text(u8"					ХП")
imgui.InputText(u8"ХП(укажите радиус)", text_buffer11)
imgui.InputText(u8"Забрать армор(укажите радиус)", text_buffer12)
imgui.InputText(u8"Игнор звёзд(укажите радиус)", text_buffer13)
imgui.Text(u8"/hpall "  ..( text_buffer11.v))
imgui.Text(u8"/unarmourall " ..( text_buffer12.v))
imgui.Text(u8"/azakon " ..( text_buffer13.v))
if imgui.Button(u8"Выдать") then
lua_thread.create(function()
sampSendChat(u8"/hpall " ..( text_buffer11.v) )
wait(50)
sampSendChat(u8"/unarmourall " ..( text_buffer12.v) )
wait(50)
sampSendChat(u8"/azakon " ..( text_buffer13.v) )
wait(50)
end)
end
imgui.End()
end
-- 1234
if spawncarsall.v then
local sw, sh = getScreenResolution()
--- center
imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
imgui.SetNextWindowSize(imgui.ImVec2(300, 300), imgui.Cond.FirstUseEver)
imgui.Begin(u8"SPAWN CARS", spawncarsall, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.AlwaysAutoResize)
imgui.Text(u8"ВВЕДИТЕ количество секунд, через которые т/с будет заспавнен")
imgui.InputText("",  text_buffer14)
imgui.Text(u8"/ao Уважаемые игроки, через " .. ( text_buffer14.v) .. u8" секунд произойдет респавн Т/С")
imgui.Text(u8"/ao Просьба занять свое авто, дабы оно не пропало")
imgui.Text(u8"/spawncarsall " ..(text_buffer14.v))
if imgui.Button(u8"ЗАСПАВНИТЬ") then
lua_thread.create(function()
sampSendChat(u8"/ao Уважаемые игроки, через " .. ( text_buffer14.v) .. u8" секунд произойдет респавн Т/С")
wait(500)
sampSendChat(u8"/ao Просьба занять свое авто, дабы оно не пропало")
wait(500)
sampSendChat(u8"/spawncarsall " ..( text_buffer14.v))
wait(500)
end)
end
imgui.End()
end
-- qwerty123
if pravilaall.v then
local sw, sh = getScreenResolution()
--- center
imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
imgui.SetNextWindowSize(imgui.ImVec2(300, 300), imgui.Cond.FirstUseEver)
imgui.Begin(u8"Общие Правила Гос.Структур", pravilaall, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.AlwaysAutoResize)
imgui.Text(u8"В РАЗРАБОТКЕ")
imgui.End()
end
end