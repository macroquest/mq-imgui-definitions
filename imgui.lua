--- Macroquest ImGui Lua Binding
--- @class ImGui
--- @field public ImGuiStyleVar any
ImGui = {}

--- Windows


--- ImGuiWindowFlags
--- @class ImGuiWindowFlags
--- @field public None integer
--- @field public NoTitleBar integer Remove TitleBar from Window  
--- @field public NoResize integer Disable Window resize  
--- @field public NoMove integer
--- @field public NoScrollbar integer
--- @field public NoScrollWithMouse integer
--- @field public NoCollapse integer
--- @field public AlwaysAutoResize integer
--- @field public NoBackground integer
--- @field public NoSavedSettings integer
--- @field public NoMouseInputs integer
--- @field public MenuBar integer
--- @field public HorizontalScrollbar integer
--- @field public NoFocusOnAppearing integer
--- @field public NoBringToFrontOnFocus integer
--- @field public AlwaysVerticalScrollbar integer
--- @field public AlwaysHorizontalScrollbar integer
--- @field public AlwaysUseWindowPadding integer
--- @field public NoNavInputs integer
--- @field public NoNavFocus integer
--- @field public UnsavedDocument integer
--- @field public NoDocking integer
--- @field public NoNav integer
--- @field public NoDecoration integer
--- @field public NoInputs integer
--- @field public NavFlattened integer
--- @field public ChildWindow integer
--- @field public Tooltip integer
--- @field public Popup integer
--- @field public Modal integer
--- @field public ChildMenu integer

--- @type ImGuiWindowFlags
ImGuiWindowFlags = {}

---@param name string
---@param isOpen? boolean
---@param imGuiWindowFlags? integer
---@return boolean isOpen, boolean shouldDraw
function ImGui.Begin(name, isOpen, imGuiWindowFlags) end
function ImGui.End()end

--- ChildWindows
---@param name string
---@param sizeX? number
---@param sizeY? number
---@param shouldDraw? boolean
---@param imGuiWindowFlags? integer
function ImGui.BeginChild(name, sizeX, sizeY, shouldDraw, imGuiWindowFlags)end
function ImGui.EndChild()end


---@class ImGuiCond
---@field public None any
---@field public Always any
---@field public Once any
---@field public FirstUseEver any
---@field public Appearing any

---@type ImGuiCond
ImGuiCond = {}

--- Windows Utilities
---@return boolean isAppearing
function ImGui.IsWindowAppearing()end
---@return boolean isCollapsed
function ImGui.IsWindowCollapsed()end
---@param imGuiFocusedFlags? integer
---@return boolean isFocused
function ImGui.IsWindowFocused(imGuiFocusedFlags)end
---@param imGuiHoveredFlags? integer
---@return boolean isFocused
function ImGui.IsWindowHovered(imGuiHoveredFlags)end
---@return number dpiScale
function ImGui.GetWindowDpiScale()end
---@return number posX,number posY
function ImGui.GetWindowPos()end
---@return number sizeX,number sizeY
function ImGui.GetWindowSize()end
---@return number width
function ImGui.GetWindowWidth()end
---@return number height
function ImGui.GetWindowHeight()end
---@param posX number
---@param posY number
---@param imGuiCond? ImGuiCond
---@param pivotX? number
---@param pivotY? number
function ImGui.SetNextWindowPos(posX, posY, imGuiCond, pivotX, pivotY)end
---@param sizeX number
---@param sizeY number
---@param imGuiCond? ImGuiCond
function ImGui.SetNextWindowSize(sizeX, sizeY, imGuiCond)end
---@param minX number
---@param minY number
---@param maxX number
---@param maxY number
function ImGui.SetNextWindowSizeConstraints(minX, minY, maxX, maxY)end
---@param sizeX number
---@param sizeY number
function ImGui.SetNextWindowContentSize(sizeX, sizeY)end
---@param isCollapsed boolean
---@param imGuiCond? ImGuiCond
function ImGui.SetNextWindowCollapsed(isCollapsed, imGuiCond)end
function ImGui.SetNextWindowFocus()end
---@param alpha number
function ImGui.SetNextWindowBgAlpha(alpha)end
---@param name string
---@param posX number
---@param posY number
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowPos(name, posX, posY, imGuiCond)end
---@param name string
---@param sizeX number
---@param sizeY number
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowSize(name, sizeX, sizeY, imGuiCond)end
---@param name string
---@param isCollapsed boolean
---@param imGuiCond? ImGuiCond
function ImGui.SetWindowCollapsed(name, isCollapsed, imGuiCond)end
---@param scale number
function ImGui.SetWindowFontScale(scale)end
---@param name? string
function ImGui.SetWindowFocus(name)end

