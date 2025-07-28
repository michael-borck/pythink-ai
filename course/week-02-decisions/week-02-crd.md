# Week 2: Course Requirements Document (CRD)
## Decision Making & Program Flow

### Overview
Week 2 introduces students to decision-making in programs, building on Week 1's foundation. Students learn how programs make choices, follow different paths, and respond intelligently to different inputs. Using AI partnership, they'll explore conditional logic while avoiding common overcomplication traps.

### Prerequisites
Students should have completed Week 1 and be comfortable with:
- Basic input/output operations
- Variables and data types (str, int, float, bool)
- Type conversion
- Using AI for learning through prompt evolution

### Learning Objectives
By the end of Week 2, students will be able to:

1. **Computational Thinking - Decisions**
   - Understand how programs make choices
   - Visualize program flow with flowcharts
   - Recognize decision patterns in real-world systems
   - Trace execution paths through conditional code
   - Identify where decisions are needed in problems

2. **Python Implementation**
   - Use `if`, `elif`, and `else` statements correctly
   - Apply comparison operators (==, !=, <, >, <=, >=)
   - Combine conditions with logical operators (and, or, not)
   - Understand indentation for code blocks
   - Work with boolean values (True/False)

3. **AI Partnership Skills**
   - Guide AI to generate appropriate conditional logic
   - Recognize when AI overcomplicates decisions
   - Use AI to trace execution paths
   - Debug logic errors with AI assistance
   - Constrain AI to use only learned features

4. **Problem-Solving Approach**
   - Break complex decisions into simple conditions
   - Build decision trees before coding
   - Test all possible paths through code
   - Handle edge cases appropriately

### Session Breakdown

#### Week 2 Lecture: How Programs Make Decisions
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Smart Thermostat** (10 min)
   - Demo: AI-generated "smart home controller"
   - Show overwhelming complexity with nested conditions
   - Ask: "What decisions does a thermostat really need?"
   - Simplify to core: if too cold → heat, if too hot → cool
   - Set stage for managing complexity

2. **Computational Concept: Decision Making** (20 min)
   - Real-world decisions everywhere:
     - Traffic lights: if pedestrian waiting → change signal
     - Vending machine: if enough money → dispense item
     - Phone: if battery < 20% → show warning
   - Decision patterns:
     - Single choice (if)
     - Either/or choice (if/else)
     - Multiple options (if/elif/else)
   - Flowchart notation:
     - Diamond for decisions
     - Arrows for different paths
     - Merge points where paths rejoin

