# Week 7: Task List for Course Material Development
## File I/O and Persistence

### Overview
Week 7 introduces file operations, enabling students to create programs that save and load data. All materials must use ONLY features introduced in Weeks 1-7, following our established patterns and guidelines.

## Phase 2: Detailed Task Breakdown

### 1. Lecture Materials (Quarto Markdown Format)

#### Week 7 Lecture Tasks
- [ ] Create `lectures/week-07-lecture.qmd`
  - [ ] Hook: Lost contact book problem
  - [ ] Computational concepts section
    - [ ] What are files and why they matter
    - [ ] Persistence vs temporary memory
    - [ ] File paths and organization
    - [ ] Text files vs other formats
  - [ ] From Concepts to Code section
    - [ ] Opening and closing files
    - [ ] File modes (r, w, a)
    - [ ] Reading files (read(), readline(), readlines())
    - [ ] Writing to files
    - [ ] The 'with' statement
    - [ ] Saving and loading data structures
  - [ ] AI partnership demonstration
    - [ ] File handling prompts
    - [ ] Path debugging help
    - [ ] Format design assistance
    - [ ] Error handling guidance
  - [ ] Integration with previous weeks
  - [ ] Include timing markers
  - [ ] Add instructor notes

- [ ] Create `lectures/week-07-slides.qmd` (presentation version)
  - [ ] Opening hook visuals
  - [ ] File system diagrams
  - [ ] Mode comparison table
  - [ ] Read/write flow charts
  - [ ] With statement benefits
  - [ ] Live coding checkpoints

### 2. Lab Materials

#### Week 7 Lab Tasks
- [ ] Create `labs/week-07-lab.qmd`
  - [ ] Hour 1: File Fundamentals
    - [ ] Reading text files
    - [ ] Different read methods
    - [ ] Writing new files
    - [ ] Appending to files
    - [ ] File existence checks
    - [ ] Path handling basics
  - [ ] Hour 2: Building Persistence
    - [ ] Save/load lists
    - [ ] Save/load dictionaries
    - [ ] Contact book upgrade
    - [ ] Todo list creation
    - [ ] Data file processing
    - [ ] Backup strategies
  - [ ] Include solution snippets
  - [ ] Add common mistakes section
  - [ ] Provide debugging strategies

### 3. Project Materials

- [ ] Create `projects/project-07-journal.qmd`
  - [ ] Clear journal requirements
  - [ ] File format design
    - [ ] Entry structure
    - [ ] Date/time handling
    - [ ] File organization
    - [ ] Backup strategy
  - [ ] Feature specifications
    - [ ] New entry creation
    - [ ] View all entries
    - [ ] Search functionality
    - [ ] Export options
    - [ ] Statistics tracking
  - [ ] User interface design
  - [ ] Testing checklist
  - [ ] AI usage documentation template
  - [ ] Grading rubric

### 4. Assessment Materials

- [ ] Create `assessments/week-07-file-operations.qmd`
  - [ ] Open files correctly
  - [ ] Use appropriate modes
  - [ ] Read file contents
  - [ ] Write formatted data
  - [ ] Handle missing files

- [ ] Create `assessments/week-07-data-persistence.qmd`
  - [ ] Save data structures
  - [ ] Load saved data
  - [ ] Update existing files
  - [ ] Design file formats
  - [ ] Handle corrupted data

- [ ] Create `assessments/week-07-practical-files.qmd`
  - [ ] Process data files
  - [ ] Generate reports
  - [ ] Create backups
  - [ ] Merge file contents
  - [ ] File statistics

### 5. Instructor Resources

- [ ] Create `resources/week-07-instructor-guide.qmd`
  - [ ] Lecture delivery notes
  - [ ] Common student confusions
    - [ ] Path vs filename
    - [ ] Mode selection
    - [ ] File not closed
    - [ ] Overwriting data
  - [ ] Platform considerations
  - [ ] Demonstration strategies
  - [ ] Pacing guidelines

