# Week 1 Lecture Revision Notes

## What Changed

### Added "From Concepts to Code" Section

**Problem Identified**: 
- We introduced high-level concepts (storage, processing) but then jumped to using `float()` in constraints
- Students wouldn't understand why we need type conversion

**Solution Implemented**:
1. Expanded to 6 building blocks (split Input/Output, added Processing explicitly)
2. Added bridging section "From Concepts to Code: Python's Way"
3. Explained WHY languages need data types
4. Mapped conceptual types to Python types:
   - Text → `str` (strings)
   - Numbers → `int` and `float`
   - Yes/No → `bool` (boolean)
5. Highlighted the critical detail: `input()` ALWAYS returns strings

### Key Addition: Type Conversion Explanation

```python
# This is ALWAYS a string, even if user types "42"
user_input = input("Enter a number: ")

# To do math, we must convert:
number = int(user_input)    # Convert to integer
number = float(user_input)  # Convert to decimal
```

This explains WHY our constrained prompt needs `float()` - making the progression logical.

### Timing Adjustments
- Computational Thinking: 20 min → 25 min (added Python specifics)
- AI Partnership: 20 min → 15 min (kept total at 60 min)

### Added Textbook References
Connected to chapters 0-4 which cover:
- AI learning philosophy
- Basic output with print()
- Variables and storage
- Input from users
- Numbers and type conversion

## Why This Is Better

1. **No Gaps**: Students understand every concept before we use it
2. **Clear Bridge**: From abstract concepts to concrete Python implementation
3. **Practical Focus**: Emphasizes the critical `input()` returns string issue
4. **Natural Flow**: Concepts → Implementation → Application with AI
5. **Future-Ready**: References upcoming weeks for decisions and loops

## Teaching Notes

When presenting the "From Concepts to Code" section:
- Use the box analogy for different sized boxes for different types
- Show a type error live when forgetting to convert
- Emphasize this is Python's way - other languages might differ
- Keep it practical - avoid deep technical details about memory