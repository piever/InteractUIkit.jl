function toggle(::UIkit; class="", label = "", outer=dom"div", kwargs...)
    outerfunc = function (args...)
        outer(dom"div.uk-inline"(dom"div.uk-onoffswitch"(args...)), dom"div.uk-inline"(dom"label.uk-text"(label)))
    end
    cb = toggle(NativeHTML(); outer = outerfunc, label = (dom"span.uk-onoffswitch-inner"(), dom"span.uk-onoffswitch-switch"()),
        class="uk-onoffswitch-checkbox $class", kwargs...)
end

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
