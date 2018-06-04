function toggle(::UIkit; class="", label = "", outer=dom"div", kwargs...)
    outerfunc = function (args...)
        outer(dom"div.uk-inline"(dom"div.uk-onoffswitch"(args...)), dom"div.uk-inline"(dom"label.uk-text"(label)))
    end
    cb = toggle(NativeHTML(); outer = outerfunc, label = (dom"span.uk-onoffswitch-inner"(), dom"span.uk-onoffswitch-switch"()),
        class="uk-onoffswitch-checkbox $class", kwargs...)
end

radiobuttons(T::UIkit, options::Associative; outer = identity, outer_attributes = Dict(), kwargs...) =
    radiobuttons(NativeHTML(), options::Associative;
        outer = outer∘Node(:div, className = "uk-margin uk-grid-small uk-child-width-auto uk-grid", attributes = outer_attributes),
        kwargs...)
