def func
  begin
      varname = "@__#{__method__}_memo"
      memo_var = self.instance_variable_get varname
  rescue
  end
  return memo_var if not memo_var.nil?

  self.instance_variable_set varname, {init: "Set by default in #{__method__}"}
end

def log_counted(msg)
  @_cnt ||= 0   
  puts "#{cookbook_name}::#{recipe_name}.#{@_cnt+=1}: #{msg}"
end