--- Content Region
---@return number x, number y
function ImGui.GetContentRegionMax()end
---@return number x, number y
function ImGui.GetContentRegionAvail()end
---@return number x, number y
function ImGui.GetWindowContentRegionMin()end
---@return number x, number y
function ImGui.GetWindowContentRegionMax()end
---@return number width
function ImGui.GetWindowContentRegionWidth()end

--- Windows Scrolling
---@return number x
function ImGui.GetScrollX()end
---@return number y
function ImGui.GetScrollY()end
---@return number x
function ImGui.GetScrollMaxX()end
---@return number y
function ImGui.GetScrollMaxY()end
---@param scrollX number
function ImGui.SetScrollX(scrollX)end
---@param scrollY number
function ImGui.SetScrollY(scrollY)end
---@param scrollX? number
function ImGui.SetScrollHereX(scrollX)end
---@param scrollY? number
function ImGui.SetScrollHereY(scrollY)end
---@param localX number
---@param centerXRatio? number
function ImGui.SetScrollFromPosX(localX, centerXRatio)end
---@param localY number
---@param centerYRatio? number
function ImGui.SetScrollFromPosY(localY, centerYRatio)end

--- Parameters Stacks (Shared)
function ImGui.PushFont(...)end
function ImGui.PopFont()end
function ImGui.PushStyleColor(...)end
function ImGui.PopStyleColor(...)end
function ImGui.PushStyleVar(...)end
function ImGui.PopStyleVar(...)end
function ImGui.GetStyleColorVec4(...)end
function ImGui.GetFont()end
function ImGui.GetFontSize()end
function ImGui.GetFontTexUvWhitePixel()end

--- Parameters Stacks (Current Window)
function ImGui.PushItemWidth(...)end
function ImGui.PopItemWidth()end
function ImGui.SetNextItemWidth(...)end
function ImGui.CalcItemWidth()end
function ImGui.PushTextWrapPos(...)end
function ImGui.PopTextWrapPos()end
function ImGui.PushAllowKeyboardFocus(...)end
function ImGui.PopAllowKeyboardFocus()end
function ImGui.PushButtonRepeat(...)end
function ImGui.PopButtonRepeat()end

--- Cursor/Layout
function ImGui.Separator()end
function ImGui.SameLine(...)end
function ImGui.NewLine()end
function ImGui.Spacing()end
function ImGui.Dummy(...)end
function ImGui.Indent(...)end
function ImGui.Unindent(...)end
function ImGui.BeginGroup()end
function ImGui.EndGroup()end
function ImGui.GetCursorPos()end
function ImGui.GetCursorPosX()end
function ImGui.GetCursorPosY()end
function ImGui.SetCursorPos(...)end
function ImGui.SetCursorPosX(...)end
function ImGui.SetCursorPosY(...)end
function ImGui.GetCursorStartPos()end
function ImGui.GetCursorScreenPos()end
function ImGui.SetCursorScreenPos(...)end
function ImGui.AlignTextToFramePadding()end
function ImGui.GetTextLineHeight()end
function ImGui.GetTextLineHeightWithSpacing()end
function ImGui.GetFrameHeight()end
function ImGui.GetFrameHeightWithSpacing()end

--- ID Stack/Scopes
function ImGui.PushID(...)end
function ImGui.PopID()end
function ImGui.GetID(...)end

--- Widgets: Text
---@param ... string
function ImGui.TextUnformatted(...)end
---@param text string
function ImGui.Text(text)end
---@param r number
---@param g number
---@param b number
---@param a number
---@param text string
function ImGui.TextColored(r, g, b, a, text)end
---@param text string
function ImGui.TextDisabled(text)end
---@param ... string
function ImGui.TextWrapped(...)end
---@param label string
---@param text string
function ImGui.LabelText(label, text)end
---@param ... string
function ImGui.BulletText(...)end

