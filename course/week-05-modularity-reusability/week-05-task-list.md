# Week 5: Task List for Course Material Development
## Modularity & Reusability

### Overview
Week 5 introduces functions as the fundamental building block of modular programming. All materials must use ONLY features introduced in Weeks 1-5, following our established patterns and guidelines.

## Phase 2: Detailed Task Breakdown

### 1. Lecture Materials (Quarto Markdown Format)

#### Week 5 Lecture Tasks
- [ ] Create `lectures/week-05-lecture.qmd`
  - [ ] Hook: Recipe management complexity demo
  - [ ] Computational concepts section
    - [ ] Real-world modularity examples
    - [ ] Why functions matter (DRY principle)
    - [ ] Function as black box model
    - [ ] Input → Process → Output paradigm
  - [ ] From Concepts to Code section
    - [ ] Basic function syntax (def, return)
    - [ ] Parameters and arguments
    - [ ] Default parameters
    - [ ] Multiple return values
    - [ ] Variable scope (local vs global)
    - [ ] None as default return
  - [ ] AI partnership demonstration
    - [ ] Progressive function design prompts
    - [ ] Avoiding over-engineering
    - [ ] Function vs script mentality
    - [ ] Debugging function issues
  - [ ] Integration with previous weeks
  - [ ] Include timing markers
  - [ ] Add instructor notes

- [ ] Create `lectures/week-05-slides.qmd` (presentation version)
  - [ ] Opening hook visuals
  - [ ] Function box diagrams
  - [ ] Parameter passing animations
  - [ ] Scope visualization
  - [ ] Before/after refactoring
  - [ ] Live coding checkpoints

### 2. Lab Materials

#### Week 5 Lab Tasks
- [ ] Create `labs/week-05-lab.qmd`
  - [ ] Hour 1: Function Fundamentals
    - [ ] Basic function exercises
    - [ ] Parameter practice
    - [ ] Return value exercises
    - [ ] Scope tracing activities
    - [ ] Edge case handling
    - [ ] Docstring writing
  - [ ] Hour 2: Integration and Refactoring
    - [ ] Refactoring repetitive code
    - [ ] Function composition
    - [ ] Building function libraries
    - [ ] Testing functions
    - [ ] Calculator project start
    - [ ] Function documentation
  - [ ] Include solution snippets
  - [ ] Add common mistakes section
  - [ ] Provide debugging strategies

### 3. Project Materials

- [ ] Create `projects/project-05-modular-calculator.qmd`
  - [ ] Clear calculator requirements
  - [ ] Function design guidelines
    - [ ] Basic arithmetic functions
    - [ ] Advanced operations
    - [ ] Conversion utilities
    - [ ] Input validation
    - [ ] Display formatting
  - [ ] Menu system design
  - [ ] Function interface specifications
  - [ ] Testing requirements
  - [ ] Documentation standards
  - [ ] AI usage documentation template
  - [ ] Grading rubric

### 4. Assessment Materials

- [ ] Create `assessments/week-05-function-tracing.qmd`
  - [ ] Trace function execution
  - [ ] Track parameter values
  - [ ] Identify return points
  - [ ] Follow call stack
  - [ ] Predict output

- [ ] Create `assessments/week-05-function-design.qmd`
  - [ ] Design functions for tasks
  - [ ] Choose appropriate parameters
  - [ ] Determine return types
  - [ ] Write docstrings
  - [ ] Handle edge cases

- [ ] Create `assessments/week-05-scope-understanding.qmd`
  - [ ] Identify variable scope
  - [ ] Fix scope errors
  - [ ] Local vs global tracing
  - [ ] Parameter shadowing
  - [ ] Scope puzzles

### 5. Instructor Resources

- [ ] Create `resources/week-05-instructor-guide.qmd`
  - [ ] Lecture delivery notes
  - [ ] Common student confusions
    - [ ] Return vs print
    - [ ] Scope boundaries
    - [ ] Parameter passing
    - [ ] When to use functions
  - [ ] Visual teaching aids
  - [ ] Live coding strategies
  - [ ] Refactoring demonstrations

