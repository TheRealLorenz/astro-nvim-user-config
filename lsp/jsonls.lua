local success, schemastore = pcall(require, "schemastore")

if not success then
  print "Missing module 'schemastore'"
  return {}
end

local M = {
  settings = {
    json = {
      schemas = schemastore.json.schemas(),
      validate = { enable = true },
    },
  },
}

return M
