---@meta

--- Macroquest ImGui Lua Binding
--- @class ImGui
ImGui = {}

--- Windows

---@param name string
---@param isOpen? boolean
---@param imGuiWindowFlags? integer
---@return boolean isOpen, boolean shouldDraw
function ImGui.Begin(name, isOpen, imGuiWindowFlags) end
function ImGui.End() end

--- ChildWindows
---@param name string
---@param sizeX? number
---@param sizeY? number
---@param shouldDraw? boolean
---@param imGuiWindowFlags? integer
function ImGui.BeginChild(name, sizeX, sizeY, shouldDraw, imGuiWindowFlags) end
function ImGui.EndChild() end

--- Windows Utilities
---@return boolean isAppearing
function ImGui.IsWindowAppearing() end
---@return boolean isCollapsed
function ImGui.IsWindowCollapsed() end
---@param imGuiFocusedFlags? integer
---@return boolean isFocused
function ImGui.IsWindowFocused(imGuiFocusedFlags) end
---@param imGuiHoveredFlags? integer
---@return boolean isFocused
function ImGui.IsWindowHovered(imGuiHoveredFlags) end
---@return number dpiScale
function ImGui.GetWindowDpiScale() end
---@return number posX,number posY
function ImGui.GetWindowPos() end
---@return number sizeX,number sizeY
function ImGui.GetWindowSize() end
---@return number width
function ImGui.GetWindowWidth() end
---@return number height
function ImGui.GetWindowHeight() end
---@param posX number
---@param posY number
---@param imGuiCond? ImGuiCond
---@param pivotX? number
---@param pivotY? number
function ImGui.SetNextWindowPos(posX, posY, imGuiCond, pivotX, pivotY) end
---@param sizeX number
---@param sizeY number
---@param imGuiCond? ImGuiCond
function ImGui.SetNextWindowSize(sizeX, sizeY, imGuiCond) end
---@param minX number
---@param minY number
---@param maxX number
---@param maxY number
function ImGui.SetNextWindowSizeConstraints(minX, minY, maxX, maxY) end
---@param sizeX number
---@param sizeY number
function ImGui.SetNextWindowContentSize(sizeX, sizeY) end
---@param isCollapsed boolean
---@param imGuiCond? ImGuiCond
function ImGui.SetNextWindowCollapsed(isCollapsed, imGuiCond) end
function ImGui.SetNextWindowFocus() end
---@param alpha number
function ImGui.SetNextWindowBgAlpha(alpha) end
---@param name string
---@param posX number
---@param posY number
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowPos(name, posX, posY, imGuiCond) end
---@param name string
---@param sizeX number
---@param sizeY number
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowSize(name, sizeX, sizeY, imGuiCond) end
---@param sizeX number
---@param sizeY number
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowSize(sizeX, sizeY, imGuiCond) end
---@param name string
---@param isCollapsed boolean
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowCollapsed(name, isCollapsed, imGuiCond) end
---@param scale number
function ImGui.SetWindowFontScale(scale) end
---@param name? string
function ImGui.SetWindowFocus(name) end

--- Content Region
---@return number x, number y
function ImGui.GetContentRegionMax() end
---@return number x, number y
function ImGui.GetContentRegionAvail() end
---@return number x, number y
function ImGui.GetWindowContentRegionMin() end
---@return number x, number y
function ImGui.GetWindowContentRegionMax() end
---@return number width
function ImGui.GetWindowContentRegionWidth() end

--- Windows Scrolling
---@return number x
function ImGui.GetScrollX() end
---@return number y
function ImGui.GetScrollY() end
---@return number x
function ImGui.GetScrollMaxX() end
---@return number y
function ImGui.GetScrollMaxY() end
---@param scrollX number
function ImGui.SetScrollX(scrollX) end
---@param scrollY number
function ImGui.SetScrollY(scrollY) end
---@param scrollX? number
function ImGui.SetScrollHereX(scrollX) end
---@param scrollY? number
function ImGui.SetScrollHereY(scrollY) end
---@param localX number
---@param centerXRatio? number
function ImGui.SetScrollFromPosX(localX, centerXRatio) end
---@param localY number
---@param centerYRatio? number
function ImGui.SetScrollFromPosY(localY, centerYRatio) end

