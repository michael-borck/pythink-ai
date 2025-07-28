# Week 7: Course Requirements Document (CRD)
## File I/O and Persistence

### Overview
Week 7 introduces file operations, enabling students to create programs that persist data beyond runtime. Students learn to read from and write to files, handle file paths, and build applications that save user data. This week transforms their programs from temporary to permanent.

### Prerequisites
Students should have completed Weeks 1-6 and be comfortable with:
- Variables, data types, and type conversion
- Input/output operations
- Conditional statements (if/elif/else)
- Loops (while and for)
- Lists and list operations
- String manipulation
- Functions with parameters and returns
- Dictionaries and nested data structures

### Learning Objectives
By the end of Week 7, students will be able to:

1. **File Operations Fundamentals**
   - Understand file paths and navigation
   - Open files in different modes (read, write, append)
   - Read file contents (entire file, lines, chunks)
   - Write data to files
   - Close files properly

2. **File Handling Patterns**
   - Use the `with` statement for automatic file closing
   - Handle file existence checks
   - Process files line by line
   - Work with text file formats
   - Understand file positioning

3. **Data Persistence**
   - Save program state to files
   - Load data from files on startup
   - Design simple file formats
   - Update existing file data
   - Create backup copies

4. **AI Partnership for File Operations**
   - Get help with file path issues
   - Understand file handling patterns
   - Debug file access problems
   - Design data storage formats
   - Learn file processing techniques

### Session Breakdown

#### Week 7 Lecture: Making Data Permanent
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Lost Contact Book** (10 min)
   - Demo: Show Week 6's contact book
   - Close program - all contacts lost!
   - Ask: "How do real apps remember your data?"
   - The problem: RAM is temporary, we need permanent storage
   - Solution: Files store data on disk permanently

2. **Computational Concept: Files and Persistence** (20 min)
   - What are files?
     - Named containers of data on disk
     - Survive program exit and computer restart
     - Organized in folders/directories
     - Have paths that locate them
   
   - Why files matter:
     - **Data persistence**: Information survives
     - **Data sharing**: Other programs can read
     - **Data backup**: Can copy and archive
     - **Large data**: Not limited by RAM
   
   - Types of files we'll work with:
     - Text files (.txt) - human readable
     - Data files (.dat) - structured data
     - Later: CSV (Week 9), JSON (Week 10)

3. **From Concepts to Code: Python File Operations** (20 min)
   
   **Opening and Closing Files**:
   ```python
   # Basic file opening
   file = open("data.txt", "r")  # Read mode
   content = file.read()
   file.close()  # Must close!
   
   # Better: using with statement
   with open("data.txt", "r") as file:
       content = file.read()
   # File automatically closed!
   ```
   
   **File Modes**:
   ```python
   # "r" - Read (file must exist)
   # "w" - Write (creates new/overwrites)
   # "a" - Append (adds to end)
   
   # Writing to a file
   with open("output.txt", "w") as file:
       file.write("Hello, File!\n")
       file.write("Second line\n")
   ```
   
   **Reading Patterns**:
   ```python
   # Read entire file
   with open("data.txt", "r") as file:
       content = file.read()
   
   # Read line by line
   with open("data.txt", "r") as file:
       for line in file:
           print(line.strip())
   
   # Read into list
   with open("data.txt", "r") as file:
       lines = file.readlines()
   ```
   
   **Practical Example - Saving Contacts**:
   ```python
   def save_contacts(contacts, filename):
       """Save contacts to a file."""
       with open(filename, "w") as file:
           for name, info in contacts.items():
               line = f"{name}|{info['phone']}|{info['email']}\n"
               file.write(line)
   
   def load_contacts(filename):
       """Load contacts from a file."""
       contacts = {}
       try:
           with open(filename, "r") as file:
               for line in file:
                   parts = line.strip().split("|")
                   if len(parts) == 3:
                       name, phone, email = parts
                       contacts[name] = {
                           "phone": phone,
                           "email": email
                       }
       except FileNotFoundError:
           print("No saved contacts found.")
       return contacts
   ```

4. **AI Partnership: Smart File Handling** (7 min)
   - Common file operation prompts:
     - "How do I check if a file exists before opening?"
     - "What's the difference between 'w' and 'a' mode?"
     - "How do I handle FileNotFoundError?"
   - AI overcomplications to avoid:
     - Complex path manipulation libraries
     - Binary file modes (too advanced)
     - JSON/pickle (coming later)
   - Debugging file issues:
     - Path problems
     - Permission errors
     - File not closed

5. **Integration: Complete Applications** (3 min)
   - Contact book that remembers
   - Todo lists that persist
   - Game high scores
   - Configuration files

