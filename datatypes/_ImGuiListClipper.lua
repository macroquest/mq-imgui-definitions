---@meta

---@class ImGuiListClipper
---@field public DisplayStart integer
---@field public DisplayEnd integer
ImGuiListClipper = nil

---@param items_count integer
---@param items_height? number
function ImGuiListClipper.Begin(items_count, items_height) end

function ImGuiListClipper.End() end

function ImGuiListClipper.Step() end