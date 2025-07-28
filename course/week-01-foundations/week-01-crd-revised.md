# Week 1: Course Requirements Document (CRD) - REVISED
## Computational Thinking & AI Partnership

### Overview
Week 1 introduces students to computational thinking concepts and establishes AI as a learning partner. Instead of avoiding AI or treating it as a threat, students learn to use AI strategically to understand programming concepts, recognize patterns, and build mental models of how programs work.

### Core Philosophy Shift
- **Old**: "Don't use AI to write code"
- **New**: "Use AI strategically to understand concepts and guide implementation"

### Learning Objectives
By the end of Week 1, students will be able to:

1. **Computational Thinking Fundamentals**
   - Identify Input → Process → Output patterns in problems
   - Understand the six building blocks: Input, Storage, Processing, Output, Decisions, Repetition
   - Map conceptual data types (text, numbers, yes/no) to Python types (str, int/float, bool)
   - Understand why type conversion is necessary (especially input() returning strings)
   - Visualize program flow using diagrams

2. **AI as Learning Partner**
   - Use AI to understand their development environment
   - Write progressively better prompts to get useful code
   - Use AI to explain and trace code execution
   - Identify when AI overcomplicates solutions

3. **Pattern Recognition**
   - Recognize common code structures across different solutions
   - Identify the core components of any program
   - Predict what changes to code will do
   - Spot logic errors in AI-generated code

4. **Mental Model Building**
   - Create flowcharts of program logic
   - Trace variable values through execution
   - Explain what code does in plain English
   - Connect code structures to problem requirements

### Session Breakdown

#### Week 1 Lecture: Building Mental Models with AI
**Duration:** 1 hour

**Content Flow:**

1. **Introduction: The New Reality** (10 min)
   - AI can write code - so why learn programming?
   - The architect vs. bricklayer analogy
   - Course goals: Think computationally, guide AI effectively
   - Demo: Same problem, different prompts, different results

2. **Computational Thinking Concepts** (25 min)
   - Every program: Input → Process → Output
   - The six building blocks:
     - Input: Getting information
     - Storage: Variables (box/label analogy)
     - Processing: Calculations and transformations
     - Output: Showing results
     - Decisions: Programs that think (preview Week 2)
     - Repetition: Doing things multiple times (preview Week 3)
   - From Concepts to Code: Python's Way
     - Why data types matter
     - Mapping concepts to Python types (str, int, float, bool)
     - The critical detail: input() returns strings
     - Type conversion with int() and float()

3. **AI as Your Learning Assistant** (15 min)
   - Using AI to understand tools (Colab demo)
   - Prompt evolution demonstration:
     - Vague: "temperature converter"
     - Better: "temperature converter with user input"
     - Specific: "temperature converter using only basic concepts"
     - Learning: "explain this temperature converter line by line"
   - Recognizing AI patterns and overcomplications

4. **Why Understanding Matters** (10 min)
   - The specification change scenario
   - The debugging challenge
   - The integration problem
   - Building on shaky foundations

**Key Demonstrations:**
- Live prompt evolution with temperature converter
- Showing how specifications changes break copy-paste coding
- Tracing execution with AI assistance
- Identifying AI mistakes in real-time

#### Week 1 Lab: Hands-on AI Partnership
**Duration:** 2 hours

**Hour 1: AI as Teacher**

1. **Environment Exploration with AI** (20 min)
   - Prompt: "Explain Google Colab for a complete beginner"
   - Prompt: "What's the difference between code and text cells?"
   - Prompt: "How do I save and share my Colab notebook?"
   - Practice using Gemini built-in vs. external AI tools

2. **Prompt Evolution Exercise** (25 min)
   - Start with: "temperature converter"
   - Document what AI gives you
   - Refine: "simple temperature converter that asks user for input"
   - Refine: "temperature converter using only print, input, and if statements"
   - Compare all versions - what patterns emerge?

