# Week 4: Task List for Course Material Development
## Data Organization & Structure

### Overview
Week 4 teaches string manipulation and advanced list operations, building on loops from Week 3. All materials must use ONLY features introduced in Weeks 1-4, following our established patterns and guidelines.

## Phase 2: Detailed Task Breakdown

### 1. Lecture Materials (Quarto Markdown Format)

#### Week 4 Lecture Tasks
- [ ] Create `lectures/week-04-lecture.qmd`
  - [ ] Hook: Password validator complexity demo
  - [ ] Computational concepts section
    - [ ] Text as structured data
    - [ ] Real-world text patterns
    - [ ] Three operations: extraction, transformation, analysis
    - [ ] Why text processing matters
  - [ ] From Concepts to Code section
    - [ ] String slicing with all variations
    - [ ] String methods (case, strip, find, replace)
    - [ ] Split and join operations
    - [ ] List slicing (parallel to strings)
    - [ ] Common patterns (email, password validation)
    - [ ] Special characters and escape sequences
  - [ ] AI partnership demonstration
    - [ ] Progressive string manipulation prompts
    - [ ] Avoiding regex temptation
    - [ ] Debugging slicing operations
    - [ ] Method chain understanding
  - [ ] Integration with previous weeks
  - [ ] Include timing markers
  - [ ] Add instructor notes

- [ ] Create `lectures/week-04-slides.qmd` (presentation version)
  - [ ] Opening hook visuals
  - [ ] String as sequence diagram
  - [ ] Slicing notation visual guide
  - [ ] Method reference chart
  - [ ] Split/join flow diagrams
  - [ ] Live coding checkpoints

### 2. Lab Materials

#### Week 4 Lab Tasks
- [ ] Create `labs/week-04-lab.qmd`
  - [ ] Hour 1: Slicing and Methods
    - [ ] String slicing exercises
    - [ ] Negative indexing practice
    - [ ] Step parameter exploration
    - [ ] String method exercises
    - [ ] Method chaining practice
    - [ ] Split/join exercises
  - [ ] Hour 2: Integration and Application
    - [ ] Data cleaning pipelines
    - [ ] Text extraction tasks
    - [ ] List/string combinations
    - [ ] Pattern validation
    - [ ] Word game project start
    - [ ] Testing edge cases
  - [ ] Include solution snippets
  - [ ] Add common mistakes section
  - [ ] Provide debugging strategies

### 3. Project Materials

- [ ] Create `projects/project-04-word-game.qmd`
  - [ ] Clear game options and requirements
  - [ ] Core features for each game type
    - [ ] Scramble game mechanics
    - [ ] Hangman implementation
    - [ ] Word chain rules
    - [ ] Palindrome checker
  - [ ] User interaction design
  - [ ] Input validation requirements
  - [ ] Scoring system guidelines
  - [ ] Testing checklist
  - [ ] AI usage documentation template
  - [ ] Grading rubric

### 4. Assessment Materials

- [ ] Create `assessments/week-04-slicing-mastery.qmd`
  - [ ] String slicing challenges
  - [ ] List slicing problems
  - [ ] Negative index exercises
  - [ ] Step parameter puzzles
  - [ ] Edge case handling

- [ ] Create `assessments/week-04-string-methods.qmd`
  - [ ] Method selection tasks
  - [ ] Method chaining exercises
  - [ ] Return value predictions
  - [ ] Common pattern implementation

- [ ] Create `assessments/week-04-data-processing.qmd`
  - [ ] Parse structured text
  - [ ] Clean messy input
  - [ ] Extract information
  - [ ] Transform data formats

### 5. Instructor Resources

- [ ] Create `resources/week-04-instructor-guide.qmd`
  - [ ] Lecture delivery notes
  - [ ] Common student confusions
    - [ ] Slice notation [start:end:step]
    - [ ] String immutability
    - [ ] Method vs function calls
    - [ ] Split delimiter confusion
  - [ ] Visual teaching aids
  - [ ] Demonstration strategies
  - [ ] Pacing guidelines