- [ ] Create `resources/week-07-file-patterns.qmd`
  - [ ] Common file operations
  - [ ] Save/load patterns
  - [ ] CSV-style formats
  - [ ] Configuration files
  - [ ] Log file patterns
  - [ ] Backup strategies

- [ ] Create `resources/week-07-solutions.qmd`
  - [ ] Lab exercise solutions
  - [ ] Assessment answer keys
  - [ ] Journal implementation
  - [ ] Alternative approaches
  - [ ] Extension ideas

### 6. Supporting Materials

- [ ] Create `resources/week-07-file-reference.qmd`
  - [ ] Complete method reference
  - [ ] Mode comparison chart
  - [ ] Reading method guide
  - [ ] Common patterns
  - [ ] Path handling tips

- [ ] Create `resources/week-07-colab-files.qmd`
  - [ ] Colab file system basics
  - [ ] Upload/download code
  - [ ] Google Drive integration
  - [ ] Persistence strategies
  - [ ] Platform workarounds

- [ ] Create `resources/week-07-ai-prompts.qmd`
  - [ ] File operation prompts
  - [ ] Path debugging help
  - [ ] Format design questions
  - [ ] Error handling queries
  - [ ] Data structure saving

### 7. Student Resources

- [ ] Create `resources/week-07-practice-problems.qmd`
  - [ ] File reading exercises
  - [ ] Writing challenges
  - [ ] Format design tasks
  - [ ] Processing problems
  - [ ] Self-check solutions

- [ ] Create `resources/week-07-debugging-files.qmd`
  - [ ] Common file errors
  - [ ] Path troubleshooting
  - [ ] Permission issues
  - [ ] Encoding problems
  - [ ] Testing strategies

### 8. Quality Assurance Tasks

- [ ] Verify all code uses only Week 1-7 features
- [ ] Test all file operations
- [ ] Validate path handling
- [ ] Check error scenarios
- [ ] Ensure no advanced features
- [ ] Verify no forward references
- [ ] Test in Colab environment

### 9. Final Preparation Tasks

- [ ] Create week-07-overview.qmd with navigation
- [ ] Generate printable reference sheets
- [ ] Export slides to PDF
- [ ] Prepare sample data files
- [ ] Set up example outputs
- [ ] Update course progress tracker

## Priority Order

1. **High Priority**
   - Lecture materials with clear progression
   - Lab exercises building skills
   - Project specification
   - Core assessments

2. **Medium Priority**
   - Instructor guide and solutions
   - File pattern library
   - Colab-specific guide
   - Student practice problems

3. **Lower Priority**
   - Additional resources
   - Printable materials
   - Extended examples

## Time Estimates

- Lecture materials: 3-4 hours
- Lab materials: 3-4 hours
- Project specification: 2 hours
- Assessment materials: 3 hours
- Instructor resources: 3 hours
- Supporting materials: 2 hours
- QA and final prep: 2 hours

**Total estimated time: 18-22 hours**

## Key Constraints for Week 7

### Must Use ONLY
From Weeks 1-6:
- All previous features (variables, I/O, types, conditions, loops, lists, strings, functions, dictionaries)

New in Week 7:
- open() function with modes 'r', 'w', 'a'
- file.read(), file.readline(), file.readlines()
- file.write()
- file.close()
- with statement for files
- Basic path strings
- FileNotFoundError awareness

### Must NOT Use
- os module - Too advanced
- pathlib - Not introduced
- csv module - Week 9
- json module - Week 10
- pickle - Never in basics
- Binary modes - Too advanced
- try/except - Week 10
- Complex path manipulation

## Success Criteria

- Students can read and write text files
- Understand file modes and when to use each
- Can save program data persistently
- Handle missing files gracefully
- Use 'with' statement properly
- Build complete applications with persistence

## Dependencies

- Weeks 1-6 materials completed
- Students comfortable with dictionaries
- Understanding of data organization
- Feature progression list updated
- AI prompt constraints verified

## Notes for Development

- Emphasize practical persistence
- Show file explorer integration
- Use simple text formats
- Build on contact book example
- Address Colab-specific needs
- Keep paths simple