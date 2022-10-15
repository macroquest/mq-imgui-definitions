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

---@param imGuiCol ImGuiCol
---@param colR number
---@param colG number
---@param colB number
---@param colA number
function ImGui.PushStyleColor(imGuiCol, colR, colG, colB, colA) end

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

---@param sizeX number
---@param sizeY number
function ImGui.Dummy(sizeX, sizeY) end

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

---@param localX number
---@param localY number
function ImGui.SetCursorPos(localX, localY) end

---@param localX number
function ImGui.SetCursorPosX(localX) end

---@param localY number
function ImGui.SetCursorPosY(localY) end


---@return number (x), number (y)
function ImGui.GetCursorStartPos() end

---@return number (x), number (y)
function ImGui.GetCursorScreenPos() end

---@param x number
---@param y number
function ImGui.SetCursorScreenPos(x, y) end

function ImGui.AlignTextToFramePadding() end

---@return number
function ImGui.GetTextLineHeight() end

---@return number
function ImGui.GetTextLineHeightWithSpacing() end

---@return number
function ImGui.GetFrameHeight() end

---@return number
function ImGui.GetFrameHeightWithSpacing() end

--- ID Stack/Scopes

---@param id integer
function ImGui.PushID(id) end

---@param id string
function ImGui.PushID(id) end

---@param idBegin string
---@param idEnd string
function ImGui.PushID(idBegin, idEnd) end

function ImGui.PopID() end

---@param id string
---@return integer # id
function ImGui.GetID(id) end

---@param idBegin string
---@param idEnd string
---@return integer # id
function ImGui.GetID(idBegin, idEnd) end

--- Widgets: Text
---@vararg string
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

---@vararg string
function ImGui.TextWrapped(...) end

---@param label string
---@param text string
function ImGui.LabelText(label, text) end

---@vararg string
function ImGui.BulletText(...) end

--- Widgets: Main

---@param label string
function ImGui.Button(label) end

---@param label string
---@param sizeX number
---@param sizeY number
function ImGui.Button(label, sizeX, sizeY) end

---@param label string
function ImGui.SmallButton(label) end

---@param label string
---@param sizeX number
---@param sizeY number
function ImGui.InvisibleButton(label, sizeX, sizeY) end

---@param label string
---@param imGuiDir ImGuiDir
function ImGui.ArrowButton(label, imGuiDir) end

---@param label string
---@param value boolean
---@return boolean value, boolean pressed
function ImGui.Checkbox(label, value) end

---@generic T
---@param label string
---@param flags T
---@param flags_value T
---@return T flags, boolean pressed
function ImGui.CheckboxFlags(label, flags, flags_value) end

---@param label string
---@param active boolean
---@return boolean active
function ImGui.RadioButton(label, active) end

---@param label string
---@param v integer
---@param vButton integer
---@return integer v, boolean active
function ImGui.RadioButton(label,v, vButton) end

---@param fraction number
function ImGui.ProgressBar(fraction) end

---@param fraction number
---@param sizeX number
---@param sizeY number
---@param overlay? string   
function ImGui.ProgressBar(fraction, sizeX, sizeY, overlay) end

function ImGui.Bullet() end

--- Widgets: Combo Box

---@param label string
---@param previewValue string
---@param flags? ImGuiComboFlags
function ImGui.BeginCombo(label, previewValue, flags) end
function ImGui.EndCombo() end

---@param label string
---@param currentItem integer
---@param items table
---@param itemsCount integer
---@param popupMaxHeightInItems? integer
---@return integer
function ImGui.Combo(label, currentItem, items, itemsCount, popupMaxHeightInItems) end

---@param label string
---@param currentItem integer
---@param itemsSeparatedByZeros string
---@param popupMaxHeightInItems? integer
---@return integer
function ImGui.Combo(label, currentItem, itemsSeparatedByZeros, popupMaxHeightInItems) end

