function getclass(T::UIkit, arg, typ...)
    length(typ) > 0 && last(typ) == "label" && return (typ[1] == "toggle") ? "uk-onoffswitch-label" : ""

    if arg == :input
        typ==("checkbox",) && return "uk-checkbox"
        typ==("radio",) && return "uk-radio"
        typ==("toggle",) && return "uk-toggle"
        typ==("range",) && return "uk-range"

        return "uk-input"
    elseif arg == :button
        typ==("primary",) && return "uk-button-primary"
        typ==("active",) && return "uk-button-primary"
        typ==("fullwidth",) && return "uk-width-1-1"
        return "uk-button"
    elseif arg==:tab
        typ==("active",) && return "uk-active"
        return ""
    elseif arg == :textarea
        return "uk-textarea"
    elseif arg==:wdglabel
        return ""
    elseif arg==:dropdown
        return "uk-select"
    elseif arg==:div
        return "uk-margin"
    elseif arg==:togglebuttons
        return "uk-button-group uk-width-1-1"
    elseif arg==:tabs
        return "uk-tab"
    else
        return ""
    end
end
