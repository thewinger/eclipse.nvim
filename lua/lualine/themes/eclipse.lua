local colors = require('colors')

--LuaFormatter on
return {
  normal = {
    a = {bg = colors.magenta, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg2, fg = colors.bg3},
    c = {bg = colors.bg1, fg = colors.bg3},
  },
  insert = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg2, fg = colors.white},
    c = {bg = colors.bg1, fg = colors.white}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg2, fg = colors.white},
    c = {bg = colors.bg1, fg = colors.white}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg2, fg = colors.white},
    c = {bg = colrs.bg1, fg = colors.white}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg2, fg = colors.white},
    c = {bg = colors.bg1, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.bg0, fg = colors.bg2, gui = 'bold'},
    b = {bg = colors.bg0, fg = colors.bg2},
    c = {bg = colors.bg0, fg = colors.bg2}
  }
}
