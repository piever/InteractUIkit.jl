__precompile__()

module InteractUIkit

using Reexport
@reexport using InteractBase
using WebIO

import InteractBase:
    toggle,
    getclass

export UIkit

struct UIkit<:InteractBase.WidgetTheme; end

const uikit_icons_min_js = joinpath(@__DIR__, "..", "assets", "uikit-icons.min.js")
const uikit_min_css = joinpath(@__DIR__, "..", "assets", "uikit.min.css")
const uikit_min_js = joinpath(@__DIR__, "..", "assets", "uikit.min.js")
const toggle_switch_css = joinpath(@__DIR__, "..", "assets", "toggle-switch.css")
const font_awesome = isdefined(InteractBase, :font_awesome) ? InteractBase.font_awesome : joinpath(Pkg.dir("InteractBase"), "assets", "all.js")


InteractBase.libraries(::UIkit) = [
    uikit_icons_min_js,
    uikit_min_css,
    uikit_min_js,
    toggle_switch_css,
    font_awesome
]

function __init__()
    InteractBase.settheme!(UIkit())
    nothing
end

include("classes.jl")
include("widgets.jl")

end # module
