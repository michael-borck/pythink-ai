# Week 5: Course Requirements Document (CRD)
## Modularity & Reusability

### Overview
Week 5 introduces functions as a way to organize code into reusable, modular pieces. Students learn to think about programs as collections of specialized tasks, each handled by its own function. This fundamental shift from sequential to modular thinking transforms how students approach problem-solving.

### Prerequisites
Students should have completed Weeks 1-4 and be comfortable with:
- Variables, data types, and type conversion
- Input/output operations
- Conditional statements (if/elif/else)
- Loops (while and for)
- Lists and list operations
- String manipulation and slicing
- Data transformation patterns

### Learning Objectives
By the end of Week 5, students will be able to:

1. **Modular Thinking**
   - Recognize repetitive code patterns
   - Identify logical units of work
   - Design programs as collections of tasks
   - Understand the DRY principle (Don't Repeat Yourself)
   - Plan function interfaces before coding

2. **Function Fundamentals**
   - Define functions with clear purposes
   - Pass data through parameters
   - Return results to callers
   - Use default parameter values
   - Write helpful docstrings

3. **Data Flow and Scope**
   - Understand parameter passing
   - Distinguish local vs global variables
   - Trace data flow through functions
   - Avoid common scope pitfalls
   - Design clean interfaces

4. **AI Partnership for Functions**
   - Guide AI to generate appropriate functions
   - Recognize over-engineered solutions
   - Request functions with specific constraints
   - Debug function-related errors
   - Refactor code into functions effectively

### Session Breakdown

#### Week 5 Lecture: The Power of Modularity
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Recipe Card Problem** (10 min)
   - Demo: AI's over-engineered recipe management system
   - Show classes, databases, web APIs, ML recommendations
   - Ask: "What does a recipe program REALLY need?"
   - Core need: Store recipes, scale ingredients, convert units
   - Each task is self-contained - perfect for functions!

2. **Computational Concept: Modular Thinking** (20 min)
   - Real-world modularity:
     - Recipe cards: Each recipe is independent
     - Phone contacts: Each contact is separate
     - Bank transactions: Each transaction stands alone
   
   - Why modularity matters:
     - **Reusability**: Write once, use many times
     - **Testing**: Test each piece independently
     - **Clarity**: Each function has one job
     - **Collaboration**: Different people work on different functions
   
   - Function mental model:
     ```
     Input(s) → [FUNCTION] → Output
     Ingredients → [Recipe] → Dish
     Numbers → [Calculate] → Result
     Text → [Clean] → Formatted Text
     ```

3. **From Concepts to Code: Python Functions** (20 min)
   
   **Basic Function Syntax**:
   ```python
   def greet(name):
       """Say hello to someone."""
       message = f"Hello, {name}!"
       return message
   
   # Using the function
   greeting = greet("Alice")
   print(greeting)  # "Hello, Alice!"
   ```
   
   **Parameters and Arguments**:
   ```python
   # Multiple parameters
   def calculate_area(length, width):
       """Calculate rectangle area."""
       area = length * width
       return area
   
   # Call with arguments
   room_area = calculate_area(10, 12)  # 120
   ```
   
   **Default Parameters**:
   ```python
   def make_coffee(size="medium", sugar=True):
       """Make coffee with preferences."""
       drink = f"{size} coffee"
       if sugar:
           drink = drink + " with sugar"
       return drink
   
   # Various calls
   coffee1 = make_coffee()  # "medium coffee with sugar"
   coffee2 = make_coffee("large")  # "large coffee with sugar"
   coffee3 = make_coffee("small", False)  # "small coffee"
   ```
   
   **Return Values**:
   ```python
   # Return multiple values
   def analyze_scores(scores):
       """Get min, max, and average."""
       if not scores:  # Handle empty list
           return None, None, None
       
       minimum = min(scores)
       maximum = max(scores)
       average = sum(scores) / len(scores)
       
       return minimum, maximum, average
   
   # Unpack returned values
   low, high, avg = analyze_scores([85, 92, 78, 90])
   ```
   
   **Scope Demonstration**:
   ```python
   # Global variable
   count = 0
   
   def increment():
       # Local variable (different from global)
       count = 10
       count = count + 1
       return count
   
   result = increment()
   print(result)  # 11 (local)
   print(count)   # 0 (global unchanged)
   ```

4. **AI Partnership: Smart Function Design** (7 min)
   - Progressive prompting for functions:
     - Start: "function to validate email"
     - Refine: "simple email validation function"
     - Constrain: "using only string methods, return True/False"
   - Common AI overcomplications:
     - Too many responsibilities in one function
     - Unnecessary complexity
     - Over-use of global variables
   - Debugging with AI:
     - "Why does my function return None?"
     - "How do I pass a list to a function?"
     - "What's the difference between print and return?"

5. **Integration: Building on Previous Weeks** (3 min)
   - Functions organize all previous concepts
   - String operations become string functions
   - Loop patterns become processing functions
   - Validation code becomes validator functions

**Key Demonstrations:**
- Live refactoring of repetitive code
- Tracing function calls step-by-step
- Showing scope with variable visualization
- Building a small program with functions

#### Week 5 Lab: Hands-on Function Practice
**Duration:** 2 hours

**Hour 1: Function Fundamentals**

1. **Basic Function Writing** (20 min)
   - Convert calculations to functions
   - Practice parameter passing
   - Understand return statements
   - Handle edge cases

2. **Function Design Patterns** (20 min)
   - Validator functions (return True/False)
   - Transformer functions (return modified data)
   - Calculator functions (return computed value)
   - Display functions (print formatted output)

3. **Scope Exercises** (20 min)
   - Trace variable values
   - Identify local vs global
   - Fix scope-related bugs
   - Design clean interfaces

**Hour 2: Integration and Project**

1. **Refactoring Practice** (20 min)
   - Take existing code with repetition
   - Identify function opportunities
   - Extract and parameterize
   - Test refactored code

2. **Function Composition** (20 min)
   - Functions calling functions
   - Building complex behavior
   - Data flow through multiple functions
   - Testing integrated functions

3. **Project Start** (20 min)
   - Calculator with functions
   - Design function structure
   - Implement core operations
   - Add user interface

**Lab Deliverables:**
- Function exercises completed
- Refactored code examples
- Working calculator functions
- Documentation for each function

### Assessment Components

#### Formative Assessments

1. **Function Tracing**
   - Given code with functions, trace execution
   - Track parameter values
   - Identify return points
   - Follow data flow

2. **Function Design**
   - Given a task, design appropriate function
   - Choose parameters and return type
   - Write clear docstrings
   - Handle edge cases

3. **Scope Understanding**
   - Identify variable scope in code
   - Fix scope-related errors
   - Predict output with mixed scopes

#### Summative Assessment

**Week 5 Project: Modular Calculator**
Create a calculator program using functions for all operations:
- Basic arithmetic functions (+, -, *, /)
- Advanced operations (power, square root)
- Conversion functions (temperature, length)
- Input validation functions
- Display formatting functions
- Menu system with function calls
- History tracking (bonus)

**Example Structure**:
```
Calculator Menu:
1. Basic Operations
2. Advanced Operations
3. Conversions
4. View History
5. Exit

Each option calls appropriate functions
Functions are reusable and well-documented
```

### Common Pitfalls to Avoid

1. **Function Design Issues**
   - Functions doing too many things
   - Poor parameter choices
   - Inconsistent return types
   - Missing edge case handling

2. **Scope Confusion**
   - Modifying global variables
   - Shadowing variable names
   - Expecting changes to persist
   - Parameter vs global mix-ups

3. **Return vs Print**
   - Printing instead of returning
   - Forgetting return statements
   - Returning too early
   - Multiple return types

4. **Documentation**
   - No docstrings
   - Unclear parameter descriptions
   - Missing return value docs
   - No usage examples

### Instructor Notes

#### Pacing Considerations
- Functions are conceptually challenging
- Start with simple, obvious examples
- Build complexity gradually
- Lots of tracing practice needed

#### Key Demonstrations
1. **Before/After Refactoring**
   - Show code with repetition
   - Extract into function
   - Demonstrate reuse

2. **Scope Visualization**
   - Draw memory diagrams
   - Show variable lifetimes
   - Trace function calls

3. **Return vs Print**
   - Clear distinction
   - Show why return is useful
   - Demonstrate function chains

#### Discussion Prompts
- "What tasks do you repeat in daily life?"
- "How do recipes relate to functions?"
- "Why not make everything global?"
- "When should you create a function?"

### Success Metrics
- 90% can write basic functions correctly
- 85% understand parameter passing
- 80% can debug scope issues
- All students complete calculator with 5+ functions

### Required Resources
- Python environment (Colab)
- Function reference sheet
- Scope diagram templates
- Refactoring exercises
- Project rubric

### Homework Assignment
1. Complete modular calculator
2. Refactor previous week's project using functions
3. Create function library for common tasks
4. Read textbook chapters on functions

### Looking Ahead
Week 6 will introduce dictionaries to:
- Store related data together
- Create more complex data structures
- Build function-based data processors
- Prepare for real-world applications