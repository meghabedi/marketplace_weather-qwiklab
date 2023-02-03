project_name: "looker_blocks_qwiklab"

constant: CONNECTION_NAME {
  value: "looker_block_connection"
}

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

remote_dependency: block-weather {
  url: "https://github.com/looker-open-source/block-weather"
  ref: "master"
  override_constant: CONNECTION_NAME {
    value: "@{CONNECTION_NAME}"
  }
}