- [ ] Create `resources/week-04-string-reference.qmd`
  - [ ] Complete method reference
  - [ ] Slicing syntax guide
  - [ ] Common patterns library
  - [ ] Performance considerations
  - [ ] Best practices

- [ ] Create `resources/week-04-solutions.qmd`
  - [ ] Lab exercise solutions
  - [ ] Assessment answer keys
  - [ ] Word game implementations
  - [ ] Common variations
  - [ ] Debugging guides

### 6. Supporting Materials

- [ ] Create `resources/week-04-slicing-visual-guide.qmd`
  - [ ] Visual representations
  - [ ] Index position diagrams
  - [ ] Step-by-step examples
  - [ ] Common slicing patterns
  - [ ] Practice problems

- [ ] Create `resources/week-04-method-cheatsheet.qmd`
  - [ ] Method categories
  - [ ] Input/output examples
  - [ ] Common combinations
  - [ ] Return value notes
  - [ ] Performance tips

- [ ] Create `resources/week-04-ai-prompts.qmd`
  - [ ] String manipulation prompts
  - [ ] Debugging slice operations
  - [ ] Method selection help
  - [ ] Pattern implementation
  - [ ] Constraint reminders

### 7. Student Resources

- [ ] Create `resources/week-04-practice-problems.qmd`
  - [ ] Extra slicing exercises
  - [ ] String method drills
  - [ ] Text processing challenges
  - [ ] Self-check solutions

- [ ] Create `resources/week-04-debugging-strings.qmd`
  - [ ] Common string errors
  - [ ] Slicing mistakes
  - [ ] Method misconceptions
  - [ ] Testing strategies

### 8. Quality Assurance Tasks

- [ ] Verify all code uses only Week 1-4 features
- [ ] Test all slicing examples
- [ ] Validate method demonstrations
- [ ] Check edge cases in examples
- [ ] Ensure no regex usage
- [ ] Verify no forward references
- [ ] Test word game variations

### 9. Final Preparation Tasks

- [ ] Create week-04-overview.qmd with navigation
- [ ] Generate printable reference sheets
- [ ] Export slides to PDF
- [ ] Prepare slicing worksheets
- [ ] Set up sample text files
- [ ] Update course progress tracker

## Priority Order

1. **High Priority**
   - Lecture materials with clear progression
   - Lab exercises building skills
   - Project specification
   - Core assessments

2. **Medium Priority**
   - Instructor guide and solutions
   - String/slicing references
   - Student practice problems
   - Visual guides

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

## Key Constraints for Week 4

### Must Use ONLY
From Weeks 1-3:
- All previous features (variables, I/O, types, conditions, loops, lists)

New in Week 4:
- String slicing: text[start:end:step]
- String methods: .upper(), .lower(), .strip(), .find(), .replace()
- .split() and .join()
- .title() method
- .isdigit(), .isalpha(), .islower(), .isupper()
- Escape characters: \n, \t
- Multi-line strings with """
- List slicing
- in operator for substrings

### Must NOT Use
- Functions (def) - Week 5
- Dictionaries - Week 6
- Files - Week 7
- try/except - Week 10
- imports - Week 10
- Regular expressions - Never in basics
- List comprehensions - Never in basics
- Lambda functions - Never in basics
- String formatting beyond f-strings

## Success Criteria

- Students master string slicing notation
- Can apply appropriate string methods
- Understand string immutability
- Can parse and clean text data
- Build working word games
- Connect strings and lists conceptually

## Dependencies

- Weeks 1-3 materials completed
- Students comfortable with loops and lists
- Feature progression list updated
- AI prompt constraints verified

## Notes for Development

- Emphasize visual learning for slicing
- Many small examples better than few complex
- Show common text patterns from real life
- Build string intuition gradually
- Connect to practical applications