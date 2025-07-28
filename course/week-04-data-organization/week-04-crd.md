# Week 4: Course Requirements Document (CRD)
## Data Organization & Structure

### Overview
Week 4 focuses on organizing and manipulating data through advanced string operations and list techniques. Students learn to transform, search, and structure text data, building on loops from Week 3. This week emphasizes practical data manipulation patterns that form the foundation for real-world programming tasks.

### Prerequisites
Students should have completed Weeks 1-3 and be comfortable with:
- Variables, data types, and type conversion
- Input/output operations
- if/elif/else statements
- while and for loops
- Lists and basic list operations
- Loop patterns (accumulation, search, validation)

### Learning Objectives
By the end of Week 4, students will be able to:

1. **String Manipulation Mastery**
   - Understand strings as sequences of characters
   - Use string slicing to extract substrings
   - Apply string methods for transformation and search
   - Split and join strings for data processing
   - Handle special characters and formatting

2. **Advanced List Operations**
   - Slice lists to work with portions of data
   - Transform lists using loops and string methods
   - Build new lists from existing data
   - Combine multiple lists effectively
   - Process structured text data

3. **Data Transformation Patterns**
   - Clean and normalize user input
   - Extract information from formatted strings
   - Convert between different data representations
   - Validate and sanitize text data
   - Build simple parsers for structured input

4. **AI Partnership for Data Tasks**
   - Guide AI to generate string manipulation code
   - Recognize when AI suggests overly complex regex
   - Use AI to understand string method behavior
   - Debug string and list operations effectively
   - Constrain AI to learned features only

### Session Breakdown

#### Week 4 Lecture: Text as Data
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Password Validator Problem** (10 min)
   - Demo: AI's overcomplicated password validator
   - Show regex, custom classes, security libraries
   - Ask: "What makes a password 'strong' really?"
   - Core need: Length, variety of characters, no common words
   - We can check all this with simple string operations!

2. **Computational Concept: Text as Structured Data** (20 min)
   - Strings are sequences (like lists of characters)
   - Real-world text patterns:
     - Email: username@domain.com
     - Phone: (123) 456-7890
     - CSV data: name,age,city
     - URLs: protocol://domain/path
   
   - Three key operations:
     - **Extraction**: Get parts of text (slicing)
     - **Transformation**: Change text (methods)
     - **Analysis**: Search and validate (in, find)
   
   - Why this matters:
     - Most data starts as text
     - User input needs cleaning
     - Files contain structured text
     - APIs return text data

3. **From Concepts to Code: Python's String Tools** (20 min)
   
   **String Slicing - Extracting Parts**:
   ```python
   text = "Hello, World!"
   
   # Basic slicing [start:end]
   first_word = text[0:5]      # "Hello"
   last_char = text[-1]        # "!"
   middle = text[7:12]         # "World"
   
   # Omitting indices
   from_start = text[:5]       # "Hello"
   to_end = text[7:]          # "World!"
   copy = text[:]             # Full copy
   
   # Step parameter [start:end:step]
   every_other = text[::2]     # "Hlo ol!"
   reversed = text[::-1]       # "!dlroW ,olleH"
   ```
   
   **String Methods - Transformation**:
   ```python
   # Case changes
   name = "john DOE"
   print(name.upper())        # "JOHN DOE"
   print(name.lower())        # "john doe"
   print(name.title())        # "John Doe"
   
   # Cleaning whitespace
   messy = "  hello world  \n"
   clean = messy.strip()      # "hello world"
   
   # Finding and replacing
   email = "user@oldomain.com"
   if "@" in email:
       domain_start = email.find("@")  # 4
       new_email = email.replace("oldomain", "newdomain")
   ```
   
   **Split and Join - Data Parsing**:
   ```python
   # Splitting strings into lists
   data = "apple,banana,orange"
   fruits = data.split(",")     # ["apple", "banana", "orange"]
   
   sentence = "Hello world from Python"
   words = sentence.split()     # ["Hello", "world", "from", "Python"]
   
   # Joining lists into strings
   words = ["Python", "is", "fun"]
   sentence = " ".join(words)   # "Python is fun"
   dashed = "-".join(words)     # "Python-is-fun"
   ```
   
   **List Slicing - Same Rules**:
   ```python
   numbers = [10, 20, 30, 40, 50]
   
   first_three = numbers[:3]    # [10, 20, 30]
   last_two = numbers[-2:]      # [40, 50]
   middle = numbers[1:4]        # [20, 30, 40]
   reversed = numbers[::-1]     # [50, 40, 30, 20, 10]
   ```
   
   **Common Patterns**:
   ```python
   # Email validation (simple)
   email = input("Enter email: ")
   if "@" in email and "." in email:
       parts = email.split("@")
       if len(parts) == 2 and "." in parts[1]:
           print("Valid email format")
   
   # Password strength check
   password = input("Enter password: ")
   has_upper = any(c.isupper() for c in password)
   has_lower = any(c.islower() for c in password)
   has_digit = any(c.isdigit() for c in password)
   
   if len(password) >= 8 and has_upper and has_lower and has_digit:
       print("Strong password!")
   ```

