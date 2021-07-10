## MacroQuest Next ImGui Lua Autocomplete Defintions (EmmyLua)

### How to Use
- Place files somewhere in your MQNext Lua directory or subdirectory
- Ensure your IDE has been installed with a Lua Lanugage server Extension/Addon that supports EmmyLua annotations.

```lua

--- @type ImGui
require 'ImGui'

. . .

```

When requireing the ImGui bindings in your Lua script, just annotate the require with a type ImGui as shown above.  This will then provide autocomplete for ImGui methods and enum types.