--- Widgets: Drags

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number # value, bool # used
function ImGui.DragFloat(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number[] # value, bool # used
function ImGui.DragFloat2(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number[] # value, bool # used
function ImGui.DragFloat3(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number[] # value, bool # used
function ImGui.DragFloat4(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value integer
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return integer # value, bool # used
function ImGui.DragInt(label, value, value_speed, value_min, value_max, format) end

---@param label string
---@param value integer
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return integer[] # value, bool # used
function ImGui.DragInt2(label, value, value_speed, value_min, value_max, format) end

---@param label string
---@param value integer
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return integer[] # value, bool # used
function ImGui.DragInt3(label, value, value_speed, value_min, value_max, format) end

---@param label string
---@param value integer
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return integer[] # value, bool # used
function ImGui.DragInt4(label, value, value_speed, value_min, value_max, format) end

--- Widgets: Sliders

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number # value, bool # used
function ImGui.SliderFloat(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number[] # value, bool # used
function ImGui.SliderFloat2(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number[] # value, bool # used
function ImGui.SliderFloat3(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number[] # value, bool # used
function ImGui.SliderFloat4(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param v_rad number
---@param v_degrees_min number
---@param v_degrees_max number
---@param format string
---@return number # v_rad, bool # used
function ImGui.SliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format) end

---@param label string
---@param v integer
---@param v_min integer
---@param v_max integer
---@param format? string
---@return integer value, boolean selected
function ImGui.SliderInt(label, v, v_min, v_max, format) end


---@param label string
---@param v table
---@param v_min integer
---@param v_max integer
---@param format? string
---@return integer[] values, boolean selected
function ImGui.SliderInt2(label, v, v_min, v_max, format) end

---@param label string
---@param v table
---@param v_min integer
---@param v_max integer
---@param format? string
---@return integer[] values, boolean selected
function ImGui.SliderInt3(label, v, v_min, v_max, format) end

---@param label string
---@param v table
---@param v_min integer
---@param v_max integer
---@param format? string
---@return integer[] values, boolean selected
function ImGui.SliderInt4(label, v, v_min, v_max, format) end

---@param label string
---@param size_x number
---@param size_y number
---@param value number
---@param value_min number
---@param value_max number
---@param format? string
---@param power? number
---@return number # value, bool # used
function ImGui.VSliderFloat(label, size_x, size_y, value, value_min, value_max, format, power) end

---@param label string
---@param size_x number
---@param size_y number
---@param value integer
---@param value_min integer
---@param value_max integer
---@param format? string
---@return integer # value, bool # used
function ImGui.VSliderInt(label, size_x, size_y, value, value_min, value_max, format) end

--- Widgets: Input with Keyboard

---@param label string
---@param text string
---@param imGuiInputTextFlags? ImGuiInputTextFlags
--- @return string text, boolean selected
function ImGui.InputText(label, text, imGuiInputTextFlags) end

---@param label string
---@param text string
---@param size_x number
---@param size_y number
---@param imGuiInputTextFlags? ImGuiInputTextFlags
--- @return string text, boolean selected
function ImGui.InputTextMultiline(label, text, size_x, size_y, imGuiInputTextFlags) end

--- @param label string
--- @param hint string
--- @param text string
--- @param imGuiInputTextFlags? ImGuiInputTextFlags
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
---@param count? integer
---@param text? string
---@param border? boolean
function ImGui.Columns(count, text, border) end

function ImGui.NextColumn() end

---@return integer # Column index
function ImGui.GetColumnIndex() end

---@param columnIndex? integer
---@return number
function ImGui.GetColumnWidth(columnIndex) end

---@param columnIndex integer
---@param width integer
function ImGui.SetColumnWidth(columnIndex, width) end

---@param columnIndex? integer
---@return number 
function ImGui.GetColumnOffset(columnIndex) end

---@param columnIndex integer
---@param offset integer
function ImGui.SetColumnOffset(columnIndex, offset) end

---@return integer
function ImGui.GetColumnsCount() end

--- Tab Bars, Tabs
function ImGui.BeginTabBar(...) end
function ImGui.EndTabBar() end

---@param header string
function ImGui.BeginTabItem(header) end
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

---@param text string
---@param textEnd? string
---@param hideTextAfterDoubleDash? boolean
---@param wrapWith? number
---@return number x, number y
function ImGui.CalcTextSize(text, textEnd, hideTextAfterDoubleDash, wrapWith) end

--- Color Utilities

---@param r number
---@param g number
---@param b number
---@return number h, number s, number v
function ImGui.ColorConvertRGBtoHSV(r, g , b) end

---@param h number
---@param s number
---@param v number
---@return number r, number g, number b
function ImGui.ColorConvertHSVtoRGB(h, s, v) end

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

---@return number, number
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

---@param name string
---@param render fun()
function ImGui.Register(name, render) end

--- Tables
---@param name string
---@param columnsCount integer
---@param tableFlags? ImGuiTableFlags
---@return boolean
function ImGui.BeginTable(name, columnsCount, tableFlags, outerSize, innerWidth) end

---@param name string
---@param columnsCount integer
---@param tableFlags ImGuiTableFlags
---@param outer_sizeX number
---@param outer_sizeY number
---@param innerWidth? number
---@return boolean
function ImGui.BeginTable(name, columnsCount, tableFlags, outer_sizeX, outer_sizeY, innerWidth) end

function ImGui.EndTable() end

---@param label string
---@param flags? ImGuiTableColumnFlags
---@param init_width_or_weight? number
---@param user_id? integer
function ImGui.TableSetupColumn(label, flags, init_width_or_weight, user_id)  end

---@param bg_target integer
---@param colR number
---@param colG number
---@param colB number
---@param colA number
---@param column_n? integer
function ImGui.TableSetBgColor(bg_target, colR, colG, colB, colA, column_n) end

---@param cols integer
---@param rows integer
function ImGui.TableSetupScrollFreeze(cols, rows) end

---@param column_n integer
---@return boolean
function ImGui.TableSetColumnIndex(column_n) end

function ImGui.TableGetSortSpecs() end

function ImGui.TableHeadersRow() end

---@param row_flags? integer
---@param min_row_height? number
function ImGui.TableNextRow(row_flags, min_row_height) end

function ImGui.TableNextColumn() end

---@return boolean
function ImGui.BeginDragDropSource() end

---@param label string
---@param payload any
function ImGui.SetDragDropPayload(label, payload) end

function ImGui.EndDragDropSource() end

---@return boolean
function ImGui.BeginDragDropTarget() end

---@return userdata #LuaImGuiPayload
function ImGui.AcceptDragDropPayload(label) end

function ImGui.EndDragDropTarget() end

---@param texture userdata #CTextureAnimation
---@param width number
---@param height number
function ImGui.DrawTextureAnimation(texture, width, height) end