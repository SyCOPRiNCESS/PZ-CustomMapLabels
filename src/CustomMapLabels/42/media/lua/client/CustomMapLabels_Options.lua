-- 自定义地图标签的选项面板

-- 确保全局选项表存在
CML_Options = CML_Options or {}

-- 默认选项值
CML_Options.masterSwitch = true
CML_Options.enableModLabels = true
CML_Options.enableVanilla = false

local function InitializeOptions()
    -- 使用PZAPI来创建ModOptions
    if not PZAPI or not PZAPI.ModOptions then
        return
    end

    local options = PZAPI.ModOptions:create(getText("UI_CML_PanelTitle"), "CustomMapLabels")

    -- 总开关
    CML_Options.masterSwitch = options:addTickBox(
        "masterSwitch",
        getText("UI_CML_MasterSwitch_Text"),
        CML_Options.masterSwitch,
        getText("UI_CML_MasterSwitch_Tooltip")
    )

    -- 启用/禁用模组标签的复选框
    CML_Options.enableModLabels = options:addTickBox(
        "enableModLabels",
        getText("UI_CML_EnableModLabels_Text"),
        CML_Options.enableModLabels,
        getText("UI_CML_EnableModLabels_Tooltip")
    )

    -- 启用/禁用原版标签的复选框
    CML_Options.enableVanilla = options:addTickBox(
        "enableVanilla",
        getText("UI_CML_EnableVanilla_Text"),
        CML_Options.enableVanilla,
        getText("UI_CML_EnableVanilla_Tooltip")
    )

end

-- 游戏启动时初始化选项面板
Events.OnGameBoot.Add(InitializeOptions)
