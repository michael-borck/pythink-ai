# Week 6: Course Requirements Document (CRD)
## Complex Data Structures

### Overview
Week 6 introduces dictionaries as a way to organize related data using key-value pairs. Students learn to model real-world entities, create nested data structures, and process structured information efficiently. This week transforms how students think about data organization.

### Prerequisites
Students should have completed Weeks 1-5 and be comfortable with:
- Variables, data types, and type conversion
- Input/output operations
- Conditional statements (if/elif/else)
- Loops (while and for)
- Lists and list operations
- String manipulation
- Functions with parameters and returns
- Variable scope

### Learning Objectives
By the end of Week 6, students will be able to:

1. **Data Modeling with Dictionaries**
   - Understand key-value relationships
   - Model real-world entities as dictionaries
   - Choose appropriate keys and values
   - Design data structures for problems
   - Compare dictionaries vs lists

2. **Dictionary Operations**
   - Create and modify dictionaries
   - Access values safely with .get()
   - Add, update, and delete entries
   - Check key existence
   - Iterate through keys, values, and items

3. **Nested Data Structures**
   - Create dictionaries of dictionaries
   - Build lists of dictionaries
   - Navigate nested structures
   - Update nested values
   - Design complex data models

4. **AI Partnership for Data Structures**
   - Guide AI to suggest appropriate structures
   - Recognize over-complicated data models
   - Use AI to understand dictionary methods
   - Debug key errors and structure issues
   - Generate test data with AI

### Session Breakdown

#### Week 6 Lecture: Organizing Complex Data
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Contact Book Problem** (10 min)
   - Demo: AI's enterprise contact management system
   - Show databases, cloud sync, social media integration
   - Ask: "What does a contact book REALLY need?"
   - Core need: Store names, phones, emails, addresses
   - Lists can't handle this elegantly - need dictionaries!

2. **Computational Concept: Key-Value Thinking** (20 min)
   - Real-world key-value pairs:
     - Phone book: Name → Phone number
     - Dictionary: Word → Definition
     - Menu: Item → Price
     - Student records: ID → Information
   
   - Why dictionaries matter:
     - **Direct access**: No searching through lists
     - **Meaningful keys**: Access by name, not index
     - **Flexible values**: Store any data type
     - **Real-world modeling**: Natural representation
   
   - Dictionary vs List:
     ```
     List: Access by position [0], [1], [2]
     Dict: Access by meaning ["name"], ["email"], ["age"]
     ```

3. **From Concepts to Code: Python Dictionaries** (20 min)
   
   **Basic Dictionary Syntax**:
   ```python
   # Creating dictionaries
   empty_dict = {}
   
   # Dictionary with initial values
   person = {
       "name": "Alice Johnson",
       "age": 25,
       "email": "alice@email.com"
   }
   
   # Accessing values
   print(person["name"])     # "Alice Johnson"
   print(person["age"])      # 25
   
   # Safe access with .get()
   phone = person.get("phone", "No phone")  # "No phone"
   ```
   
   **Modifying Dictionaries**:
   ```python
   # Adding/updating values
   person["phone"] = "555-1234"
   person["age"] = 26
   
   # Deleting entries
   del person["email"]
   
   # Checking existence
   if "phone" in person:
       print(f"Phone: {person['phone']}")
   ```
   
   **Dictionary Methods**:
   ```python
   # Get all keys
   keys = person.keys()
   print(list(keys))  # ['name', 'age', 'phone']
   
   # Get all values
   values = person.values()
   print(list(values))  # ['Alice Johnson', 26, '555-1234']
   
   # Get key-value pairs
   for key, value in person.items():
       print(f"{key}: {value}")
   ```
   
   **Nested Structures**:
   ```python
   # Dictionary of dictionaries
   contacts = {
       "alice": {
           "phone": "555-1234",
           "email": "alice@email.com",
           "address": "123 Main St"
       },
       "bob": {
           "phone": "555-5678",
           "email": "bob@email.com",
           "address": "456 Oak Ave"
       }
   }
   
   # Accessing nested values
   alice_phone = contacts["alice"]["phone"]
   
   # List of dictionaries
   students = [
       {"name": "Alice", "grade": 92, "id": "A001"},
       {"name": "Bob", "grade": 85, "id": "B002"},
       {"name": "Carol", "grade": 88, "id": "C003"}
   ]
   ```

4. **AI Partnership: Smart Data Modeling** (7 min)
   - Progressive prompting for structures:
     - Start: "store student information"
     - Refine: "organize student data with names and grades"
     - Constrain: "using only dictionaries and lists"
   - Common AI overcomplications:
     - Classes and objects (too advanced)
     - Database schemas
     - JSON/XML formats
   - Debugging with AI:
     - "Why do I get KeyError?"
     - "How do I update nested dictionary values?"
     - "What's the best structure for this data?"

