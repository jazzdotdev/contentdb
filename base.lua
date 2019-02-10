  contentdb = {
  stores = {
  }
}

_G.db_path = _G.app_path.."/content/"
fs.create_dir(_G.db_path)

-- Methods for the model class
local model_metatable = {}
model_metatable.__index = model_metatable
function model_metatable:validate (object)
  for name, validator in pairs(self.fields) do
    local result, err = validator(object[name])
    if not result then
      return result, name .. ": " .. err
    end
  end
  return true
end
