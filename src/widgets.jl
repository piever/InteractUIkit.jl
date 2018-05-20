filepicker(::UIkit, args...; class="uk-input", kwargs...) = filepicker(NativeHTML(), args...; class=class, kwargs...)

autocomplete(::UIkit, args...; class="uk-input", kwargs...) = autocomplete(NativeHTML(), args...; class=class, kwargs...)

dropdown(::UIkit, options::Associative; class="uk-select", kwargs...) =
    dropdown(NativeHTML(), options; postprocess = dom"div.select", class=class, kwargs...)

checkbox(::UIkit, args...; class="uk-checkbox", kwargs...) =
    checkbox(NativeHTML(), args...; class=class, kwargs...)

toggle(s::UIkit, args...; class="uk-checkbox", kwargs...) =
    checkbox(NativeHTML(), args...; class=class, kwargs...)

textbox(::UIkit, label=""; value="", class="uk-input", kwargs...) =
    input(NativeHTML(), value; typ="text", class=class, placeholder=label, kwargs...)

function slider(::UIkit, args...; class="uk-range", kwargs...)
    slider(NativeHTML(), args...; class=class, kwargs...)
end

button(::UIkit, args...; class= "uk-button uk-button-primary", kwargs...) =
    button(NativeHTML(), args...; class=class, kwargs...)