--- Parameters Stacks (Shared)
function ImGui.PushFont(...) end
function ImGui.PopFont() end

---@param imGuiCol ImGuiCol
---@param col integer
function ImGui.PushStyleColor(imGuiCol, col) end

---@param count? integer
function ImGui.PopStyleColor(count) end

---@param imGuiStyleVar ImGuiStyleVar
---@param value number
function ImGui.PushStyleVar(imGuiStyleVar, value) end

---@param imGuiStyleVar ImGuiStyleVar
---@param valX number
---@param valY number
function ImGui.PushStyleVar(imGuiStyleVar, valX, valY) end

---@param imGuiStyleVar ImGuiStyleVar
---@param imVec2 ImVec2
function ImGui.PushStyleVar(imGuiStyleVar, imVec2) end

---@param count? integer
function ImGui.PopStyleVar(count) end

---@param imGuiCol ImGuiCol
---@return number x, number y,number z, number w
function ImGui.GetStyleColorVec4(imGuiCol) end

function ImGui.GetFont() end

---@return number
function ImGui.GetFontSize() end

---@return number x, number y
function ImGui.GetFontTexUvWhitePixel() end

--- Parameters Stacks (Current Window)
---@param itemWidth number
function ImGui.PushItemWidth(itemWidth) end
function ImGui.PopItemWidth() end

---@param itemWidth number
function ImGui.SetNextItemWidth(itemWidth) end

---@return number
function ImGui.CalcItemWidth() end

---@param wrapLocalPosX number
function ImGui.PushTextWrapPos(wrapLocalPosX) end
function ImGui.PopTextWrapPos() end

---@param allowKeyboardFocus boolean
function ImGui.PushAllowKeyboardFocus(allowKeyboardFocus) end
function ImGui.PopAllowKeyboardFocus() end

---@param repeatButton boolean
function ImGui.PushButtonRepeat(repeatButton) end
function ImGui.PopButtonRepeat() end

--- Cursor/Layout
function ImGui.Separator() end

---@param offsetFromStartX? number
---@param spacing? number
function ImGui.SameLine(offsetFromStartX, spacing) end

function ImGui.NewLine() end

function ImGui.Spacing() end

---@param imVec2 ImVec2
function ImGui.Dummy(imVec2) end

---@param indentW? number
function ImGui.Indent(indentW) end

---@param indentW? number
function ImGui.Unindent(indentW) end

function ImGui.BeginGroup() end
function ImGui.EndGroup() end

---@return number x, number y
function ImGui.GetCursorPos() end

---@return number
function ImGui.GetCursorPosX() end

---@return number
function ImGui.GetCursorPosY() end

---@param imVec2 ImVec2
function ImGui.SetCursorPos(imVec2) end

---@param localX number
function ImGui.SetCursorPosX(localX) end

---@param localY number
function ImGui.SetCursorPosY(localY) end

function ImGui.GetCursorStartPos() end
function ImGui.GetCursorScreenPos() end
function ImGui.SetCursorScreenPos(...) end
function ImGui.AlignTextToFramePadding() end
function ImGui.GetTextLineHeight() end
function ImGui.GetTextLineHeightWithSpacing() end
function ImGui.GetFrameHeight() end
function ImGui.GetFrameHeightWithSpacing() end

--- ID Stack/Scopes
function ImGui.PushID(...) end
function ImGui.PopID() end
function ImGui.GetID(...) end

--- Widgets: Text
---@param ... string
function ImGui.TextUnformatted(...) end
---@param text string
function ImGui.Text(text) end
---@param r number
---@param g number
---@param b number
---@param a number
---@param text string
function ImGui.TextColored(r, g, b, a, text) end
---@param text string
function ImGui.TextDisabled(text) end
---@param ... string
function ImGui.TextWrapped(...) end
---@param label string
---@param text string
function ImGui.LabelText(label, text) end
---@param ... string
function ImGui.BulletText(...) end

--- Widgets: Main
function ImGui.Button(...) end
function ImGui.SmallButton(...) end
function ImGui.InvisibleButton(...) end
function ImGui.ArrowButton(...) end
function ImGui.Checkbox(...) end

---@generic T
---@param label string
---@param flags T
---@param flags_value T
---@return T, boolean
function ImGui.CheckboxFlags(label, flags, flags_value) end