- [ ] Create `resources/week-05-function-patterns.qmd`
  - [ ] Common function patterns
  - [ ] Validator functions
  - [ ] Transformer functions
  - [ ] Calculator functions
  - [ ] Display functions
  - [ ] Helper functions

- [ ] Create `resources/week-05-solutions.qmd`
  - [ ] Lab exercise solutions
  - [ ] Assessment answer keys
  - [ ] Calculator implementations
  - [ ] Refactoring examples
  - [ ] Common variations

### 6. Supporting Materials

- [ ] Create `resources/week-05-function-reference.qmd`
  - [ ] Function syntax guide
  - [ ] Parameter types
  - [ ] Return statement rules
  - [ ] Scope rules
  - [ ] Docstring conventions
  - [ ] Common patterns

- [ ] Create `resources/week-05-refactoring-guide.qmd`
  - [ ] Identifying repetition
  - [ ] Extracting functions
  - [ ] Parameterization
  - [ ] Testing refactored code
  - [ ] Before/after examples

- [ ] Create `resources/week-05-ai-prompts.qmd`
  - [ ] Function design prompts
  - [ ] Debugging function errors
  - [ ] Scope issue resolution
  - [ ] Refactoring assistance
  - [ ] Documentation generation

### 7. Student Resources

- [ ] Create `resources/week-05-practice-problems.qmd`
  - [ ] Extra function exercises
  - [ ] Scope puzzles
  - [ ] Refactoring challenges
  - [ ] Mini-projects
  - [ ] Self-check solutions

- [ ] Create `resources/week-05-debugging-functions.qmd`
  - [ ] Common function errors
  - [ ] Return vs print issues
  - [ ] Scope debugging
  - [ ] Parameter mistakes
  - [ ] Testing strategies

### 8. Quality Assurance Tasks

- [ ] Verify all code uses only Week 1-5 features
- [ ] Test all function examples
- [ ] Validate scope demonstrations
- [ ] Check parameter passing examples
- [ ] Ensure no advanced features (no *args, **kwargs)
- [ ] Verify no forward references
- [ ] Test calculator implementations

### 9. Final Preparation Tasks

- [ ] Create week-05-overview.qmd with navigation
- [ ] Generate printable function reference
- [ ] Export slides to PDF
- [ ] Prepare scope diagram templates
- [ ] Set up function testing framework
- [ ] Update course progress tracker

## Priority Order

1. **High Priority**
   - Lecture materials with clear progression
   - Lab exercises building skills
   - Project specification
   - Core assessments

2. **Medium Priority**
   - Instructor guide and solutions
   - Function pattern library
   - Student practice problems
   - Refactoring guide

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

## Key Constraints for Week 5

### Must Use ONLY
From Weeks 1-4:
- All previous features (variables, I/O, types, conditions, loops, lists, strings)

New in Week 5:
- def keyword
- Function parameters
- return statement
- Default parameters
- Local scope
- Global scope (read-only)
- None value
- Docstrings (""")
- Multiple return values (tuple unpacking)

### Must NOT Use
- *args, **kwargs - Never in basics
- lambda functions - Never in basics
- Decorators - Never in basics
- global keyword - Avoid modifying globals
- nonlocal - Too advanced
- Function annotations - Not covered
- Nested functions - Too complex
- Generators - Way too advanced
- Classes - Week 12 only

## Success Criteria

- Students understand functions as reusable code blocks
- Can design appropriate function interfaces
- Master parameter passing and returns
- Understand scope boundaries
- Complete modular calculator project
- Can refactor repetitive code

## Dependencies

- Weeks 1-4 materials completed
- Students comfortable with all previous concepts
- Strong grasp of data flow
- Feature progression list updated
- AI prompt constraints verified

## Notes for Development

- Start with obvious repetition examples
- Use visual diagrams for scope
- Show many before/after refactorings
- Emphasize one function = one task
- Connect to real-world modularity