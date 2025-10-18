local data = {}

data.Defaults = {
	Town = {
		-- 颜色与透明度
		r = 0.08, g = 0.09, b = 0.25, a = 1.0,       -- 颜色和透明度 (RGBA)

		-- 默认外观与行为
		scale              = 3.5,                    -- 缩放大小
		rotation           = 0.0,                    -- 旋转角度
		anchorX            = 0.5,                    -- 锚点 (0.5, 0.5 表示中心对齐)
		anchorY            = 0.5,                    -- 锚点 (0.5, 0.5 表示中心对齐)
		layerID            = "text-town",            -- 符号所在的图层 (例如: "text-town", "text-building", "text-place")
		matchPerspective   = true,                   -- (true/false) 标签是否匹配地图视角（通常为 true）
		applyZoom          = true,                   -- (true/false) 标签是否随地图缩放而变化大小（通常为 true）
		minZoom            = 0.0,                    -- 标签开始可见的最小缩放级别
		maxZoom            = 13.0,                   -- 标签保持可见的最大缩放级别   
		userDefined        = false,                  -- (true/false) 用户是否可自定义标签,如无特殊需求请保持false
	},
	Lake = {
		r = 0.02, g = 0.19, b = 0.49, a = 1.0,

		scale              = 0.666,
		rotation           = 43.0,
		anchorX            = 0.5,
		anchorY            = 0.5,
		layerID            = "text-water-medium",
		matchPerspective   = true,
		applyZoom          = true,
		minZoom            = 0.0,
		maxZoom            = 14.50,
		userDefined        = false,
	},
	River = {
		r = 0.02, g = 0.19, b = 0.49, a = 1.0,

		scale = 3.050,
		rotation = 43.0,
		anchorX            = 0.5,
		anchorY            = 0.5,
		layerID            = "text-water-nofade",
		matchPerspective   = true,
		applyZoom          = true,
		minZoom            = 0.0,
		maxZoom            = 24.00,
		userDefined        = false,
	},
	Building = {
		r = 1.00, g = 1.00, b = 1.00, a = 1.0,

		scale              = 0.6,
		rotation           = 0.0,
		anchorX            = 0.5,
		anchorY            = 0.5,
		layerID            = "text-building",
		matchPerspective   = true,
		applyZoom          = true,
		minZoom            = 13.5,
		maxZoom            = 16.5,
		userDefined        = false,
	},
	POI = {
		r = 0.28, g = 0.36, b = 0.46, a = 1.0,

		scale              = 0.6,
		rotation           = 0.0,
		anchorX            = 0.5,
		anchorY            = 0.5,
		layerID            = "text-place",
		matchPerspective   = true,
		applyZoom          = true,
		minZoom            = 10.5,
		maxZoom            = 13.5,
		userDefined        = false,
	},
}

return data
