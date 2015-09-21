#!/bin/bash

Xvfb :0 -ac -screen 0 1366x768x24 &

source /root/.nvm/nvm.sh

export -f nvm_has
export -f nvm_is_alias
export -f nvm_get_latest
export -f nvm_download
export -f nvm_has_system_node
export -f nvm_has_system_iojs
export -f nvm_print_npm_version
export -f nvm_tree_contains_path
export -f nvm_find_up
export -f nvm_find_nvmrc
export -f nvm_rc_version
export -f nvm_version_greater
export -f nvm_version_greater_than_or_equal_to
export -f nvm_version_dir
export -f nvm_alias_path
export -f nvm_version_path
export -f nvm_ensure_version_installed
export -f nvm_version
export -f nvm_remote_version
export -f nvm_remote_versions
export -f nvm_is_valid_version
export -f nvm_normalize_version
export -f nvm_ensure_version_prefix
export -f nvm_format_version
export -f nvm_num_version_groups
export -f nvm_strip_path
export -f nvm_prepend_path
export -f nvm_binary_available
export -f nvm_alias
export -f nvm_ls_current
export -f nvm_resolve_alias
export -f nvm_resolve_local_alias
export -f nvm_iojs_prefix
export -f nvm_node_prefix
export -f nvm_is_iojs_version
export -f nvm_add_iojs_prefix
export -f nvm_strip_iojs_prefix
export -f nvm_ls
export -f nvm_ls_remote
export -f nvm_ls_remote_iojs
export -f nvm_ls_remote_iojs_org
export -f nvm_checksum
export -f nvm_print_versions
export -f nvm_validate_implicit_alias
export -f nvm_print_implicit_alias
export -f nvm_get_os
export -f nvm_get_arch
export -f nvm_ensure_default_set
export -f nvm_install_iojs_binary
export -f nvm_install_node_binary
export -f nvm_install_node_source
export -f nvm_match_version
export -f nvm_npm_global_modules
export -f nvm
export -f nvm_supports_source_options

echo "$@" | bash