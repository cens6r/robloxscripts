# Hooking Library

heyyyy it's me again and i've decided to make a hook library that will (hopefully) make it easier for some people to hook
<br>
the main reason tho is to avoid the repetitive code with the checks and everything
<br>
quick edit: i wasnt able to test this that much, but if you find any errors or bugs, please dm me and ill fix them ASAP: deity#9160

## Script
```lua
local Hook = loadstring(game:HttpGet("https://raw.githubusercontent.com/d4p4v/tools/main/hook.lua", true))()
```

## Tutorial
how to use it? simple
<br>
<br>
we all know, there are 3 main hook types:
<br>
```lua
Hook.Type = {
   Index = "__index",
   Namecall = "__namecall",
   NewIndex = "__newindex"
}
```
<br>
so, the Hook accepts named arguments:
<br>
```lua
params = params or {
    Type = "The hook type to use, refer to Hook.Type",
    Target = "The target instance / name of the target instance",
    Method = "The namecall method if namecall is the type",
    Index = "The index if index is the type",
    Func = "The function modifies the arguments"
}
```
<br>
<br>
with the info above, we can create a simple anti-kick `__namecall` hook like this:
<br>
```lua
local ncHook = Hook {
   Type = Hook.Type.Namecall,
   Target = game.Players.LocalPlayer,
   Method = "Kick",
   Func = function(args)
       return print("no")
   end
}

```
<br>
<br>
as you can see, it's way less code.
not only that, but you can also disconnect the hooks quite easily, simply by doing:
<br>
```lua
ncHook:Disconnect()
```
<br>
<br>
u might have noticed the args parameter inside the hook's Func argument: it is used to modify args that are passed
<br>
the args are passed like following:
<br>
```lua
local args = {...}

params.Func(args)
```
<br>
this means that the first arg, which is the instance of the hook, is not passed along
<br>
example modifying arguments of namecall hook by using the chat event:
<br>
```lua
Hook {
   Type = Hook.Type.Namecall,
   Target = "SayMessageRequest",
   Method = "FireServer",
   Func = function(args)
       args[1] = "Chat hooked"
       return args
   end
}
```
<br>
<br>
that concludes it
i dont think this is particularly useful to anyone other than myself, but feel free to use it
