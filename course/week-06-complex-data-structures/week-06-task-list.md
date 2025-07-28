# Week 6: Task List for Course Material Development
## Complex Data Structures

### Overview
Week 6 introduces dictionaries for organizing related data with key-value pairs. All materials must use ONLY features introduced in Weeks 1-6, following our established patterns and guidelines.

## Phase 2: Detailed Task Breakdown

### 1. Lecture Materials (Quarto Markdown Format)

#### Week 6 Lecture Tasks
- [ ] Create `lectures/week-06-lecture.qmd`
  - [ ] Hook: Contact management system complexity
  - [ ] Computational concepts section
    - [ ] Real-world key-value examples
    - [ ] Dictionary vs list comparison
    - [ ] When to use dictionaries
    - [ ] Data modeling principles
  - [ ] From Concepts to Code section
    - [ ] Dictionary creation and syntax
    - [ ] Accessing values (bracket vs .get())
    - [ ] Adding, updating, deleting entries
    - [ ] Dictionary methods (.keys(), .values(), .items())
    - [ ] Iteration patterns
    - [ ] Nested structures (dict of dicts, list of dicts)
  - [ ] AI partnership demonstration
    - [ ] Progressive data modeling prompts
    - [ ] Avoiding over-engineering
    - [ ] Debugging KeyErrors
    - [ ] Structure design help
  - [ ] Integration with previous weeks
  - [ ] Include timing markers
  - [ ] Add instructor notes

- [ ] Create `lectures/week-06-slides.qmd` (presentation version)
  - [ ] Opening hook visuals
  - [ ] Key-value concept diagrams
  - [ ] Dictionary vs list comparison
  - [ ] Nested structure visualization
  - [ ] Method reference charts
  - [ ] Live coding checkpoints

### 2. Lab Materials

#### Week 6 Lab Tasks
- [ ] Create `labs/week-06-lab.qmd`
  - [ ] Hour 1: Dictionary Fundamentals
    - [ ] Creating dictionaries
    - [ ] Accessing values safely
    - [ ] Adding and updating
    - [ ] Deleting entries
    - [ ] Checking key existence
    - [ ] Method practice
  - [ ] Hour 2: Complex Structures
    - [ ] Nested dictionaries
    - [ ] Lists of dictionaries
    - [ ] Navigation exercises
    - [ ] Data processing
    - [ ] Contact book start
    - [ ] Structure design
  - [ ] Include solution snippets
  - [ ] Add common mistakes section
  - [ ] Provide debugging strategies

### 3. Project Materials

- [ ] Create `projects/project-06-contact-book.qmd`
  - [ ] Clear contact book requirements
  - [ ] Data structure design
    - [ ] Contact fields
    - [ ] Storage organization
    - [ ] Search strategies
    - [ ] Update mechanisms
  - [ ] Feature specifications
    - [ ] Add contacts
    - [ ] View all/search
    - [ ] Update information
    - [ ] Delete safely
    - [ ] Handle duplicates
  - [ ] User interface design
  - [ ] Testing checklist
  - [ ] AI usage documentation template
  - [ ] Grading rubric

### 4. Assessment Materials

- [ ] Create `assessments/week-06-dictionary-operations.qmd`
  - [ ] Create dictionaries
  - [ ] Access values safely
  - [ ] Modify dictionaries
  - [ ] Use methods correctly
  - [ ] Handle errors

- [ ] Create `assessments/week-06-data-modeling.qmd`
  - [ ] Design structures for scenarios
  - [ ] Choose appropriate keys
  - [ ] Model relationships
  - [ ] Compare approaches
  - [ ] Justify decisions

- [ ] Create `assessments/week-06-nested-structures.qmd`
  - [ ] Navigate nested dictionaries
  - [ ] Update deep values
  - [ ] Search hierarchies
  - [ ] Process complex data
  - [ ] Build structures

### 5. Instructor Resources

- [ ] Create `resources/week-06-instructor-guide.qmd`
  - [ ] Lecture delivery notes
  - [ ] Common student confusions
    - [ ] KeyError handling
    - [ ] Dict vs list choice
    - [ ] Nested access syntax
    - [ ] Iteration methods
  - [ ] Visual teaching aids
  - [ ] Demonstration strategies
  - [ ] Pacing guidelines

