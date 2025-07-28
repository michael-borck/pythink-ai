# Course Development Guidelines
## Preventing Concept-Before-Introduction Errors

### Core Principle: No Surprises
Never use code, syntax, or concepts that haven't been explicitly introduced and mapped from conceptual to concrete implementation.

## Standard Lecture Structure Template

Every lecture should follow this pattern:

### 1. Hook/Reality Check (5-10 min)
- Real-world problem or AI demonstration
- Why this week's topic matters
- Connection to previous weeks

### 2. Computational Concepts (15-20 min)
- Abstract concepts first
- Real-world analogies
- Visual representations
- NO CODE YET

### 3. From Concepts to Code (10-15 min) ← REQUIRED SECTION
- Bridge abstract to concrete
- Map concepts to Python specifics
- Introduce any new syntax/functions
- Explain WHY Python does it this way
- Show common gotchas

### 4. AI Partnership Demo (10-15 min)
- Progressive prompt refinement
- Using constraints based on what's been taught
- Identifying AI overcomplication
- Strategic simplification

### 5. Integration & Why It Matters (5-10 min)
- Practical applications
- Preview of next steps
- Connection to larger picture

## Concept Introduction Checklist

Before using ANY Python feature in examples, constraints, or exercises, verify:

- [ ] Has the concept been introduced abstractly?
- [ ] Has it been mapped to Python syntax?
- [ ] Have students seen it in context?
- [ ] Do they understand WHY it's needed?

## Weekly Prerequisites Tracking

### Week 1 Introduced:
- `print()` - output
- `input()` - getting text from user
- Variables - storage
- Basic data types: str, int, float, bool
- Type conversion: `int()`, `float()`, `str()`
- Basic math operators: +, -, *, /
- String concatenation with +
- Basic f-strings: `f"text {variable}"`
- Comments with #

### Week 2 Can Use:
- Everything from Week 1
- `if`, `elif`, `else`
- Comparison operators: ==, !=, <, >, <=, >=
- Logical operators: and, or, not
- `.upper()`, `.lower()` for strings

### Week 3 Can Use:
- Everything from Weeks 1-2
- `while` loops
- `for` loops with `range()`
- Lists and basic list operations
- `len()` function
- `in` operator for membership

[Continue for each week...]

## Constraint Language Templates

When creating AI prompts for students, use these templates:

### Week 1 Constraints:
```
"Using ONLY these Python features:
- print() for output
- input() to get user data
- Variables to store values
- int() and float() to convert strings to numbers
- Basic math operators (+, -, *, /)
- f-strings for formatting like f'text {variable}'
No functions, no loops, no if statements yet"
```

### Week 2 Constraints:
```
"Using ONLY features from Weeks 1-2:
- All Week 1 features
- if/elif/else for decisions
- Comparison operators (==, <, >, etc.)
- .upper() and .lower() for string comparison
No loops, no lists, no functions yet"
```

## Code Review Checklist

Before finalizing any week's materials:

1. **Lecture Review**:
   - [ ] List all Python features shown
   - [ ] Verify each was introduced properly
   - [ ] Check "From Concepts to Code" section exists
   - [ ] Confirm examples only use allowed features

2. **Lab Review**:
   - [ ] Check all code uses only introduced features
   - [ ] Verify AI constraints match week's knowledge
   - [ ] Ensure no forward references

3. **Project Review**:
   - [ ] Confirm achievable with week's features
   - [ ] Check rubric doesn't expect uninstructed concepts
   - [ ] Verify examples stay within bounds

## Common Pitfalls to Avoid

### Syntactic Surprises
- Using `.split()` before teaching it
- Showing list comprehensions too early
- Including error handling (try/except) prematurely
- Using string methods not yet introduced

### Conceptual Leaps
- Assuming students know what "iteration" means
- Using "function" before Week 5
- Mentioning "scope" before it's relevant
- Discussing "objects" or "methods" too early

### AI Constraint Errors
- Forgetting to limit features in prompts
- Not updating constraints as weeks progress
- Allowing AI to introduce advanced concepts
- Not providing complete feature lists

## Development Workflow

1. **Plan Phase**:
   - List week's new concepts
   - Map concepts to Python features
   - Update cumulative feature list

2. **Write Phase**:
   - Follow standard structure
   - Include "From Concepts to Code"
   - Check against feature list

3. **Review Phase**:
   - Run through checklist
   - Test all code examples
   - Verify AI prompts work as intended

4. **Revise Phase**:
   - Fix any forward references
   - Ensure smooth concept flow
   - Add clarifications as needed

## Template: From Concepts to Code Section

```markdown
### From Concepts to Code: Python's Way

This week's concepts map to Python like this:

#### [Concept Name] → Python Implementation

**Why It Works This Way**:
[Explanation of Python's approach]

**The Syntax**:
```python
# Example showing the syntax
```

**Common Gotchas**:
- [Gotcha 1]
- [Gotcha 2]

**Why We Need This**:
[Practical explanation]
```

## Quality Assurance

Before releasing any week:
1. Have someone else check for forward references
2. Test all constrained AI prompts
3. Verify examples build only on prior knowledge
4. Ensure conceptual flow is smooth

Remember: Students can't Google what they don't know exists. Every new feature must be explicitly introduced!