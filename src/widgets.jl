filepicker(::UIkit, args...; class="", kwargs...) =
    filepicker(NativeHTML(), args...; class="uk-input $class", kwargs...)

dropdown(::UIkit, options::Associative; class="", kwargs...) =
    dropdown(NativeHTML(), options; class="uk-select $class", kwargs...)

function entry(::UIkit, style, args...; class="", kwargs...)
    extraclass = "uk-checkbox"
    entry(NativeHTML(), style, args...; class="$extraclass $class", kwargs...)
end

function toggle(::UIkit; class="", label = "", outer=dom"div", kwargs...)
    outerfunc = function (args...)
        outer(dom"div.uk-inline"(dom"div.uk-onoffswitch"(args...)), dom"div.uk-inline"(dom"label.uk-text"(label)))
    end
    cb = toggle(NativeHTML(); outer = outerfunc, label = (dom"span.uk-onoffswitch-inner"(), dom"span.uk-onoffswitch-switch"()),
        class="uk-onoffswitch-checkbox $class", labelclass = "uk-onoffswitch-label", kwargs...)
end

button(::UIkit, args...; class= "uk-button-primary", kwargs...) =
    button(NativeHTML(), args...; class="uk-button $class", kwargs...)

togglebuttons(::UIkit, options::Associative; class="uk-width-1-1", outer = identity, activeclass = "uk-button-primary", outer_attributes = Dict(), kwargs...) =
    togglebuttons(NativeHTML(), options;
        outer = outer∘Node(:div, className = "uk-button-group uk-width-1-1", attributes = outer_attributes),
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

function input(::UIkit, args...; class="", typ="text", kwargs...)
    extra_class =
        if typ=="radio"
            "uk-radio"
        elseif typ=="checkbox"
            "uk-checkbox"
        elseif typ=="range"
            "uk-range"
        else
            "uk-input"
        end

    input(NativeHTML(), args...; class= extra_class * " " * class, typ=typ, kwargs...)
end

textarea(::UIkit, args...; class="", kwargs...) =
    textarea(NativeHTML(), args...; class="uk-textarea $class", kwargs...)