--- Widgets: Main
function ImGui.Button(...)end
function ImGui.SmallButton(...)end
function ImGui.InvisibleButton(...)end
function ImGui.ArrowButton(...)end
function ImGui.Checkbox(...)end
function ImGui.RadioButton(...)end
function ImGui.ProgressBar(...)end
function ImGui.Bullet()end

--- Widgets: Combo Box
function ImGui.BeginCombo(...)end
function ImGui.EndCombo()end
function ImGui.Combo(...)end

--- Widgets: Drags
function ImGui.DragFloat(...)end
function ImGui.DragFloat2(...)end
function ImGui.DragFloat3(...)end
function ImGui.DragFloat4(...)end
function ImGui.DragInt(...)end
function ImGui.DragInt2(...)end
function ImGui.DragInt3(...)end
function ImGui.DragInt4(...)end

--- Widgets: Sliders
function ImGui.SliderFloat(...)end
function ImGui.SliderFloat2(...)end
function ImGui.SliderFloat3(...)end
function ImGui.SliderFloat4(...)end
function ImGui.SliderAngle(...)end
function ImGui.SliderInt(...)end
function ImGui.SliderInt2(...)end
function ImGui.SliderInt3(...)end
function ImGui.SliderInt4(...)end
function ImGui.VSliderFloat(...)end
function ImGui.VSliderInt(...)end

--- Widgets: Input with Keyboard
function ImGui.InputText(...)end
function ImGui.InputTextMultiline(...)end
--- @param label string
--- @param hint string
--- @param text string
--- @param imGuiInputTextFlags integer
--- @returns string text, boolean selected
function ImGui.InputTextWithHint(label, hint, text, imGuiInputTextFlags)end
function ImGui.InputFloat(...)end
function ImGui.InputFloat2(...)end
function ImGui.InputFloat3(...)end
function ImGui.InputFloat4(...)end
function ImGui.InputInt(...)end
function ImGui.InputInt2(...)end
function ImGui.InputInt3(...)end
function ImGui.InputInt4(...)end
function ImGui.InputDouble(...)end

--- Widgets: Color Editor / Picker
function ImGui.ColorEdit3(...)end
function ImGui.ColorEdit4(...)end
function ImGui.ColorPicker3(...)end
function ImGui.ColorPicker4(...)end
function ImGui.ColorButton(...)end
function ImGui.SetColorEditOptions(...)end

--- Widgets: Trees
function ImGui.TreeNode(...)end
function ImGui.TreeNodeEx(...)end
function ImGui.TreePush(...)end
function ImGui.TreePop()end
function ImGui.GetTreeNodeToLabelSpacing()end
function ImGui.CollapsingHeader(...)end
function ImGui.SetNextItemOpen(...)end

--- Widgets: Selectables
function ImGui.Selectable(...)end

--- Widgets: List Boxes
function ImGui.ListBox(...)end
function ImGui.ListBoxHeader(...)end
function ImGui.ListBoxFooter()end

--- Widgets: Value() Helpers
function ImGui.Value(...)end

--- Widgets: Menus
function ImGui.BeginMenuBar()end
function ImGui.EndMenuBar()end
function ImGui.BeginMainMenuBar()end
function ImGui.EndMainMenuBar()end
function ImGui.BeginMenu(...)end
function ImGui.EndMenu()end
function ImGui.MenuItem(...)end

--- Tooltips
function ImGui.BeginTooltip()end
function ImGui.EndTooltip()end
function ImGui.SetTooltip(...)end

--- Popups, Modals
function ImGui.BeginPopup(...)end
function ImGui.BeginPopupModal(...)end
function ImGui.EndPopup()end
function ImGui.OpenPopup(...)end
function ImGui.OpenPopupContextItem(...)end
function ImGui.CloseCurrentPopup()end
function ImGui.BeginPopupContextItem(...)end
function ImGui.BeginPopupContextWindow(...)end
function ImGui.BeginPopupContextVoid(...)end
function ImGui.IsPopupOpen(...)end