4. **AI Partnership: Smart String Operations** (7 min)
   - Progressive prompting for string tasks:
     - Start: "validate email address"
     - Refine: "check email format with @ and ."
     - Constrain: "using only string methods, no regex"
   - Common AI overcomplications:
     - Regular expressions (not learned)
     - Complex validation libraries
     - Exception handling (Week 10)
   - Debugging with AI:
     - "Why does slice [1:3] give 2 characters?"
     - "How do I check if string contains substring?"
     - "What's the difference between find() and index()?"

5. **Integration: Building on Previous Weeks** (3 min)
   - Loops process each character/word
   - Conditions check string properties
   - Lists store split results
   - Foundation for data processing

**Key Demonstrations:**
- Live slicing with different indices
- Common string method chains
- Building a word game incrementally
- Debugging off-by-one in slicing

#### Week 4 Lab: Hands-on Text Processing
**Duration:** 2 hours

**Hour 1: String and List Slicing Mastery**

1. **Slicing Exercises** (20 min)
   - Extract parts of strings
   - Reverse strings and lists
   - Get every Nth character
   - Work with negative indices

2. **String Method Practice** (20 min)
   - Clean messy input
   - Search and replace
   - Case transformations
   - Method chaining

3. **Split and Join Operations** (20 min)
   - Parse CSV-style data
   - Build formatted output
   - Handle different delimiters
   - Reconstruct modified data

**Hour 2: Integration and Project**

1. **Data Transformation** (20 min)
   - Clean user input
   - Extract information from text
   - Format output nicely
   - Validate text patterns

2. **List and String Combination** (20 min)
   - Process lists of strings
   - Transform each element
   - Filter based on criteria
   - Build result strings

3. **Project Start** (20 min)
   - Word game design
   - Core mechanics implementation
   - Testing with different inputs
   - Polish and edge cases

**Lab Deliverables:**
- Completed slicing exercises
- String transformation functions
- Data parsing examples
- Working word game

### Assessment Components

#### Formative Assessments

1. **Slicing Challenges**
   - Given string/list and desired output
   - Write correct slice notation
   - Handle edge cases

2. **Method Application**
   - Choose appropriate string methods
   - Chain methods effectively
   - Understand return values

3. **Data Processing Tasks**
   - Parse structured input
   - Transform to required format
   - Handle variations gracefully

#### Summative Assessment

**Week 4 Project: Word Game**
Create an interactive word game that demonstrates string manipulation mastery:
- Generate puzzles from words
- Accept and validate guesses
- Provide hints using string operations
- Track score and progress
- Handle various input formats
- Create engaging gameplay

**Example Games** (student chooses one):
1. **Scramble Game**: Scramble words, player unscrambles
2. **Hangman**: Classic letter-guessing game
3. **Word Chain**: Each word must start with last letter of previous
4. **Palindrome Checker**: Find/create palindromes

### Common Pitfalls to Avoid

1. **Slicing Confusion**
   - Off-by-one errors (end index exclusive)
   - Negative index misunderstanding
   - Step parameter confusion
   - Modifying while slicing

2. **String Immutability**
   - Strings can't be changed in-place
   - Must reassign after methods
   - Build new strings instead
   - Use lists for mutable sequences

3. **Split/Join Errors**
   - Wrong delimiter choice
   - Empty string handling
   - Whitespace preservation
   - Multiple delimiter issues

4. **Performance Issues**
   - Repeated string concatenation
   - Unnecessary loops
   - Inefficient searches
   - Not using built-in methods

### Instructor Notes

#### Pacing Considerations
- Slicing is conceptually tricky
- String immutability confuses many
- Build complexity gradually
- Lots of practice needed

#### Key Demonstrations
1. **Visual Slicing**
   - Draw indices under strings
   - Show inclusive/exclusive
   - Demonstrate negative indexing

2. **Method Chaining**
   - Show step by step first
   - Then combine into chains
   - Explain return values

3. **Common Patterns**
   - Input cleaning pipeline
   - Data extraction examples
   - Validation approaches

#### Discussion Prompts
- "How is text like a list?"
- "Why can't we change strings?"
- "When would you use split vs slicing?"
- "What text patterns do you see daily?"

### Success Metrics
- 90% can use basic string slicing correctly
- 85% can apply appropriate string methods
- 80% can parse simple structured text
- All students complete word game core features

### Required Resources
- Python environment (Colab)
- String method reference sheet
- Slicing practice worksheet
- Sample text data files
- Project rubric

### Homework Assignment
1. Complete word game with polish
2. Find 5 real-world text patterns
3. Practice string method combinations
4. Read textbook chapters on strings

### Looking Ahead
Week 5 will introduce functions to:
- Organize code into reusable pieces
- Create string processing utilities
- Build modular programs
- Improve word game structure