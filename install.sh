CONFIG_DIR=${XDG_CONFIG_HOME:-${HOME}/.config}/br
CURRENT_DIR=$(dirname "$0")

init_config_dir() {
  if ! [ -d "$CONFIG_DIR" ]; then
    mkdir "$CONFIG_DIR"
  fi
  cp "$CURRENT_DIR/brrc" "$CONFIG_DIR"
}

init_config_dir
