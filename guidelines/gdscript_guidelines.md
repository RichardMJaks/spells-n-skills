# GDScript Guidelines
## Introduction
This document contains basic information on how to format GDScript code. This is just an overview of the most basic things, so do read up on [GDScript Styleguide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html) on the official Godot wiki.


## Cases
GDScript, even though it mostly uses `snake_case`, there are other cases also used situationally.

### `snake_case`
GDScript is mostly written in `snake_case`, so when not sure, use that.

`snake_case` is used for:
* Variables (`var`)
* function names
* file names
* Signals (`signal`)

### `PascalCase`
`PascalCase` is the case for classes and anything resembling a class.

It is used for:
* Class names
* Node names
* Enum names

### `CONSTANT_CASE`
As the name implies, `CONSTANT_CASE` is used for constants.

It is used for:
* Constants
* `enum` members


## Code order
GDScript code should follow the following order:
```gdscript
01. @tool, @icon, @static_unload
02. class_name
03. extends
04. ## doc comment

05. signals
06. enums
07. constants
08. static variables
09. @export variables
10. remaining regular variables
11. @onready variables

12. _static_init()
13. remaining static methods
14. overridden built-in virtual methods:
    1. _init()
    2. _enter_tree()
    3. _ready()
    4. _process()
    5. _physics_process()
    6. remaining virtual methods
15. overridden custom methods
16. remaining methods
17. subclasses`
```
