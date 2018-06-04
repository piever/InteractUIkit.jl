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

InteractBase.libraries(::UIkit) = [
    "/pkg/InteractUIkit/uikit-icons.min.js",
    "/pkg/InteractUIkit/uikit.min.css",
    "/pkg/InteractUIkit/uikit.min.js",
    "/pkg/InteractUIkit/toggle.css"
]

function __init__()
    InteractBase.settheme!(UIkit())
    nothing
end

include("classes.jl")
include("widgets.jl")

end # module
