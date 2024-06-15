if status is-interactive
    # Commands to run in interactive sessions can go here
    eval ( /home/linuxbrew/.linuxbrew/bin/brew shellenv )
end


if command -v rbenv >/dev/null
    status --is-interactive; and source (rbenv init - | psub)
end

# Añadir directorios de bibliotecas y cabeceras para compilación
set -x LDFLAGS -L/usr/local/opt/zlib/lib
set -x CPPFLAGS -I/usr/local/opt/zlib/include

# Configurar rutas de proyectos
set -gx PROJECT_PATHS "$HOME/Projects"

# Inicializar Homebrew
if test -f /home/linuxbrew/.linuxbrew/bin/brew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

# Alias Paths
alias desktop="cd /mnt/c/Users/farfa/OneDrive/Escritorio"
alias obsd="cd /mnt/d/Obsidian/"
alias diskD="cd /mnt/d/"
alias copypwd="pwd | xclip -sel clip"
alias copyfile="xclip -sel clip < $1"

# Alias NPM
alias nrd="npm run dev"
alias ni="npm install $1"

# Alias fish
alias cfiles="cd $HOME/.config/"
alias cfish="nvim $HOME/.config/fish/config.fish"
alias cnvim="nvim $HOME/.config/nvim/init.lua"
alias rfish="source $HOME/.config/fish/config.fish"

# Uncommment to activate Tmux as default

# if status is-interactive
#     and not set -q TMUX
#     exec tmux
# end

# Comment if you want to use Tmux
#if set -q ZELLIJ
#else
#    zellij
#end

set -l foreground DCD7BA
set -l selection 2D4F67
set -l comment 727169
set -l red C34043
set -l orange FF9E64
set -l yellow C0A36E
set -l green 76946A
set -l purple 957FB8
set -l cyan 7AA89F
set -l pink D27E99

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
