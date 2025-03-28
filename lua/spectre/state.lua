local state = {
    -- current config
    user_config = nil,
    status_line = '',
    query = {
        search_quey = '',
        replace_query = '',
        path = '',
        is_file = '' -- search in current file
    },
    -- display text and highlight on result
    view = {
        mode = "both",
        search=true,
        replace=true
    },
    -- virtual text namespace
    vt = {

    },
    --for options
    options={
        ['ignore-case'] = false,
        ['hidden'] = false,
        ['string'] = false
    }
}

if _G.__is_dev then
    _G.__spectre_state = _G.__spectre_state or state
    state = _G.__spectre_state
end

return state