--- Columns
function ImGui.Columns(...)end
function ImGui.NextColumn()end
function ImGui.GetColumnIndex()end
function ImGui.GetColumnWidth(...)end
function ImGui.SetColumnWidth(...)end
function ImGui.GetColumnOffset(...)end
function ImGui.SetColumnOffset(...)end
function ImGui.GetColumnsCount()end

--- Tab Bars, Tabs
function ImGui.BeginTabBar(...)end
function ImGui.EndTabBar()end
function ImGui.BeginTabItem()end
function ImGui.EndTabItem()end
function ImGui.SetTabItemClosed(...)end

--- Docking
function ImGui.DockSpace(...)end
function ImGui.SetNextWindowDockID(...)end
function ImGui.GetWindowDockID()end
function ImGui.IsWindowDocked()end

--- Logging
function ImGui.LogToTTY(...)end
function ImGui.LogToFile(...)end
function ImGui.LogToClipboard(...)end
function ImGui.LogFinish()end
function ImGui.LogButtons()end
function ImGui.LogText(...)end

--- Clipping
function ImGui.PushClipRect(...)end
function ImGui.PopClipRect()end

--- Focus, Activation
function ImGui.SetItemDefaultFocus()end
function ImGui.SetKeyboardFocusHere(...)end

--- Item / Widgets Utilities
function ImGui.IsItemHovered(...)end
function ImGui.IsItemActive()end
function ImGui.IsItemFocused()end
function ImGui.IsItemClicked(...)end
function ImGui.IsItemVisible()end
function ImGui.IsItemEdited()end
function ImGui.IsItemActivated()end
function ImGui.IsItemDeactivated()end
function ImGui.IsItemDeactivatedAfterEdit()end
function ImGui.IsItemToggledOpen()end
function ImGui.IsAnyItemHovered()end
function ImGui.IsAnyItemActive()end
function ImGui.IsAnyItemFocused()end
function ImGui.GetItemRectMin()end
function ImGui.GetItemRectMax()end
function ImGui.GetItemRectSize()end
function ImGui.SetItemAllowOverlap()end

--- Miscellaneous Utilities
function ImGui.IsRectVisible(...)end
function ImGui.GetTime()end
function ImGui.GetFrameCount()end
function ImGui.GetStyleColorName(...)end
function ImGui.BeginChildFrame(...)end
function ImGui.EndChildFrame()end

--- Text Utilities
function ImGui.CalcTextSize(...)end

--- Color Utilities
function ImGui.ColorConvertRGBtoHSV(...)end
function ImGui.ColorConvertHSVtoRGB(...)end

--- Inputs Utilities: Keyboard
function ImGui.GetKeyIndex(...)end
function ImGui.IsKeyDown(...)end
function ImGui.IsKeyPressed(...)end
function ImGui.IsKeyReleased(...)end
function ImGui.GetKeyPressedAmount(...)end
function ImGui.CaptureKeyboardFromApp(...)end

--- Inputs Utilities: Mouse
function ImGui.IsMouseDown(...)end
function ImGui.IsMouseClicked(...)end
function ImGui.IsMouseReleased(...)end
function ImGui.IsMouseDoubleClicked(...)end
function ImGui.IsMouseHoveringRect(...)end
function ImGui.IsAnyMouseDown()end
function ImGui.GetMousePos()end
function ImGui.GetMousePosOnOpeningCurrentPopup()end
function ImGui.IsMouseDragging(...)end
function ImGui.GetMouseDragDelta(...)end
function ImGui.ResetMouseDragDelta(...)end
function ImGui.GetMouseCursor()end
function ImGui.SetMouseCursor(...)end
function ImGui.CaptureMouseFromApp()end

--- Clipboard Utilities
function ImGui.GetClipboardText()end
function ImGui.SetClipboardText(...)end

--- Uncategorized
function ImGui.GetStyle()end
function ImGui.CheckboxFlags(...)end
function ImGui.Register(...)end

--- ImGuiStyleVar
--- @class ImGuiStyleVar
--- @field FramePadding integer
--- @field IndentSpacing integer
--- @field ItemSpacing integer
ImGuiStyleVar = {}

ImGuiListClipper = {}

---@class ImVec2
---@field x number
---@field y number 
ImVec2 = {}

ImVec4 = {}

---@class Bit32
bit32 = {}

---@param ... integer Flags to xor
---@return integer
function bit32.bor(...) end

