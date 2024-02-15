local config = require 'symbols-outline.config'

local M = {}

M.kinds = {
  'File',
  'Module',
  'Namespace',
  'Package',
  'Class',
  'Method',
  'Property',
  'Field',
  'Constructor',
  'Enum',
  'Interface',
  'Function',
  'Variable',
  'Constant',
  'String',
  'Number',
  'Boolean',
  'Array',
  'Object',
  'Key',
  'Null',
  'EnumMember',
  'Struct',
  'Event',
  'Operator',
  'TypeParameter',
  'Component',
  'Fragment',
}

function M.icon_from_kind(kind)
  local symbols = config.options.symbols

  if type(kind) == 'string' then
    return symbols[kind].icon
  end
  kind = M.bounded_kind(kind)
  return symbols[M.kinds[kind]].icon
end

function M.bounded_kind(kind)
    if kind > #M.kinds then
        return 19
    end
    return kind
end

return M