3. **From Concepts to Code: Python's Conditionals** (15 min)
   - The `if` statement structure:
     ```python
     if condition:
         # This runs if condition is True
     ```
   - Understanding True/False:
     - Every condition evaluates to boolean
     - Comparisons create booleans
     - Why indentation matters (Python's uniqueness)
   
   - Comparison operators:
     - `==` equals (not `=` which assigns!)
     - `!=` not equals
     - `<`, `>`, `<=`, `>=` for ordering
   
   - Building complex conditions:
     - `and` - both must be True
     - `or` - at least one must be True
     - `not` - reverses True/False
   
   - Common patterns:
     ```python
     # Checking ranges
     if age >= 18 and age < 65:
     
     # Multiple valid options
     if choice == "Y" or choice == "y":
     
     # Using .upper() to simplify
     if choice.upper() == "Y":
     ```

4. **AI Partnership: Smart Simplification** (10 min)
   - Progressive prompting for decisions:
     - Start: "grade calculator"
     - Refine: "simple grade calculator with letter grades"
     - Constrain: "using only if/elif/else and comparisons"
   - Common AI overcomplications:
     - Dictionary mappings (too advanced)
     - Nested ternary operators
     - Complex boolean algebra
     - Match/case statements (Python 3.10+)
   - Debugging with AI:
     - "Trace through this code when score is 85"
     - "Why does this give 'B' when score is 90?"
     - "What happens if score is exactly 80?"

5. **Integration: Why This Matters** (5 min)
   - Every interactive program needs decisions
   - Foundation for game logic
   - Basis for data validation
   - Essential for user interfaces
   - Preview: Loops will use these same conditions

**Key Demonstrations:**
- Live flowchart drawing
- Trace execution with different inputs
- Show how indentation affects flow
- Debug a logic error together

#### Week 2 Lab: Building Smart Programs
**Duration:** 2 hours

**Hour 1: Understanding Decisions**

1. **Flowchart First** (20 min)
   - Draw decision flows before coding
   - Practice with thermostat example
   - Create flowchart for grade calculator
   - Identify all decision points

2. **Basic Conditionals** (20 min)
   - Simple if statements
   - Adding else branches
   - Multiple elif options
   - Testing with edge cases

3. **Comparison Practice** (20 min)
   - Number comparisons
   - String comparisons (case sensitivity!)
   - Boolean variables
   - Common mistakes (= vs ==)

**Hour 2: Integration and Project**

1. **Complex Conditions** (20 min)
   - Using and/or/not
   - Checking ranges
   - Multiple valid inputs
   - Simplification strategies

2. **AI-Assisted Debugging** (20 min)
   - Logic error exercises
   - Trace execution paths
   - Find missing cases
   - Fix incorrect conditions

3. **Project Start** (20 min)
   - Smart grade calculator design
   - Plan all decision paths
   - Begin implementation
   - Test systematically

**Lab Deliverables:**
- Flowcharts for programs
- Conditional practice exercises
- Debugging documentation
- Grade calculator start

### Assessment Components

#### Formative Assessments

1. **Decision Trace Exercises**
   - Given code and input, trace execution
   - Identify which branches execute
   - Predict output correctly

2. **Flowchart Creation**
   - Convert requirements to flowchart
   - Convert flowchart to code
   - Verify all paths covered

3. **Logic Debugging**
   - Find and fix logic errors
   - Identify missing cases
   - Simplify complex conditions

#### Summative Assessment

**Week 2 Project: Smart Grade Calculator**
Create a grade calculator that:
- Accepts a numerical score (0-100)
- Validates the input is in range
- Converts to letter grade with +/- modifiers
- Provides personalized feedback
- Handles edge cases gracefully

**Example Interaction:**
```
=== Smart Grade Calculator ===
Enter your numerical score (0-100): 87

Score: 87%
Grade: B+
Feedback: Great work! You're above average.

Would you like to check another grade? (Y/N): n
Thanks for using the grade calculator!
```

**Grading Scale Implementation:**
- 93-100: A (with 97+ being A+)
- 90-92: A-
- 87-89: B+
- 83-86: B
- 80-82: B-
- (continue pattern...)

**Required Features:**
1. Input validation (reject < 0 or > 100)
2. Accurate grade calculation
3. Meaningful feedback for each grade range
4. Option to calculate multiple grades
5. Clean, user-friendly interface

### Common Pitfalls to Avoid

1. **Logic Errors**
   - Overlapping conditions (e.g., >= 90 and > 89)
   - Gaps in coverage (missing exactly 90)
   - Wrong operator (> when >= needed)
   - Order matters with elif

2. **Comparison Confusion**
   - Using = instead of ==
   - Comparing different types ("5" == 5 is False)
   - Case sensitivity in string comparison
   - Float comparison precision issues

3. **Over-Complication**
   - Too many nested conditions
   - Redundant conditions
   - Not using elif when appropriate
   - Making simple decisions complex

4. **AI Traps**
   - AI suggesting match/case (too new)
   - Dictionary dispatch (too advanced)
   - Lambda functions with conditions
   - Overly clever boolean logic

### Instructor Notes

#### Pacing Considerations
- Students often struggle with indentation initially
- >= vs > confusion is common
- and/or logic takes practice
- Flowcharts help immensely

#### Key Demonstrations
1. **Indentation Matters**
   - Show how wrong indentation changes logic
   - Use visual guides in editor

2. **Edge Case Testing**
   - Always test boundary values
   - Show systematic testing approach

3. **Debugging Logic**
   - Add print statements to trace
   - Use AI to verify logic

#### Discussion Prompts
- "What decisions does your phone make?"
- "How would you flowchart making breakfast?"
- "Why does Python use indentation?"
- "When is elif better than multiple ifs?"

### Success Metrics
- 90% can create accurate flowcharts
- 85% write working conditional code
- 80% can debug logic errors
- All students complete grade calculator

### Required Resources
- Whiteboard/tablet for flowcharts
- Python environment (Colab)
- Access to AI tools
- Debugging exercises prepared
- Grade calculator rubric

### Homework Assignment
1. Read textbook chapters on conditionals
2. Complete decision tree for daily routine
3. Finish grade calculator project
4. Find three real-world decision examples

### Looking Ahead
Week 3 will introduce loops, building on conditional logic:
- while loops use the same conditions
- for loops for counted repetition
- Combining loops with decisions
- Building interactive programs