choosefile(::UIkit, args...; class="uk-input", kwargs...) = choosefile(NativeHTML(), args...; class=class, kwargs...)

autocomplete(::UIkit, args...; class="uk-input", kwargs...) = autocomplete(NativeHTML(), args...; class=class, kwargs...)

dropdown(::UIkit, args...; class="uk-select", kwargs...) =
    dropdown(NativeHTML(), args...; postprocess = dom"div.select", class=class, kwargs...)

checkbox(::UIkit, args...; class="uk-checkbox", kwargs...) =
    checkbox(NativeHTML(), args...; class=class, kwargs...)

toggle(s::UIkit, args...; class="uk-checkbox", kwargs...) =
    checkbox(NativeHTML(), args...; class=class, kwargs...)

textbox(::UIkit, label=""; value="", class="uk-input", kwargs...) =
    input(NativeHTML(), value; typ="text", class=class, placeholder=label, kwargs...)

function slider(::UIkit, args...; class="uk-range", kwargs...)
    slider(NativeHTML(), args...; class=class, kwargs...)
end

button(::UIkit, args...; class= "uk-button", kwargs...) =
    button(NativeHTML(), args...; class=class, kwargs...)
