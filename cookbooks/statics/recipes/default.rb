#
# Cookbook:: statics
# Recipe:: default
#
# Copyright:: 2018, Kundai Andrew Midzi, All Rights Reserved.
#
#

@__func_memo = {init: "Set var in #{recipe_name}"}

include_recipe 'statics::one'
log_counted func
