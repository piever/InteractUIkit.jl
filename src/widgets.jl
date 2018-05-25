filepicker(::UIkit, args...; class="", kwargs...) =
    filepicker(NativeHTML(), args...; class="uk-input $class", kwargs...)

dropdown(::UIkit, options::Associative; class="", kwargs...) =
    dropdown(NativeHTML(), options; postprocess = dom"div.select", class="uk-select $class", kwargs...)

checkbox(::UIkit, args...; class="", kwargs...) =
    checkbox(NativeHTML(), args...; class="uk-checkbox $class", kwargs...)

function toggle(s::UIkit, args...; class="", label = "", outer=dom"div", kwargs...)
    outerfunc = function (args...)
        outer(dom"div.uk-inline"(dom"div.uk-onoffswitch"(args...)), dom"div.uk-inline"(dom"label.uk-text"(label)))
    end
    cb = checkbox(NativeHTML(), args...; outer = outerfunc, label = (dom"span.uk-onoffswitch-inner"(), dom"span.uk-onoffswitch-switch"()),
        class="uk-onoffswitch-checkbox $class", labelclass = "uk-onoffswitch-label", kwargs...)
end

textbox(::UIkit, label=""; value="", class="", kwargs...) =
    input(NativeHTML(), value; typ="text", class="uk-input $class", placeholder=label, kwargs...)

function slider(::UIkit, args...; class="uk-range", outer=(x,y)->dom"div"(x, dom"div.uk-inline[style=width:70%]"(y)), kwargs...)
    slider(NativeHTML(), args...; class=class, outer=outer, kwargs...)
end

button(::UIkit, args...; class= "uk-button uk-button-primary", kwargs...) =
    button(NativeHTML(), args...; class=class, kwargs...)

togglebuttons(::UIkit, options::Associative; class="", outer = identity, activeclass = "uk-button-primary", outer_attributes = Dict(), kwargs...) =
    togglebuttons(NativeHTML(), options;
        outer = outer∘Node(:div, className = "uk-button-group", attributes = outer_attributes),
        class = "uk-button $class", activeclass = activeclass, kwargs...)

tabs(::UIkit, options::Associative; class="", outer = identity, activeclass = "uk-active", outer_attributes = Dict(), kwargs...) =
    tabs(NativeHTML(), options;
        outer = outer∘Node(:ul, className = "uk-tab", attributes = outer_attributes),
        class = class, activeclass = activeclass, kwargs...)

radiobuttons(T::UIkit, options::Associative; outer = identity, outer_attributes = Dict(), kwargs...) =
    radiobuttons(NativeHTML(), options::Associative;
        outer = outer∘Node(:div, className = "uk-margin uk-grid-small uk-child-width-auto uk-grid", attributes = outer_attributes),
        kwargs...)

radio(T::UIkit, s, key, val, vmodel; class = "", kwargs...) =
    Node(:label, dom"input[class=uk-radio $class name = $s, type=radio, $vmodel=value, value=$val]"(), key,
        attributes = Dict(kwargs))