--- Tables
---@param name string
---@param columnsCount integer
---@param tableFlags? ImGuiTableFlags
---@param outerSize? ImVec2
---@param innerWidth? number
---@return boolean
function ImGui.BeginTable(name, columnsCount, tableFlags, outerSize, innerWidth)end
function ImGui.EndTable()end
function ImGui.TableSetupColumn(...)end
function ImGui.TableSetBgColor(...)end
function ImGui.TableSetupScrollFreeze(...)end
function ImGui.TableSetColumnIndex(...)end
function ImGui.TableGetSortSpecs()end
function ImGui.TableHeadersRow()end
function ImGui.TableNextRow()end
function ImGui.TableNextColumn()end

--- ImGuiTableFlags
--- @class ImGuiTableFlags
--- @field public None any
--- @field public Resizable any Enable resizing columns.
--- @field public Reorderable any Enable reordering columns in header row (need calling TableSetupColumn() + TableHeadersRow() to display headers)
--- @field public Hideable any Enable hiding/disabling columns in context menu.
--- @field public Sortable any Enable sorting. Call TableGetSortSpecs() to obtain sort specs. Also see ImGuiTableFlags_SortMulti and ImGuiTableFlags_SortTristate.
--- @field public NoSavedSettings any Disable persisting columns order, width and sort settings in the .ini file.
--- @field public ContextMenuInBody any Right-click on columns body/contents will display table context menu. By default it is available in TableHeadersRow().
--- @field public RowBg any Set each RowBg color with ImGuiCol_TableRowBg or ImGuiCol_TableRowBgAlt (equivalent of calling TableSetBgColor with ImGuiTableBgFlags_RowBg0 on each row manually)
--- @field public BordersInnerH any Draw horizontal borders between rows.
--- @field public BordersOuterH any Draw horizontal borders at the top and bottom.
--- @field public BordersInnerV any Draw vertical borders between columns.
--- @field public BordersOuterV any Draw vertical borders on the left and right sides.
--- @field public BordersH any Draw horizontal borders.
--- @field public BordersV any Draw vertical borders.
--- @field public BordersInner any Draw inner borders.
--- @field public BordersOuter any Draw outer borders.
--- @field public Borders any Draw all borders.
--- @field public NoBordersInBody any [ALPHA] Disable vertical borders in columns Body (borders will always appears in Headers). -> May move to style
--- @field public NoBordersInBodyUntilResize any [ALPHA] Disable vertical borders in columns Body until hovered for resize (borders will always appears in Headers). -> May move to style
--- @field public SizingFixedFit any Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable), matching contents width.
--- @field public SizingFixedSame any Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable), matching the maximum contents width of all columns. Implicitly enable ImGuiTableFlags_NoKeepColumnsVisible.
--- @field public SizingStretchProp any Columns default to _WidthStretch with default weights proportional to each columns contents widths.
--- @field public SizingStretchSame any Columns default to _WidthStretch with default weights all equal, unless overridden by TableSetupColumn().
--- @field public NoHostExtendX any  Make outer width auto-fit to columns, overriding outer_size.x value. Only available when ScrollX/ScrollY are disabled and Stretch columns are not used.
--- @field public NoHostExtendY any  Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit). Only available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible.
--- @field public NoKeepColumnsVisible any Disable keeping column always minimally visible when ScrollX is off and table gets too small. Not recommended if columns are resizable.
--- @field public PreciseWidths any  Disable distributing remainder width to stretched columns (width allocation on a 100-wide table with 3 columns: Without this flag: 33,33,34. With this flag: 33,33,33). With larger number of columns, resizing will appear to be less smooth.
--- @field public NoClip any Disable clipping rectangle for every individual columns (reduce draw command count, items will be able to overflow into other columns). Generally incompatible with TableSetupScrollFreeze().
--- @field public PadOuterX any Default if BordersOuterV is on. Enable outer-most padding. Generally desirable if you have headers.
--- @field public NoPadOuterX any Default if BordersOuterV is off. Disable outer-most padding.
--- @field public NoPadInnerX any Disable inner padding between columns (double inner padding if BordersOuterV is on, single inner padding if BordersOuterV is off).
--- @field public ScrollX any Enable horizontal scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size. Changes default sizing policy. Because this create a child window, ScrollY is currently generally recommended when using ScrollX.
--- @field public ScrollY any Enable vertical scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size.
--- @field public SortMulti any Hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1).
--- @field public SortTristate any Allow no sorting, disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0).
--- @field public MultiSortable any Allows Sorting on multiple columns
ImGuiTableFlags = {}

