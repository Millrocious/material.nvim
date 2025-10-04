local high_visibility = require("material.util.config").settings.high_visibility

---colors table
local colors = {
	---main colors
	main = {
		white = "#EEFFFF",
		gray = "#717CB4",
		black = "#000000",
		red = "#F07178",
		green = "#C3E88D",
		yellow = "#FFCB6B",
		blue = "#82AAFF",
		paleblue = "#B0C9FF",
		cyan = "#89DDFF",
		purple = "#C792EA",
		orange = "#F78C6C",
		-- pink       = "#FF9CAC",

		darkred = "#DC6068",
		darkgreen = "#ABCF76",
		darkyellow = "#E6B455",
		darkblue = "#6E98EB",
		darkcyan = "#71C6E7",
		darkpurple = "#B480D6",
		darkorange = "#E2795B",
	},

	---colors applied to the editor
	editor = {
		link = "#80CBC4",
		cursor = "#FFCC00",
		title = "#EEFFFF",
	},

	lsp = {
		error = "#FF5370",
	},

	syntax = {},
	git = {},
	backgrounds = {},
}

-- Style specific colors

if high_visibility.darker then
	-- Darker theme style with high contrast
	colors.editor.line_numbers = "#5C5C5C"
	colors.syntax.comments = "#757575"
else
	-- default Darker theme style
	colors.editor.line_numbers = "#424242"
	colors.syntax.comments = "#515151"
end

colors.editor.bg = "#151515"
colors.editor.bg_alt = "#1A1A1A"
colors.editor.fg = "#B0BEC5"
colors.editor.fg_dark = "#8C8B8B"
colors.editor.selection = "#404040"
colors.editor.contrast = "#1A1A1A"
colors.editor.active = "#323232"
colors.editor.border = "#343434"
colors.editor.highlight = "#3F3F3F"
colors.editor.disabled = "#474747"
colors.editor.accent = "#FF9800"

---syntax colors
colors.syntax.variable = colors.editor.fg
colors.syntax.field = colors.editor.fg
colors.syntax.keyword = colors.main.purple
colors.syntax.value = colors.main.orange
colors.syntax.operator = colors.main.cyan
colors.syntax.fn = colors.main.blue
colors.syntax.parameter = colors.main.paleblue
colors.syntax.string = colors.main.green
colors.syntax.type = colors.main.purple

---git colors
colors.git.added = colors.main.green
colors.git.removed = colors.main.red
colors.git.modified = colors.main.blue

---lsp colors
colors.lsp.warning = colors.main.yellow
colors.lsp.info = colors.main.paleblue
colors.lsp.hint = colors.main.purple

---contrasted backgrounds
colors.backgrounds.sidebars = colors.editor.bg
colors.backgrounds.floating_windows = colors.editor.bg
colors.backgrounds.non_current_windows = colors.editor.bg
colors.backgrounds.bg_blend = colors.editor.bg -- backup used for blending backgrounds (issue: #212)
colors.backgrounds.cursor_line = colors.editor.active

return colors
