# Week 3: Task List for Course Material Development
## Repetition & Patterns

### Overview
Week 3 introduces loops and lists, building on Weeks 1-2. All materials must use ONLY features introduced in Weeks 1-3, following our established patterns and guidelines.

## Phase 2: Detailed Task Breakdown

### 1. Lecture Materials (Quarto Markdown Format)

#### Week 3 Lecture Tasks
- [ ] Create `lectures/week-03-lecture.qmd`
  - [ ] Hook: Playlist/music player complexity demo
  - [ ] Computational concepts section
    - [ ] Real-world repetition examples
    - [ ] Three patterns: counted, conditional, collection
    - [ ] Why collections enable repetition
    - [ ] Loop flowchart notation
  - [ ] From Concepts to Code section
    - [ ] While loops for conditional repetition
    - [ ] For loops with range() for counting
    - [ ] Lists as collections
    - [ ] For loops with lists
    - [ ] Common patterns (validation, search, accumulation)
    - [ ] Break and continue statements
  - [ ] AI partnership demonstration
    - [ ] Progressive shopping list prompts
    - [ ] Identifying overcomplication
    - [ ] Debugging infinite loops
    - [ ] Tracing execution with AI
  - [ ] Integration with previous weeks
  - [ ] Include timing markers
  - [ ] Add instructor notes

- [ ] Create `lectures/week-03-slides.qmd` (presentation version)
  - [ ] Opening hook visuals
  - [ ] Loop flowchart examples
  - [ ] List visualization (boxes with indices)
  - [ ] Common patterns reference
  - [ ] Trace table examples
  - [ ] Live coding checkpoints

### 2. Lab Materials

#### Week 3 Lab Tasks
- [ ] Create `labs/week-03-lab.qmd`
  - [ ] Hour 1: Understanding Loops and Lists
    - [ ] Loop flowchart exercises
    - [ ] While loop practice
    - [ ] For loop with range()
    - [ ] List creation and modification
    - [ ] Index access practice
    - [ ] Loop tracing exercises
  - [ ] Hour 2: Integration
    - [ ] For loops with lists
    - [ ] Search patterns
    - [ ] Building lists dynamically
    - [ ] Menu-driven programs
    - [ ] Shopping list project start
    - [ ] Debugging practice
  - [ ] Include solution snippets
  - [ ] Add common mistakes section
  - [ ] Provide debugging strategies

### 3. Project Materials

- [ ] Create `projects/project-03-shopping-list.qmd`
  - [ ] Clear specifications with examples
  - [ ] Feature requirements
    - [ ] Add items
    - [ ] View list with numbers
    - [ ] Remove by number
    - [ ] Check if item exists
    - [ ] Clear list
    - [ ] Exit option
  - [ ] Menu system design
  - [ ] Testing checklist
  - [ ] AI usage documentation template
  - [ ] Grading rubric

### 4. Assessment Materials

- [ ] Create `assessments/week-03-loop-tracing.qmd`
  - [ ] Trace while loops
  - [ ] Trace for loops with range()
  - [ ] Trace for loops with lists
  - [ ] Predict number of iterations
  - [ ] Identify output

- [ ] Create `assessments/week-03-pattern-recognition.qmd`
  - [ ] When to use while vs for
  - [ ] Identify repetition needs
  - [ ] Choose appropriate pattern
  - [ ] Convert between loop types

- [ ] Create `assessments/week-03-debugging-loops.qmd`
  - [ ] Find infinite loops
  - [ ] Fix off-by-one errors
  - [ ] Resolve index errors
  - [ ] Correct logic mistakes

### 5. Instructor Resources

- [ ] Create `resources/week-03-instructor-guide.qmd`
  - [ ] Lecture delivery notes
  - [ ] Common student confusions
    - [ ] While vs for choice
    - [ ] Index starts at 0
    - [ ] Off-by-one with range()
    - [ ] Modifying lists during iteration
  - [ ] Loop demonstrations
  - [ ] Safety with infinite loops
  - [ ] Visualization techniques

- [ ] Create `resources/week-03-common-patterns.qmd`
  - [ ] Input validation loops
  - [ ] Sentinel value patterns
  - [ ] Search algorithms
  - [ ] Accumulation patterns
  - [ ] Menu-driven programs

- [ ] Create `resources/week-03-solutions.qmd`
  - [ ] Lab exercise solutions
  - [ ] Shopping list reference implementation
  - [ ] Common variations
  - [ ] Test cases

### 6. Supporting Materials

- [ ] Create `resources/week-03-loop-reference.qmd`
  - [ ] While loop syntax and uses
  - [ ] For loop variations
  - [ ] Range() function details
  - [ ] Break and continue usage
  - [ ] Common mistakes

- [ ] Create `resources/week-03-list-reference.qmd`
  - [ ] List creation methods
  - [ ] Index notation
  - [ ] Common list methods
  - [ ] List bounds and errors
  - [ ] When to use lists

- [ ] Create `resources/week-03-ai-prompts.qmd`
  - [ ] Loop-focused prompts
  - [ ] Debugging infinite loops
  - [ ] Tracing execution
  - [ ] Pattern identification

### 7. Student Resources

- [ ] Create `resources/week-03-practice-problems.qmd`
  - [ ] Extra loop exercises
  - [ ] List manipulation practice
  - [ ] Pattern implementations
  - [ ] Self-check solutions

- [ ] Create `resources/week-03-debugging-guide.qmd`
  - [ ] Recognizing infinite loops
  - [ ] Using print for loop debugging
  - [ ] Common index errors
  - [ ] Testing loop boundaries

### 8. Quality Assurance Tasks

- [ ] Verify all code uses only Week 1-3 features
- [ ] Test all loops terminate properly
- [ ] Check list operations for bounds
- [ ] Validate AI prompt constraints
- [ ] Ensure consistent style
- [ ] Test edge cases
- [ ] Verify no forward references

### 9. Final Preparation Tasks

- [ ] Create week-03-overview.qmd with navigation
- [ ] Generate printable lab worksheets
- [ ] Export slides to PDF
- [ ] Prepare loop tracing templates
- [ ] Set up test cases for project
- [ ] Update course progress tracker

## Priority Order

1. **High Priority**
   - Lecture materials with clear progression
   - Lab exercises building skills
   - Project specification
   - Core assessments

2. **Medium Priority**
   - Instructor guide and solutions
   - Pattern reference materials
   - Student practice problems
   - Debugging resources

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

## Key Constraints for Week 3

### Must Use ONLY
From Weeks 1-2:
- print(), input(), variables
- Data types: str, int, float, bool
- Type conversion
- Math operators
- f-strings, comments
- if/elif/else
- Comparison operators
- Logical operators: and, or, not
- .upper(), .lower()

New in Week 3:
- while loops
- for loops
- range() function
- Lists: [], .append(), index access
- len() function
- in operator
- break and continue

### Must NOT Use
- Functions (def) - Week 5
- Dictionaries - Week 6
- Files - Week 7
- try/except - Week 10
- imports - Week 10
- List comprehensions - Never in basics
- enumerate() - Not taught
- zip() - Not taught

## Success Criteria

- Students understand repetition patterns
- Can choose appropriate loop type
- Create and manipulate lists correctly
- Combine loops with previous concepts
- Debug common loop errors
- Complete shopping list project

## Dependencies

- Weeks 1-2 materials completed
- Students comfortable with conditions
- Feature progression list updated
- AI prompt constraints verified

## Notes for Development

- Emphasize pattern recognition
- Show many tracing examples
- Practice index arithmetic
- Connect to real-world uses
- Build debugging skills early