--- ImGuiTableColumnFlags
--- @class ImGuiTableColumnFlags
--- @field public None any
--- @field public Disabled any Overriding/master disable flag: hide column, won't show in context menu (unlike calling TableSetColumnEnabled() which manipulates the user accessible state)
--- @field public DefaultHide any Default as a hidden/disabled column.
--- @field public DefaultSort any Default as a sorting column.
--- @field public WidthStretch any Column will stretch. Preferable with horizontal scrolling disabled (default if table sizing policy is _SizingStretchSame or _SizingStretchProp).
--- @field public WidthFixed any Column will not stretch. Preferable with horizontal scrolling enabled (default if table sizing policy is _SizingFixedFit and table is resizable).
--- @field public NoResize any Disable manual resizing.
--- @field public NoReorder any Disable manual reordering this column, this will also prevent other columns from crossing over this column.
--- @field public NoHide any Disable ability to hide/disable this column.
--- @field public NoClip any Disable clipping for this column (all NoClip columns will render in a same draw command).
--- @field public NoSort any Disable ability to sort on this field (even if ImGuiTableFlags_Sortable is set on the table).
--- @field public NoSortAscending any Disable ability to sort in the ascending direction.
--- @field public NoSortDescending any Disable ability to sort in the descending direction.
--- @field public NoHeaderLabel any TableHeadersRow() will not submit label for this column. Convenient for some small columns. Name will still appear in context menu.
--- @field public NoHeaderWidth any Disable header text width contribution to automatic column width.
--- @field public PreferSortAscending any Make the initial sort direction Ascending when first sorting on this column (default).
--- @field public PreferSortDescending any Make the initial sort direction Descending when first sorting on this column.
--- @field public IndentEnable any Use current Indent value when entering cell (default for column 0).
--- @field public IndentDisable any Ignore current Indent value when entering cell (default for columns > 0). Indentation changes _within_ the cell will still be honored.
--- @field public IsEnabled any Status: is enabled == not hidden by user/api (referred to as "Hide" in _DefaultHide and _NoHide) flags.
--- @field public IsVisible any Status: is visible == is enabled AND not clipped by scrolling.
--- @field public IsSorted any Status: is currently part of the sort specs
--- @field public IsHovered any Status: is hovered by mouse
--- @field public WidthMask_ any
--- @field public IndentMask_ any
--- @field public StatusMask_ any
--- @field public NoDirectResize_ any [Internal] Disable user resizing this column directly (it may however we resized indirectly from its left edge)
ImGuiTableColumnFlags = {}

--- @class ImGuiTableBgTarget
--- @field None any
--- @field RowBg0 any Set row background color 0 (generally used for background, automatically set when ImGuiTableFlags_RowBg is used)
--- @field RowBg1 any Set row background color 1 (generally used for selection marking)
--- @field CellBg any Set cell background color (top-most color)
ImGuiTableBgTarget = {}

--- @class ImGuiTreeNodeFlags
--- @field public None any
--- @field public Selected any Draw as selected
--- @field public Framed any Draw frame with background (e.g. for CollapsingHeader)
--- @field public AllowItemOverlap any Hit testing to allow subsequent widgets to overlap this one
--- @field public NoTreePushOnOpen any Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
--- @field public NoAutoOpenOnLog any Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
--- @field public DefaultOpen any Default node to be open
--- @field public OpenOnDoubleClick any Need double-click to open node
--- @field public OpenOnArrow any Only open when clicking on the arrow part. If ImGuiTreeNodeFlags_OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
--- @field public Leaf any No collapsing, no arrow (use as a convenience for leaf nodes).
--- @field public Bullet any Display a bullet instead of arrow
--- @field public FramePadding any Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
--- @field public SpanAvailWidth any Extend hit box to the right-most edge, even if not framed. This is not the default in order to allow adding other items on the same line. In the future we may refactor the hit system to be front-to-back, allowing natural overlaps and then this can become the default.
--- @field public SpanFullWidth any Extend hit box to the left-most and right-most edges (bypass the indented area).
--- @field public NavLeftJumpsBackHere any (WIP) Nav: left direction may move to this TreeNode() from any of its child (items submitted between TreeNode and TreePop)
--- @field public CollapsingHeader any
ImGuiTreeNodeFlags = {}

