# Week 3: Course Requirements Document (CRD)
## Repetition & Patterns

### Overview
Week 3 introduces students to repetition in programming through loops and collections. Building on decision-making from Week 2, students learn to recognize when and why repetition is needed, use lists to store multiple values, and create programs that process collections of data efficiently.

### Prerequisites
Students should have completed Weeks 1-2 and be comfortable with:
- Variables and data types
- Input/output operations
- if/elif/else statements
- Comparison and logical operators
- Creating and reading flowcharts
- Using AI for learning through prompt engineering

### Learning Objectives
By the end of Week 3, students will be able to:

1. **Computational Thinking - Repetition**
   - Recognize patterns that require repetition
   - Understand when to use while vs for loops
   - Visualize loop execution with flowcharts
   - Identify loop control patterns (counting, sentinel, validation)
   - Trace through loop iterations step by step

2. **Collections and Data Organization**
   - Understand lists as ordered collections
   - Store and retrieve multiple related values
   - Process collections with loops
   - Build mental models of list operations
   - Recognize when lists solve problems

3. **Python Implementation**
   - Use `while` loops for conditional repetition
   - Use `for` loops with `range()` for counted repetition
   - Create and manipulate lists with `[]`, `.append()`
   - Access list elements by index
   - Use `len()` to get list size
   - Apply `in` operator for membership testing
   - Control loops with `break` and `continue`

4. **AI Partnership for Iteration**
   - Guide AI to generate appropriate loop structures
   - Recognize when AI suggests overly complex iterations
   - Use AI to trace loop execution
   - Debug infinite loops and off-by-one errors
   - Constrain AI to use only learned features

### Session Breakdown

#### Week 3 Lecture: Patterns and Repetition
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Playlist Problem** (10 min)
   - Demo: AI-generated "music player" with massive complexity
   - Show features like shuffle algorithms, recommendation engines
   - Ask: "What does a playlist REALLY need to do?"
   - Core need: Store songs, play them in order, maybe skip
   - Repetition is everywhere in real programs

2. **Computational Concept: Why We Repeat** (20 min)
   - Real-world repetition patterns:
     - ATM: Keep asking for valid PIN
     - Game: Keep playing until game over
     - Playlist: Play each song in order
     - Search: Check each item until found
   
   - Three repetition patterns:
     - **Counted**: Do exactly N times (for loops)
     - **Conditional**: Do while condition true (while loops)
     - **Collection**: Do for each item (for with lists)
   
   - Collections enable repetition:
     - Can't have 100 separate variables
     - Lists group related data
     - Process all items systematically

3. **From Concepts to Code: Python's Loops** (20 min)
   
   **While Loops - Conditional Repetition**:
   ```python
   # Keep asking until valid
   password = ""
   while password != "secret123":
       password = input("Enter password: ")
   print("Access granted!")
   ```
   
   **For Loops - Counted Repetition**:
   ```python
   # Repeat exactly 5 times
   for count in range(5):
       print(f"Count: {count}")  # 0, 1, 2, 3, 4
   
   # Starting from 1
   for num in range(1, 6):
       print(f"Number: {num}")  # 1, 2, 3, 4, 5
   ```
   
   **Lists - Storing Collections**:
   ```python
   # Creating lists
   shopping_list = []  # Empty list
   scores = [85, 90, 78, 92]  # List with values
   
   # Adding items
   shopping_list.append("milk")
   shopping_list.append("bread")
   
   # Accessing items
   first_score = scores[0]  # 85 (indexing starts at 0!)
   last_score = scores[-1]  # 92 (negative indexes from end)
   ```
   
   **For Loops with Lists**:
   ```python
   # Process each item
   for item in shopping_list:
       print(f"Remember to buy: {item}")
   
   # Using index
   for i in range(len(scores)):
       print(f"Score {i+1}: {scores[i]}")
   ```
   
   **Common Patterns**:
   ```python
   # Validation loop
   age = -1
   while age < 0 or age > 120:
       age = int(input("Enter valid age (0-120): "))
   
   # Search pattern
   found = False
   for item in shopping_list:
       if item == "milk":
           found = True
           break  # Stop early when found
   ```

4. **AI Partnership: Smart Iteration** (7 min)
   - Progressive prompting for loops:
     - Start: "shopping list program"
     - Refine: "simple list to add and show items"
     - Constrain: "using only lists, loops, and basic operations"
   - Common AI overcomplications:
     - List comprehensions (too advanced)
     - Enumerate() function (not yet learned)
     - Complex nested structures
     - Database suggestions
   - Debugging with AI:
     - "Why is this loop infinite?"
     - "Trace through this for loop with list [1, 2, 3]"
     - "What causes an IndexError?"

