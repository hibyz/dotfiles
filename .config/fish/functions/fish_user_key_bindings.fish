function fish_user_key_bindings
    #  bind \cr 'peco_select_history (commandline -b)'
    #  bind \x] 'peco_change_directory'
    #  bind \x1b 'peco_z'

    fzf_key_bindings
    ### ghq ###
    bind \cg '__ghq_crtl_g'
    if bind -M insert >/dev/null ^/dev/null
        bind -M insert \cg '__ghq_crtl_g'
    end
    ### ghq ###
end
