name 'soip'
description 'Single origin IP VM.'
run_list([
  "recipe[fedora_vagrant_base]",
  "recipe[mark]",
  "recipe[stunnel]",
])