5. **Integration: Building on Previous Weeks** (3 min)
   - Functions process dictionaries
   - Loops iterate through structures
   - Conditions check dictionary values
   - Foundation for real applications

**Key Demonstrations:**
- Build a contact entry live
- Show KeyError and how to avoid
- Compare list vs dictionary for same data
- Demonstrate nested access

#### Week 6 Lab: Hands-on Data Structures
**Duration:** 2 hours

**Hour 1: Dictionary Fundamentals**

1. **Basic Dictionary Operations** (20 min)
   - Create various dictionaries
   - Access values safely
   - Add and update entries
   - Handle missing keys

2. **Dictionary Methods** (20 min)
   - Use .keys(), .values(), .items()
   - Iterate through dictionaries
   - Search for keys and values
   - Build new dictionaries

3. **Data Modeling** (20 min)
   - Design dictionary structures
   - Choose appropriate keys
   - Model real-world entities
   - Compare different approaches

**Hour 2: Complex Structures and Project**

1. **Nested Structures** (20 min)
   - Create nested dictionaries
   - Build lists of dictionaries
   - Navigate complex structures
   - Update nested values

2. **Data Processing** (20 min)
   - Search through structures
   - Filter dictionaries
   - Transform data
   - Aggregate information

3. **Project Start** (20 min)
   - Contact book design
   - Core functionality
   - Data structure planning
   - Initial implementation

**Lab Deliverables:**
- Dictionary exercises completed
- Data modeling designs
- Nested structure navigation
- Contact book progress

### Assessment Components

#### Formative Assessments

1. **Dictionary Operations**
   - Create and modify dictionaries
   - Access values with different methods
   - Handle KeyError scenarios
   - Use dictionary methods

2. **Data Modeling**
   - Design structures for scenarios
   - Choose between lists and dictionaries
   - Create appropriate key names
   - Model relationships

3. **Nested Structure Navigation**
   - Access nested values
   - Update deep structures
   - Search through hierarchies
   - Process complex data

#### Summative Assessment

**Week 6 Project: Contact Book System**
Create a contact management system using dictionaries:
- Store multiple contacts with details
- Add new contacts with validation
- Search by name or phone
- Update contact information
- Delete contacts safely
- Display all or filtered contacts
- Handle duplicate names
- Export/import functionality (bonus)

**Example Structure**:
```
Contact Book Menu:
1. Add Contact
2. View All Contacts
3. Search Contact
4. Update Contact
5. Delete Contact
6. Exit

Each contact has: name, phone, email, address
Organized for easy access and modification
```

### Common Pitfalls to Avoid

1. **KeyError Issues**
   - Accessing non-existent keys
   - Not using .get() safely
   - Deleting missing keys
   - Assuming keys exist

2. **Structure Design**
   - Over-complicating structures
   - Poor key choices
   - Mixing data types inappropriately
   - Inefficient nesting

3. **Iteration Mistakes**
   - Modifying dict during iteration
   - Confusing keys() vs items()
   - Not handling empty dicts
   - Wrong iteration method

4. **Type Confusion**
   - Dict vs list methods
   - String keys vs numeric
   - Nested access syntax
   - Value type assumptions

### Instructor Notes

#### Pacing Considerations
- Dictionaries are conceptually new
- Key-value thinking takes time
- Nested structures are complex
- Practice before project

#### Key Demonstrations
1. **List vs Dictionary**
   - Same data both ways
   - Show access differences
   - Demonstrate efficiency

2. **KeyError Handling**
   - Show the error
   - Demonstrate .get()
   - Check before access

3. **Building Structures**
   - Start simple
   - Add complexity gradually
   - Show different designs

#### Discussion Prompts
- "When would you use a list vs dictionary?"
- "What makes a good dictionary key?"
- "How do you organize nested data?"
- "What real-world data needs dictionaries?"

### Success Metrics
- 90% can create and modify dictionaries
- 85% can handle nested structures
- 80% can model real-world data appropriately
- All students complete contact book basics

### Required Resources
- Python environment (Colab)
- Dictionary reference sheet
- Data modeling examples
- Structure visualization tools
- Project rubric

### Homework Assignment
1. Complete contact book system
2. Design data structures for 3 scenarios
3. Practice nested navigation
4. Read textbook chapters on dictionaries

### Looking Ahead
Week 7 will introduce file operations to:
- Save dictionary data persistently
- Load data from files
- Create data file formats
- Build complete applications