**Key Demonstrations:**
- Save and load a simple list
- Show file contents in file explorer
- Demonstrate data persistence
- Handle missing files gracefully

#### Week 7 Lab: Hands-on File Operations
**Duration:** 2 hours

**Hour 1: File Basics**

1. **Reading Files** (20 min)
   - Open and read text files
   - Different reading methods
   - Process line by line
   - Handle missing files

2. **Writing Files** (20 min)
   - Create new files
   - Write multiple lines
   - Append to existing files
   - Format output nicely

3. **File Patterns** (20 min)
   - Save and load lists
   - Save and load dictionaries
   - Create backup files
   - Update file contents

**Hour 2: Building Persistence**

1. **Contact Book Upgrade** (20 min)
   - Add save functionality
   - Add load on startup
   - Handle corrupted data
   - Create backups

2. **Todo List Application** (20 min)
   - Design file format
   - Save tasks to file
   - Load on startup
   - Mark tasks complete

3. **Data Processing** (20 min)
   - Read data files
   - Process and analyze
   - Generate reports
   - Save results

**Lab Deliverables:**
- File operation exercises
- Persistent contact book
- Todo list with save/load
- Data processing script

### Assessment Components

#### Formative Assessments

1. **File Operations Quiz**
   - File modes and their uses
   - Reading methods comparison
   - When to use 'with' statement
   - Error handling basics

2. **Code Analysis**
   - Identify file handling errors
   - Predict file output
   - Trace file operations
   - Fix file-related bugs

3. **Practical Tasks**
   - Save list to file
   - Load dictionary from file
   - Append to existing file
   - Process file line by line

#### Summative Assessment

**Week 7 Project: Personal Journal Application**
Create a personal journal that saves entries to files:
- Each entry has date, time, and content
- Save entries to a file
- Load and display previous entries
- Search entries by date or keyword
- Export entries to readable format
- Handle multiple journal files
- Create automatic backups
- Statistics (entry count, word count)

**Example Interaction**:
```
Personal Journal
1. New Entry
2. View All Entries  
3. Search Entries
4. Export Journal
5. Exit

Choice: 1
Enter your journal entry (type 'done' when finished):
Today was a great day...
done

Entry saved!
```

### Common Pitfalls to Avoid

1. **File Not Closed**
   - Forgetting file.close()
   - Not using 'with' statement
   - Files left open
   - Data not flushed

2. **Path Issues**
   - Hardcoded paths
   - Wrong directory
   - Path separators
   - Relative vs absolute

3. **Mode Confusion**
   - Using 'r' to write
   - Using 'w' overwrites
   - Append vs write
   - Binary vs text

4. **Error Handling**
   - Not checking file exists
   - No FileNotFoundError handling
   - Corrupt data crashes
   - Permission errors

### Instructor Notes

#### Pacing Considerations
- File concepts are new and abstract
- Path issues frustrate students
- Start with simple examples
- Build complexity gradually

#### Key Demonstrations
1. **Show File Explorer**
   - Create file in Python
   - See it appear in folder
   - Open in text editor

2. **Data Persistence**
   - Run program, save data
   - Exit program completely
   - Run again, data loads

3. **Common Errors**
   - FileNotFoundError
   - Permission denied
   - File already open

#### Discussion Prompts
- "What data would you want to save?"
- "Why not keep everything in memory?"
- "What makes a good file format?"
- "How do apps organize their files?"

### Success Metrics
- 90% can read and write simple files
- 85% can use 'with' statement correctly
- 80% can save/load program data
- All students complete journal basics

### Required Resources
- Python environment (Colab)
- File I/O reference sheet
- Example data files
- Path troubleshooting guide
- Project rubric

### Homework Assignment
1. Complete journal application
2. Add advanced features (tags, export)
3. Create data backup system
4. Read textbook chapter on files

### Looking Ahead
Week 8 will integrate all concepts:
- Multi-file programs
- Complex data persistence
- Testing strategies
- Code organization

### Special Considerations

#### Google Colab File Handling
Since course uses Colab, address:
- Colab file system is temporary
- Using Google Drive for persistence
- Download/upload options
- Sample code for Colab file access

```python
# Colab-specific file handling
from google.colab import files

# Upload file
uploaded = files.upload()

# Download file
files.download('output.txt')

# Using Google Drive
from google.colab import drive
drive.mount('/content/drive')
```

#### Platform Differences
Note but don't emphasize:
- Path separators (/ vs \)
- Line endings (\n vs \r\n)
- File permissions
- Keep examples platform-neutral