function getclass(T::UIkit, arg, typ...)
    length(typ) > 0 && last(typ) == "label" && return ""

    if arg == :input
        typ==() && return "uk-input"
        typ[1]=="checkbox" && return "uk-checkbox"
        typ[1]=="radio" && return "uk-radio"
        typ[1]=="toggle" && return ""
        typ[1]=="range" && return "uk-range"

        if typ[1]=="file"
            typ[2:end]==("icon",) && return "fas fa-upload"
            typ[2:end]==("span",) && return "uk-button"
            return ""
        end

        return "uk-input"
    elseif arg == :button
        typ==("primary",) && return "uk-button-primary"
        typ==("active",) && return "uk-button-primary"
        typ==("fullwidth",) && return "uk-width-1-1"
        return "uk-button"
    elseif arg==:tab
        typ==("active",) && return "uk-active"
        return "not-active"
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
    elseif arg==:radiobuttons
        return "uk-margin uk-grid-small uk-child-width-auto uk-grid"
    else
        return ""
    end
end
