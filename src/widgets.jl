function toggle(::UIkit; value=false, label="", bind="checked", valueUpdate="change", kwargs...)
    ip = input(NativeHTML(), value; typ="checkbox", wdgtyp="toggle", bind=bind, valueUpdate="change", kwargs...)
    InteractBase.scope(ip).dom = dom"div.field"(
        Node(:label, className = "switch-light switch-material", attributes = Dict("onclick"=>""))(
            InteractBase.scope(ip).dom,
            label,
            Node(:span, Node(:span, "Off"), Node(:span, "On"), Node(:a))
        )
    )
    Widget{:toggle}(ip)
end