3. **Pattern Recognition** (15 min)
   - Identify common elements across all versions:
     - Where is input happening?
     - Where are decisions made?
     - Where is output shown?
   - Create a simple diagram of program flow

**Hour 2: Understanding and Application**

1. **Code Tracing with AI** (20 min)
   - Take the simplest temperature converter
   - Use AI: "Trace through this code if user enters 100 C"
   - Manually verify AI's trace
   - Try edge cases: 0, -40, non-numbers

2. **The Modification Challenge** (25 min)
   - Scenario: "Client wants to add Kelvin support"
   - First attempt: Ask AI directly
   - Better: "Where in this code would I add Kelvin?"
   - Best: "Explain the structure so I know where to add features"
   - Document which approach worked best

3. **Debugging Practice** (15 min)
   - Instructor provides buggy temperature converter
   - Use AI to understand (not fix) the bugs:
     - "What does this error message mean?"
     - "Why might this give wrong output?"
     - "Trace through this with input 32 F"
   - Fix bugs based on understanding

**Lab Deliverables:**
- Completed prompt evolution document
- Final temperature converter with comments
- Flowchart of program logic
- Debugging notes showing understanding

### Assessment Components

#### Formative Assessments

1. **Prompt Evolution Log**
   - Document each prompt tried
   - Note what improved between versions
   - Identify most effective prompting strategies

2. **Code Understanding Demonstration**
   - Explain your final code to a partner
   - Predict what happens with specific inputs
   - Identify where to make modifications

#### Summative Assessment

**Week 1 Project: Temperature Converter Portfolio**
Create a temperature converter through prompt evolution, including:
- Documentation of your prompt journey
- Final working code with YOUR comments
- Flowchart showing program logic
- Test cases demonstrating understanding
- Reflection on AI's help and limitations

**Grading Rubric:**
- Prompt Evolution Documentation (25%)
  - Shows progression from simple to specific
  - Identifies what made prompts better
- Code Understanding (35%)
  - Meaningful comments added
  - Can explain every line
  - Flowchart matches code logic
- Testing and Validation (20%)
  - Multiple test cases documented
  - Edge cases considered
  - Bugs identified and fixed
- AI Reflection (20%)
  - Honest assessment of AI's help
  - Identifies AI limitations encountered
  - Shows strategic use of AI

### Common Pitfalls to Avoid (Revised)

1. **Prompt Laziness**
   - Using first AI output without refinement
   - Not pushing for simpler solutions
   - Accepting code without understanding

2. **Skipping Mental Models**
   - Jumping straight to code
   - Not drawing out logic first
   - Ignoring program flow

3. **Over-relying on Syntax**
   - Memorizing instead of understanding
   - Focusing on semicolons over concepts
   - Missing the bigger picture

4. **AI Misuse**
   - Using AI as answer key instead of tutor
   - Not verifying AI's explanations
   - Believing AI is always correct

### Instructor Notes

#### Opening Hook
"Let me show you something. [Opens AI] 'Write a temperature converter.' [Shows complex result] Now, who can modify this to add wind chill? Nobody? That's why we're here."

#### Key Messages Throughout
- "AI is powerful but needs direction"
- "You're the architect, AI is your construction crew"
- "Understanding beats memorization every time"
- "Every expert was once confused by variables"

#### Managing AI Integration
- Encourage experimentation with prompts
- Celebrate when students find AI mistakes
- Emphasize process over product
- Build culture of understanding

### Success Metrics
- 90% can create basic flowcharts by week's end
- 80% show prompt improvement in their logs
- 100% complete a working temperature converter
- All students identify at least one AI limitation

### Homework Assignment
1. Read textbook chapters on computational thinking
2. Find three everyday processes that follow Input→Process→Output
3. Practice prompt refinement with a simple calculator
4. Prepare questions about confusing concepts

### Looking Ahead
Next week: Decision making and program flow - using AI to visualize logic paths and debug complex conditionals.