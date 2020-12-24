-- ref: https://stackoverflow.com/questions/56004886/pandoc-set-document-title-to-first-title
local title

-- Promote all headers by one level. Set title from level 1 headers,
-- unless it has been set before.
-- function promote_header (header)

--   if header.level >= 2 then
--     header.level = header.level - 1
--     return header
--   end

--   if not title then
--     title = header.content
--     return {}
--   end

--   local msg = '[WARNING] title already set; discarding header "%s"\n'
--   io.stderr:write(msg:format(pandoc.utils.stringify(header)))
--   return {}
-- end

return {
  {Meta = function (meta) title = meta.title end}, -- init title
  {Header = function (header) if header.level <= 1 and not title then title = header.content end end },
  {Meta = function (meta) meta.pagetitle = title; return meta end}, -- set title
}
