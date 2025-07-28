# Python Feature Progression by Week

This document tracks exactly which Python features have been introduced by each week, ensuring we never use something before teaching it.

## Week 1: Foundations
**New Concepts:**
- Input/Output operations
- Variables and data storage
- Data types and conversion

**Python Features Introduced:**
- `print()` - displaying output
- `input()` - getting user input (returns string!)
- Variables - storing values
- Data types: `str`, `int`, `float`, `bool`
- Type conversion: `int()`, `float()`, `str()`
- Math operators: `+`, `-`, `*`, `/`
- String concatenation with `+`
- f-strings: `f"Hello {name}"`
- Comments: `#`
- `.upper()`, `.lower()` for string case

**AI Constraints:**
```
Using ONLY: print(), input(), variables, int(), float(), 
basic math (+, -, *, /), f-strings, comments
NO: functions, loops, if statements, lists
```

## Week 2: Decisions
**New Concepts:**
- Program flow control
- Conditional logic
- Boolean operations

**Python Features Added:**
- `if`, `elif`, `else` statements
- Comparison operators: `==`, `!=`, `<`, `>`, `<=`, `>=`
- Logical operators: `and`, `or`, `not`
- Indentation for code blocks
- Boolean values: `True`, `False`

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1 features PLUS
if/elif/else, comparison operators, and/or/not
NO: loops, lists, functions, imports
```

## Week 3: Repetition
**New Concepts:**
- Loops and iteration
- Collections (lists)
- Membership testing

**Python Features Added:**
- `while` loops
- `for` loops
- `range()` function
- Lists: `[]`, `.append()`, accessing by index
- `len()` function
- `in` operator for membership
- `break` and `continue`

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-2 features PLUS
while loops, for loops, range(), lists, len(), in operator
NO: functions, dictionaries, files, imports
```

## Week 4: Text and Review
**New Concepts:**
- String manipulation
- Slicing operations
- Pattern matching basics

**Python Features Added:**
- String slicing: `text[start:end]`
- String methods: `.find()`, `.replace()`, `.strip()`
- `.split()` and `.join()`
- Escape characters: `\n`, `\t`
- Multi-line strings with `"""`
- List slicing

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-3 features PLUS
string slicing, string methods, split/join
NO: functions, dictionaries, files, regex
```

## Week 5: Functions
**New Concepts:**
- Modular programming
- Parameters and returns
- Variable scope

**Python Features Added:**
- `def` keyword
- Function parameters
- `return` statement
- Default parameters
- Local vs global scope
- `None` value
- Docstrings

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-4 features PLUS
def, return, function parameters, scope concepts
NO: *args, **kwargs, lambda, decorators
```

## Week 6: Dictionaries
**New Concepts:**
- Key-value storage
- Nested data structures
- Data organization

**Python Features Added:**
- Dictionaries: `{}`
- Dictionary methods: `.keys()`, `.values()`, `.items()`
- `.get()` with default values
- `del` keyword
- Nested structures
- Dictionary iteration

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-5 features PLUS
dictionaries, dictionary methods, nested structures
NO: classes, files, imports, comprehensions
```

## Week 7: Files
**New Concepts:**
- Persistent storage
- File operations
- Data formats

**Python Features Added:**
- `open()` function
- File modes: 'r', 'w', 'a'
- `.read()`, `.readline()`, `.readlines()`
- `.write()`
- `.close()`
- `with` statement (context manager)
- Path strings

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-6 features PLUS
file operations, with statement
NO: json module, csv module, exceptions
```

## Week 8: Integration
**New Concepts:**
- Combining concepts
- Code organization
- Testing strategies

**Python Features Added:**
- `assert` statements
- `__name__ == "__main__"`
- Multi-file awareness (not imports)
- Basic debugging with `print()`

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-7 features PLUS
assert, main check pattern
NO: imports, classes, advanced features
```

## Week 9: Data Processing
**New Concepts:**
- CSV data handling
- Data analysis
- Working with tables

**Python Features Added:**
- Manual CSV parsing with `.split(',')`
- 2D lists (lists of lists)
- String formatting alignment
- `round()` function
- `sum()`, `min()`, `max()`

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-8 features PLUS
2D lists, built-in math functions
NO: csv module, pandas, numpy
```

## Week 10: External Data
**New Concepts:**
- Error handling
- Web data (simplified)
- JSON format

**Python Features Added:**
- `try`, `except`, `finally`
- Basic exception types
- `import` statement (first time!)
- `json.loads()`, `json.dumps()`
- `requests` library basics

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-9 features PLUS
try/except, imports (json, requests only)
NO: custom exceptions, async, complex libraries
```

## Week 11: Games/Interaction
**New Concepts:**
- Game loops
- State management
- Random numbers

**Python Features Added:**
- `import random`
- `random.randint()`, `random.choice()`
- `time.sleep()`
- Global variables for state
- Complex loop patterns

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-10 features PLUS
random module, time.sleep()
NO: classes, GUI, threading
```

## Week 12: GUIs and Beyond
**New Concepts:**
- Event-driven programming
- Visual interfaces
- Class basics (introduction only)

**Python Features Added:**
- `import tkinter`
- Basic widgets: Button, Label, Entry
- `.pack()` geometry manager
- Event binding basics
- `class` keyword (simple introduction)

**Cumulative AI Constraints:**
```
Using ONLY: All Week 1-11 features PLUS
tkinter basics, simple classes
NO: inheritance, advanced OOP, decorators
```

## Usage Notes

1. **Before Each Week**: Review what's been introduced
2. **When Writing Examples**: Check against cumulative list
3. **For AI Prompts**: Use the specific week's constraints
4. **During Review**: Verify no forward references

## Red Flags to Watch For

- Using `.split()` before Week 4
- Showing functions before Week 5
- Using try/except before Week 10
- Importing anything before Week 10
- List comprehensions (never introduced in basics)
- Lambda functions (never introduced in basics)
- Decorators (never introduced in basics)