- [ ] Create `resources/week-06-data-patterns.qmd`
  - [ ] Common dictionary patterns
  - [ ] Contact/person modeling
  - [ ] Inventory structures
  - [ ] Configuration data
  - [ ] Lookup tables
  - [ ] Nested hierarchies

- [ ] Create `resources/week-06-solutions.qmd`
  - [ ] Lab exercise solutions
  - [ ] Assessment answer keys
  - [ ] Contact book implementation
  - [ ] Alternative designs
  - [ ] Common variations

### 6. Supporting Materials

- [ ] Create `resources/week-06-dictionary-reference.qmd`
  - [ ] Complete method reference
  - [ ] Access patterns
  - [ ] Safe operations
  - [ ] Common idioms
  - [ ] Performance notes

- [ ] Create `resources/week-06-modeling-guide.qmd`
  - [ ] When to use dictionaries
  - [ ] Key selection principles
  - [ ] Structure depth guidelines
  - [ ] List vs dict decision tree
  - [ ] Real-world examples

- [ ] Create `resources/week-06-ai-prompts.qmd`
  - [ ] Data structure design prompts
  - [ ] Debugging KeyError
  - [ ] Navigation assistance
  - [ ] Modeling help
  - [ ] Test data generation

### 7. Student Resources

- [ ] Create `resources/week-06-practice-problems.qmd`
  - [ ] Dictionary exercises
  - [ ] Modeling challenges
  - [ ] Nested navigation
  - [ ] Data processing tasks
  - [ ] Self-check solutions

- [ ] Create `resources/week-06-debugging-dicts.qmd`
  - [ ] Common KeyErrors
  - [ ] Type mismatches
  - [ ] Iteration issues
  - [ ] Nested access problems
  - [ ] Testing strategies

### 8. Quality Assurance Tasks

- [ ] Verify all code uses only Week 1-6 features
- [ ] Test all dictionary operations
- [ ] Validate nested structures
- [ ] Check error handling
- [ ] Ensure no JSON/classes
- [ ] Verify no forward references
- [ ] Test data modeling examples

### 9. Final Preparation Tasks

- [ ] Create week-06-overview.qmd with navigation
- [ ] Generate printable reference sheets
- [ ] Export slides to PDF
- [ ] Prepare structure diagrams
- [ ] Set up example datasets
- [ ] Update course progress tracker

## Priority Order

1. **High Priority**
   - Lecture materials with clear progression
   - Lab exercises building skills
   - Project specification
   - Core assessments

2. **Medium Priority**
   - Instructor guide and solutions
   - Data pattern library
   - Student practice problems
   - Modeling guide

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

## Key Constraints for Week 6

### Must Use ONLY
From Weeks 1-5:
- All previous features (variables, I/O, types, conditions, loops, lists, strings, functions)

New in Week 6:
- Dictionaries: {} and dict()
- Dictionary access: dict[key] and dict.get(key, default)
- Dictionary methods: .keys(), .values(), .items()
- del keyword for dictionary entries
- in operator for key checking
- Nested dictionaries
- Lists of dictionaries
- Dictionary iteration patterns

### Must NOT Use
- Classes/objects - Too advanced
- JSON module - Week 10
- File I/O - Week 7
- try/except - Week 10
- Dictionary comprehensions - Never in basics
- defaultdict - Not covered
- OrderedDict - Not covered
- Any imports - Week 10

## Success Criteria

- Students understand key-value relationships
- Can model real-world data appropriately
- Navigate nested structures confidently
- Handle KeyErrors safely
- Complete contact book project
- Choose dict vs list appropriately

## Dependencies

- Weeks 1-5 materials completed
- Students comfortable with functions
- Understanding of data organization
- Feature progression list updated
- AI prompt constraints verified

## Notes for Development

- Emphasize visual representation
- Show many modeling examples
- Compare dict vs list frequently
- Build complexity gradually
- Connect to real-world data needs