--- @class ImGuiSortDirection
--- @field None any
--- @field Ascending any 0->9, A->Z etc.
--- @field Descending any 9->0, Z->A etc.





--- @type ImGuiSortDirection
ImGuiSortDirection = {}

--- @class ImGuiCol
--- @field public Text any
--- @field public TextDisabled any
--- @field public WindowBg any
--- @field public ChildBg any
--- @field public PopupBg any Background of popups, menus
--- @field public Border any
--- @field public BorderShadow any
--- @field public FrameBg any Background of checkbox, radio button, plot, slider
--- @field public FrameBgHovered any
--- @field public FrameBgActive any
--- @field public TitleBg any
--- @field public TitleBgActive any
--- @field public TitleBgCollapsed any
--- @field public MenuBarBg any
--- @field public ScrollbarBg any
--- @field public ScrollbarGrab any
--- @field public ScrollbarGrabHovered any
--- @field public ScrollbarGrabActive any
--- @field public CheckMark any
--- @field public SliderGrab any
--- @field public SliderGrabActive any
--- @field public Button any
--- @field public ButtonHovered any
--- @field public ButtonActive any
--- @field public Header any Header* colors are used for CollapsingHeader, TreeNode, Selectable
--- @field public HeaderHovered any
--- @field public HeaderActive any
--- @field public Separator any
--- @field public SeparatorHovered any
--- @field public SeparatorActive any
--- @field public ResizeGrip any
--- @field public ResizeGripHovered any
--- @field public ResizeGripActive any
--- @field public Tab any
--- @field public TabHovered any
--- @field public TabActive any
--- @field public TabUnfocused any
--- @field public TabUnfocusedActive any
--- @field public PlotLines any
--- @field public PlotLinesHovered any
--- @field public PlotHistogram any
--- @field public PlotHistogramHovered any
--- @field public TableHeaderBg any
--- @field public TableBorderStrong any
--- @field public TableBorderLight any
--- @field public TableRowBg any
--- @field public TableRowBgAlt any
--- @field public TextSelectedBg any
--- @field public DragDropTarget any
--- @field public NavHighlight any
--- @field public NavWindowingHighlight any
--- @field public NavWindowingDimBg any Darken/colorize entire screen behind the CTRL+TAB window list
--- @field public ModalWindowDimBg any Darken/colorize entire screen behind a modal window
ImGuiCol = {}

--- @class ImGuiTabBarFlags
--- @field public None any
--- @field public Reorderable any Allow manually dragging tabs to re-order them + New tabs are appended at the end of list
--- @field public AutoSelectNewTabs any Automatically select new tabs when they appear
--- @field public TabListPopupButton any Disable buttons to open the tab list popup
--- @field public NoCloseWithMiddleMouseButton any Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You can still repro this behavior on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false.
--- @field public NoTabListScrollingButtons any Disable scrolling buttons (apply when fitting policy is ImGuiTabBarFlags_FittingPolicyScroll)
--- @field public NoTooltip any Disable tooltips when hovering a tab
--- @field public FittingPolicyResizeDown any Resize tabs when they don't fit
--- @field public FittingPolicyScroll any Add scroll buttons when tabs don't fit
ImGuiTabBarFlags = {}

--- @class ImGuiTreeNodeFlags
--- @field public None any
--- @field public Selected any
--- @field public Framed any
--- @field public AllowItemOverlap any
--- @field public NoTreePushOnOpen any
--- @field public NoAutoOpenOnLog any
--- @field public DefaultOpen any
--- @field public OpenOnDoubleClick any
--- @field public OpenOnArrow any
--- @field public Leaf any
--- @field public Bullet any
--- @field public FramePadding any
--- @field public SpanAvailWidth any
--- @field public SpanFullWidth any
--- @field public NavLeftJumpsBackHere any
--- @field public CollapsingHeader any
ImGuiTreeNodeFlags = {}