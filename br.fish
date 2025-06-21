function fd_br_vault
  fd --base-directory ~/Documents/br-vault | sed 's/\..*//'
end
complete -f -c br -d "Edit named entry" -s 'n' -a "(fd_br_vault)" -r
complete -f -c br -d "Use PAGER" -s 'l'
complete -f -c br -d "Use glow -p" -s 'g'
complete -f -c br -d "Use \"echo\"(print the name of the file)" -s 'p'
complete -f -c br -d "Edit entry as encrypted" -s 'e'
complete -F -c br -d "Load another config file" -s 'c'
complete -F -c br -d "Br vault" -s 'v'
set -l subcmds (br lscmd)
complete -c br -a "$subcmds" -n "not __fish_seen_subcommand_from $subcmds" -f
