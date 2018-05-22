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
    "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.42/css/uikit.min.css",
    "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.42/js/uikit.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.42/js/uikit-icons.min.js",
    "/pkg/InteractUIkit/toggle.css"
]

InteractBase.settheme!(UIkit())

include("widgets.jl")

end # module