function ImGui.RadioButton(...) end
function ImGui.ProgressBar(...) end
function ImGui.Bullet() end

--- Widgets: Combo Box
function ImGui.BeginCombo(...) end
function ImGui.EndCombo() end
function ImGui.Combo(...) end

--- Widgets: Drags
function ImGui.DragFloat(...) end
function ImGui.DragFloat2(...) end
function ImGui.DragFloat3(...) end
function ImGui.DragFloat4(...) end
function ImGui.DragInt(...) end
function ImGui.DragInt2(...) end
function ImGui.DragInt3(...) end
function ImGui.DragInt4(...) end

--- Widgets: Sliders
function ImGui.SliderFloat(...) end
function ImGui.SliderFloat2(...) end
function ImGui.SliderFloat3(...) end
function ImGui.SliderFloat4(...) end
function ImGui.SliderAngle(...) end
function ImGui.SliderInt(...) end
function ImGui.SliderInt2(...) end
function ImGui.SliderInt3(...) end
function ImGui.SliderInt4(...) end
function ImGui.VSliderFloat(...) end
function ImGui.VSliderInt(...) end

--- Widgets: Input with Keyboard
function ImGui.InputText(...) end
function ImGui.InputTextMultiline(...) end
--- @param label string
--- @param hint string
--- @param text string
--- @param imGuiInputTextFlags? integer
--- @return string text, boolean selected
function ImGui.InputTextWithHint(label, hint, text, imGuiInputTextFlags) end
function ImGui.InputFloat(...) end
function ImGui.InputFloat2(...) end
function ImGui.InputFloat3(...) end
function ImGui.InputFloat4(...) end
function ImGui.InputInt(...) end
function ImGui.InputInt2(...) end
function ImGui.InputInt3(...) end
function ImGui.InputInt4(...) end
function ImGui.InputDouble(...) end

--- Widgets: Color Editor / Picker
function ImGui.ColorEdit3(...) end
function ImGui.ColorEdit4(...) end
function ImGui.ColorPicker3(...) end
function ImGui.ColorPicker4(...) end
function ImGui.ColorButton(...) end
function ImGui.SetColorEditOptions(...) end

--- Widgets: Trees
function ImGui.TreeNode(...) end
function ImGui.TreeNodeEx(...) end
function ImGui.TreePush(...) end
function ImGui.TreePop() end
function ImGui.GetTreeNodeToLabelSpacing() end
function ImGui.CollapsingHeader(...) end
function ImGui.SetNextItemOpen(...) end

--- Widgets: Selectables
function ImGui.Selectable(...) end

--- Widgets: List Boxes
function ImGui.ListBox(...) end
function ImGui.ListBoxHeader(...) end
function ImGui.ListBoxFooter() end

--- Widgets: Value() Helpers
function ImGui.Value(...) end

--- Widgets: Menus
function ImGui.BeginMenuBar() end
function ImGui.EndMenuBar() end
function ImGui.BeginMainMenuBar() end
function ImGui.EndMainMenuBar() end
function ImGui.BeginMenu(...) end
function ImGui.EndMenu() end
function ImGui.MenuItem(...) end

--- Tooltips
function ImGui.BeginTooltip() end
function ImGui.EndTooltip() end
function ImGui.SetTooltip(...) end

--- Popups, Modals
function ImGui.BeginPopup(...) end
function ImGui.BeginPopupModal(...) end
function ImGui.EndPopup() end
function ImGui.OpenPopup(...) end
function ImGui.OpenPopupContextItem(...) end
function ImGui.CloseCurrentPopup() end
function ImGui.BeginPopupContextItem(...) end
function ImGui.BeginPopupContextWindow(...) end
function ImGui.BeginPopupContextVoid(...) end
function ImGui.IsPopupOpen(...) end

--- Columns
function ImGui.Columns(...) end
function ImGui.NextColumn() end
function ImGui.GetColumnIndex() end
function ImGui.GetColumnWidth(...) end
function ImGui.SetColumnWidth(...) end
function ImGui.GetColumnOffset(...) end
function ImGui.SetColumnOffset(...) end
function ImGui.GetColumnsCount() end

