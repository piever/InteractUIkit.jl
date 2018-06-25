__precompile__()

module InteractUIkit

using Reexport
@reexport using InteractBase
using WebIO, Vue, DataStructures, CSSUtil
import InteractBase:
    filepicker,
    autocomplete,
    input, dropdown,
    checkbox,
    toggle,
    textbox,
    button,
    slider,
    togglebuttons,
    tabs,
    radiobuttons,
    radio,
    wrap,
    wdglabel,
    entry,
    NativeHTML,
    getclass

import InteractBase: textarea

export UIkit

struct UIkit<:InteractBase.WidgetTheme; end

const uikit_icons_min_js = joinpath(@__DIR__, "..", "assets", "uikit-icons.min.js")
const uikit_min_css = joinpath(@__DIR__, "..", "assets", "uikit.min.css")
const uikit_min_js = joinpath(@__DIR__, "..", "assets", "uikit.min.js")
const toggle_css = joinpath(@__DIR__, "..", "assets", "toggle.css")


InteractBase.libraries(::UIkit) = [
    uikit_icons_min_js,
    uikit_min_css,
    uikit_min_js,
    toggle_css,
    InteractBase.font_awesome
]

function __init__()
    InteractBase.settheme!(UIkit())
    nothing
end

include("classes.jl")
include("widgets.jl")

end # module
