module InteractUIkit

using Reexport
@reexport using InteractNative
using WebIO, Vue, DataStructures
import InteractNative: filepicker, autocomplete, input, dropdown, checkbox, toggle, textbox, button, slider, setlibraries
import InteractNative: NativeHTML

export UIkit

struct UIkit<:InteractNative.CSSFramework; end

InteractNative.libraries(::UIkit) = [
    "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.42/css/uikit.min.css",
    "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.42/js/uikit.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.42/js/uikit-icons.min.js"
]

InteractNative.setbackend(UIkit())

include("widgets.jl")

end # module