--- Tab Bars, Tabs
function ImGui.BeginTabBar(...) end
function ImGui.EndTabBar() end
function ImGui.BeginTabItem() end
function ImGui.EndTabItem() end
function ImGui.SetTabItemClosed(...) end

--- Docking
function ImGui.DockSpace(...) end
function ImGui.SetNextWindowDockID(...) end
function ImGui.GetWindowDockID() end
function ImGui.IsWindowDocked() end

--- Logging
function ImGui.LogToTTY(...) end
function ImGui.LogToFile(...) end
function ImGui.LogToClipboard(...) end
function ImGui.LogFinish() end
function ImGui.LogButtons() end
function ImGui.LogText(...) end

--- Clipping
function ImGui.PushClipRect(...) end
function ImGui.PopClipRect() end

--- Focus, Activation
function ImGui.SetItemDefaultFocus() end
function ImGui.SetKeyboardFocusHere(...) end

--- Item / Widgets Utilities
function ImGui.IsItemHovered(...) end
function ImGui.IsItemActive() end
function ImGui.IsItemFocused() end
function ImGui.IsItemClicked(...) end
function ImGui.IsItemVisible() end
function ImGui.IsItemEdited() end
function ImGui.IsItemActivated() end
function ImGui.IsItemDeactivated() end
function ImGui.IsItemDeactivatedAfterEdit() end
function ImGui.IsItemToggledOpen() end
function ImGui.IsAnyItemHovered() end
function ImGui.IsAnyItemActive() end
function ImGui.IsAnyItemFocused() end
function ImGui.GetItemRectMin() end
function ImGui.GetItemRectMax() end
function ImGui.GetItemRectSize() end
function ImGui.SetItemAllowOverlap() end

--- Miscellaneous Utilities
function ImGui.IsRectVisible(...) end
function ImGui.GetTime() end
function ImGui.GetFrameCount() end
function ImGui.GetStyleColorName(...) end
function ImGui.BeginChildFrame(...) end
function ImGui.EndChildFrame() end

--- Text Utilities
function ImGui.CalcTextSize(...) end

--- Color Utilities
function ImGui.ColorConvertRGBtoHSV(...) end
function ImGui.ColorConvertHSVtoRGB(...) end

--- Inputs Utilities: Keyboard
function ImGui.GetKeyIndex(...) end
function ImGui.IsKeyDown(...) end
function ImGui.IsKeyPressed(...) end
function ImGui.IsKeyReleased(...) end
function ImGui.GetKeyPressedAmount(...) end
function ImGui.CaptureKeyboardFromApp(...) end

--- Inputs Utilities: Mouse
function ImGui.IsMouseDown(...) end
function ImGui.IsMouseClicked(...) end
function ImGui.IsMouseReleased(...) end
function ImGui.IsMouseDoubleClicked(...) end
function ImGui.IsMouseHoveringRect(...) end
function ImGui.IsAnyMouseDown() end
function ImGui.GetMousePos() end
function ImGui.GetMousePosOnOpeningCurrentPopup() end
function ImGui.IsMouseDragging(...) end
function ImGui.GetMouseDragDelta(...) end
function ImGui.ResetMouseDragDelta(...) end
function ImGui.GetMouseCursor() end
function ImGui.SetMouseCursor(...) end
function ImGui.CaptureMouseFromApp() end

--- Clipboard Utilities
function ImGui.GetClipboardText() end
function ImGui.SetClipboardText(...) end

--- Uncategorized

---@return ImGuiStyle
function ImGui.GetStyle() end

function ImGui.Register(...) end

--- Tables
---@param name string
---@param columnsCount integer
---@param tableFlags? ImGuiTableFlags
---@param outerSize? ImVec2
---@param innerWidth? number
---@return boolean
function ImGui.BeginTable(name, columnsCount, tableFlags, outerSize, innerWidth) end
function ImGui.EndTable() end
function ImGui.TableSetupColumn(...) end
function ImGui.TableSetBgColor(...) end
function ImGui.TableSetupScrollFreeze(...) end
function ImGui.TableSetColumnIndex(...) end
function ImGui.TableGetSortSpecs() end
function ImGui.TableHeadersRow() end
function ImGui.TableNextRow() end
function ImGui.TableNextColumn() end