5. **Integration: Building on Previous Weeks** (3 min)
   - Loops use same conditions as if statements
   - Combine decisions inside loops
   - Input validation finally possible
   - Foundation for data processing

**Key Demonstrations:**
- Live coding of infinite loop (and how to stop it)
- Tracing loop execution with print statements
- Off-by-one error with range()
- Building a list interactively

#### Week 3 Lab: Hands-on Iteration
**Duration:** 2 hours

**Hour 1: Understanding Loops and Lists**

1. **Loop Visualization** (20 min)
   - Draw flowcharts for while and for loops
   - Trace execution tables
   - Identify loop components (initialization, condition, update)
   - Practice predicting iterations

2. **Basic Loop Patterns** (20 min)
   - Counting loops
   - Input validation loops
   - Sentinel value loops
   - Accumulation patterns

3. **List Fundamentals** (20 min)
   - Creating and modifying lists
   - Index access and bounds
   - Common list operations
   - Debugging index errors

**Hour 2: Integration and Project**

1. **Combining Loops and Lists** (20 min)
   - Processing all items
   - Finding items in lists
   - Building lists with loops
   - User-driven list creation

2. **Common Patterns Practice** (20 min)
   - Menu-driven programs
   - Search algorithms
   - Data validation
   - Simple statistics

3. **Project Start** (20 min)
   - Shopping list manager design
   - Core features planning
   - Basic implementation
   - Testing strategies

**Lab Deliverables:**
- Loop flowcharts
- Completed exercises
- Working list operations
- Shopping list manager progress

### Assessment Components

#### Formative Assessments

1. **Loop Tracing Exercises**
   - Given code with loops, trace execution
   - Predict output for specific inputs
   - Identify how many iterations occur

2. **Pattern Recognition**
   - Identify when loops are needed
   - Choose while vs for appropriately
   - Recognize common patterns

3. **Debugging Practice**
   - Fix infinite loops
   - Resolve index errors
   - Correct off-by-one errors

#### Summative Assessment

**Week 3 Project: Shopping List Manager**
Create a program that manages a shopping list with these features:
- Add items to the list
- Display all items with numbers
- Remove items by number
- Check if item exists
- Show total number of items
- Clear the entire list
- User-friendly menu system

**Example Interaction:**
```
=== Shopping List Manager ===

1. Add item
2. View list
3. Remove item
4. Check for item
5. Clear list
6. Exit

Choice: 1
Enter item to add: Milk
"Milk" added to your list.

Choice: 2
Your Shopping List:
1. Milk

Choice: 1
Enter item to add: Bread
"Bread" added to your list.

Choice: 2
Your Shopping List:
1. Milk
2. Bread

Total items: 2
```

### Common Pitfalls to Avoid

1. **Infinite Loops**
   - Forgetting to update loop variable
   - Wrong condition that's always True
   - Missing break in sentinel loops
   - Not handling all cases

2. **Off-by-One Errors**
   - range(5) goes 0-4, not 1-5
   - List indices start at 0
   - len() is one more than last index
   - Boundary conditions

3. **Index Errors**
   - Accessing beyond list bounds
   - Empty list operations
   - Negative indices confusion
   - Modifying list while iterating

4. **Logic Errors**
   - Wrong loop type chosen
   - Complex conditions in while
   - Break/continue misuse
   - Nested loop confusion

### Instructor Notes

#### Pacing Considerations
- Loops are conceptually challenging
- Start with while, then for
- Lists before loops with lists
- Many practice iterations needed

#### Key Demonstrations
1. **Infinite Loop Safety**
   - Show how to interrupt (Ctrl+C)
   - Always have exit condition
   - Use print to debug

2. **Index Visualization**
   - Draw lists as boxes
   - Number from 0
   - Show negative indexing

3. **Common Patterns**
   - Build pattern library
   - Show variations
   - Connect to real uses

#### Discussion Prompts
- "What tasks in life need repetition?"
- "When would you use while vs for?"
- "Why do list indices start at 0?"
- "How do you know when to use a list?"

### Success Metrics
- 90% can write basic loops correctly
- 85% can manipulate lists without errors
- 80% can combine loops and lists effectively
- All students complete shopping list core features

### Required Resources
- Python environment (Colab)
- Whiteboard for flowcharts
- Loop tracing worksheets
- Debugging exercises prepared
- Project rubric

### Homework Assignment
1. Read textbook chapters on loops and lists
2. Complete loop pattern exercises
3. Finish shopping list manager
4. Find three real-world repetition examples

### Looking Ahead
Week 4 will focus on string and list manipulation:
- Advanced string operations
- List slicing
- Pattern matching in text
- Building on loops for text processing