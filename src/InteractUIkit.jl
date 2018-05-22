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
    NativeHTML

export UIkit

struct UIkit<:InteractBase.WidgetTheme; end

InteractBase.libraries(::UIkit) = [
    "/pkg/InteractUIkit/uikit-icons.min.js",
    "/pkg/InteractUIkit/uikit.min.css",
    "/pkg/InteractUIkit/uikit.min.js",
    "/pkg/InteractUIkit/toggle.css"
]

InteractBase.settheme!(UIkit())

include("widgets.jl")

end # module
