function getclass(T::UIkit, arg, typ...)
    length(typ) > 0 && last(typ) == "fullwidth" && return ""
    length(typ) > 0 && last(typ) == "label" && return (typ[1] == "toggle") ? "uk-onoffswitch-label" : ""

    if arg == :input
        typ==("checkbox",) && return "uk-checkbox"
        typ==("radio",) && return "uk-radio"
        typ==("toggle",) && return "uk-toggle"
        typ==("range",) && return "uk-range"

        return "uk-input"
    elseif arg == :button
        typ==("primary",) && return "uk-button-primary"
        return "uk-button"
    elseif arg == :textarea
        return "uk-textarea"
    elseif arg==:wdglabel
        return ""
    elseif arg==:dropdown
        return "uk-select"
    elseif arg==:div
        return "uk-margin"
    else
        return ""
    end
end
