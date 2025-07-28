# Week 9: Course Requirements Document (CRD)
## Data Analysis and Visualization

### Overview
Week 9 introduces data analysis and visualization concepts, teaching students how to work with real-world data using CSV files, perform statistical analysis, and create meaningful insights. Students learn to process large datasets, calculate statistics, and present findings professionally.

### Prerequisites
Students should have completed Weeks 1-8 and be comfortable with:
- All fundamental programming concepts (variables, loops, conditions, functions)
- Lists and list operations (Week 5)
- Dictionaries and nested data structures (Week 6)
- File operations and data persistence (Week 7)
- Professional code organization (Week 8)
- Error handling and testing strategies (Week 8)

### Learning Objectives
By the end of Week 9, students will be able to:

1. **CSV File Processing**
   - Read and parse CSV files correctly
   - Handle different CSV formats and encodings
   - Process large datasets efficiently
   - Clean and validate data from files
   - Export data to CSV format

2. **Data Manipulation**
   - Transform raw data into usable formats
   - Filter and sort datasets
   - Group data by categories
   - Handle missing or invalid data
   - Merge data from multiple sources

3. **Statistical Analysis**
   - Calculate basic statistics (mean, median, mode)
   - Find minimum and maximum values
   - Compute standard deviation and variance
   - Analyze data distributions
   - Identify trends and patterns

4. **Data Visualization (Text-Based)**
   - Create ASCII charts and graphs
   - Design readable data tables
   - Build histogram representations
   - Generate summary reports
   - Present insights clearly

5. **AI Partnership for Data Analysis**
   - Get help with data cleaning strategies
   - Debug data processing pipelines
   - Optimize analysis algorithms
   - Design visualization approaches
   - Interpret statistical results

### Session Breakdown

#### Week 9 Lecture: Introduction to Data Analysis
**Duration:** 1 hour

**Content Flow:**

1. **Hook: The Data Detective Story** (10 min)
   - Present a real dataset with hidden insights
   - Ask: "What story does this data tell?"
   - Show how analysis reveals surprising patterns
   - The power of turning numbers into knowledge

2. **Computational Concept: Data Analysis Pipeline** (20 min)
   - What is data analysis?
     - **Collection**: Getting data from sources
     - **Cleaning**: Fixing errors and inconsistencies
     - **Analysis**: Computing statistics and patterns
     - **Visualization**: Making data understandable
     - **Interpretation**: Drawing meaningful conclusions
   
   - CSV file format:
     - **Structure**: Rows and columns of data
     - **Headers**: Column names and metadata
     - **Delimiters**: Commas, tabs, and other separators
     - **Encoding**: Text representation issues
   
   - Statistical concepts:
     - **Central tendency**: Mean, median, mode
     - **Spread**: Range, variance, standard deviation
     - **Distribution**: How data is spread out
     - **Outliers**: Unusual data points

3. **From Concepts to Code: Data Processing** (20 min)
   
   **Reading CSV Files**:
   ```python
   def read_csv_file(filename):
       """Read CSV file and return data as list of dictionaries."""
       data = []
       
       try:
           with open(filename, "r") as file:
               lines = file.readlines()
               
               if not lines:
                   return data
               
               # Extract headers from first line
               headers = lines[0].strip().split(",")
               
               # Process each data line
               for line in lines[1:]:
                   values = line.strip().split(",")
                   
                   # Create dictionary for this row
                   row = {}
                   for i, header in enumerate(headers):
                       if i < len(values):
                           row[header] = values[i]
                       else:
                           row[header] = ""
                   
                   data.append(row)
           
           print(f"✓ Loaded {len(data)} records from {filename}")
           return data
       
       except FileNotFoundError:
           print(f"Error: File '{filename}' not found")
           return []
       except Exception as e:
           print(f"Error reading file: {e}")
           return []
   ```
   
   **Data Cleaning**:
   ```python
   def clean_numeric_data(value):
       """Convert string to float, handling common issues."""
       if not value or value.strip() == "":
           return 0.0
       
       # Remove currency symbols and commas
       cleaned = value.replace("$", "").replace(",", "").strip()
       
       try:
           return float(cleaned)
       except ValueError:
           return 0.0
   
   def validate_date(date_string):
       """Check if date string is valid (YYYY-MM-DD format)."""
       if len(date_string) != 10:
           return False
       
       parts = date_string.split("-")
       if len(parts) != 3:
           return False
       
       try:
           year = int(parts[0])
           month = int(parts[1])
           day = int(parts[2])
           
           return (1900 <= year <= 2100 and 
                   1 <= month <= 12 and 
                   1 <= day <= 31)
       except ValueError:
           return False
   ```
   
   **Statistical Calculations**:
   ```python
   def calculate_statistics(numbers):
       """Calculate basic statistics for a list of numbers."""
       if not numbers:
           return {
               "count": 0,
               "mean": 0,
               "median": 0,
               "min": 0,
               "max": 0,
               "sum": 0
           }
       
       # Sort for median calculation
       sorted_numbers = sorted(numbers)
       count = len(sorted_numbers)
       
       # Calculate mean
       total = sum(sorted_numbers)
       mean = total / count
       
       # Calculate median
       if count % 2 == 0:
           median = (sorted_numbers[count//2 - 1] + sorted_numbers[count//2]) / 2
       else:
           median = sorted_numbers[count//2]
       
       return {
           "count": count,
           "mean": mean,
           "median": median,
           "min": sorted_numbers[0],
           "max": sorted_numbers[-1],
           "sum": total
       }
   ```
   
   **Text-Based Visualization**:
   ```python
   def create_bar_chart(data, max_width=50):
       """Create horizontal bar chart from data."""
       if not data:
           return "No data to display"
       
       # Find maximum value for scaling
       max_value = max(data.values())
       if max_value == 0:
           return "All values are zero"
       
       # Build chart
       chart_lines = []
       chart_lines.append("=== Bar Chart ===")
       
       for label, value in data.items():
           # Calculate bar width
           bar_width = int((value / max_value) * max_width)
           bar = "█" * bar_width
           
           # Format line
           line = f"{label:<15} {bar} {value}"
           chart_lines.append(line)
       
       return "\n".join(chart_lines)
   ```

4. **AI Partnership: Data Analysis Assistance** (7 min)
   - Getting help with data cleaning:
     - "How do I handle missing values in this dataset?"
     - "What's the best way to parse dates in different formats?"
     - "How can I detect outliers in my data?"
   - Statistical analysis guidance:
     - "Which statistical measure is best for this data?"
     - "How do I interpret these results?"
     - "What patterns should I look for?"
   - Visualization advice:
     - "How can I best display this data?"
     - "What chart type suits my data?"
     - "How do I make insights clear?"

5. **Integration: Real-World Applications** (3 min)
   - Business analytics and reporting
   - Scientific data processing
   - Financial analysis
   - Academic research
   - Personal productivity tracking

**Key Demonstrations:**
- Live CSV file processing
- Data cleaning challenges
- Statistical calculation examples
- Text-based visualization creation

#### Week 9 Lab: Hands-On Data Analysis
**Duration:** 2 hours

**Hour 1: Data Processing Fundamentals**

1. **CSV File Operations** (20 min)
   - Read various CSV formats
   - Handle different delimiters
   - Process headers correctly
   - Export data to CSV

2. **Data Cleaning Workshop** (20 min)
   - Fix inconsistent formats
   - Handle missing values
   - Validate data types
   - Remove duplicates

3. **Data Transformation** (20 min)
   - Convert data types
   - Normalize values
   - Group and aggregate data
   - Filter based on criteria

**Hour 2: Analysis and Visualization**

1. **Statistical Analysis** (20 min)
   - Calculate descriptive statistics
   - Find trends and patterns
   - Compare different groups
   - Identify outliers

2. **Creating Visualizations** (20 min)
   - Build bar charts
   - Create histograms
   - Design data tables
   - Generate summary reports

3. **Complete Analysis Pipeline** (20 min)
   - Load real dataset
   - Clean and validate
   - Analyze patterns
   - Present findings

**Lab Deliverables:**
- Working CSV processor
- Data cleaning functions
- Statistical analysis tools
- Visualization generator

### Assessment Components

#### Formative Assessments

1. **CSV Processing Quiz**
   - File format understanding
   - Parsing strategies
   - Error handling approaches
   - Data validation methods

2. **Statistical Concepts**
   - Mean vs median usage
   - Understanding distributions
   - Interpreting results
   - Choosing appropriate measures

3. **Data Cleaning Challenges**
   - Identify data quality issues
   - Propose cleaning strategies
   - Handle edge cases
   - Validate results

#### Summative Assessment

**Week 9 Project: Sales Data Analyzer**
Create a comprehensive sales analysis system:
- Load sales data from CSV files
- Clean and validate all entries
- Calculate sales statistics by:
  - Product category
  - Time period
  - Sales representative
  - Geographic region
- Generate insights:
  - Best-selling products
  - Sales trends over time
  - Top performing representatives
  - Regional comparisons
- Create visualizations:
  - Sales bar charts
  - Trend line displays
  - Comparison tables
  - Summary dashboards
- Export processed data and reports

**Example Output**:
```
SALES ANALYSIS REPORT - Q4 2023
================================

Total Sales: $1,234,567.89
Transactions: 5,432
Average Sale: $227.34

Top Products:
Electronics  ████████████████████ $456,789 (37%)
Clothing     ███████████████      $345,678 (28%)
Home         ██████████           $234,567 (19%)
Sports       ████████             $197,533 (16%)

Monthly Trend:
October      ████████████         $378,901
November     ████████████████     $456,789
December     █████████████████    $398,877

Top Sales Rep: Jane Smith ($123,456)
Best Region: Northeast (42% of sales)
```

### Common Pitfalls to Avoid

1. **CSV Parsing Issues**
   - Not handling quotes properly
   - Assuming consistent formatting
   - Ignoring encoding problems
   - Missing edge cases

2. **Data Cleaning Mistakes**
   - Over-cleaning (removing valid data)
   - Under-cleaning (leaving errors)
   - Not documenting changes
   - Inconsistent cleaning rules

3. **Statistical Errors**
   - Using mean with outliers
   - Ignoring data distribution
   - Misinterpreting results
   - Calculation errors

4. **Visualization Problems**
   - Unclear representations
   - Wrong chart types
   - Missing labels
   - Poor scaling

### Instructor Notes

#### Pacing Considerations
- CSV parsing can be tricky - allow extra time
- Students may struggle with nested data structures
- Statistical concepts need clear explanation
- Visualization requires creativity

#### Key Demonstrations
1. **Live Data Processing**
   - Show real CSV file with issues
   - Debug parsing problems together
   - Clean data step by step

2. **Statistical Analysis**
   - Calculate by hand first
   - Show code implementation
   - Interpret results together

3. **Visualization Design**
   - Start with simple bar chart
   - Build complexity gradually
   - Emphasize clarity over complexity

#### Discussion Prompts
- "What makes data 'dirty'?"
- "When should we use median vs mean?"
- "How do we spot patterns in numbers?"
- "What story does this data tell?"

### Success Metrics
- 90% can read and parse CSV files correctly
- 85% can clean and validate data appropriately
- 80% can calculate basic statistics accurately
- 75% can create clear visualizations
- All students complete working data analyzer

### Required Resources
- Python environment (Colab)
- Sample CSV datasets
- Data cleaning guidelines
- Statistical reference sheet
- Visualization examples

### Homework Assignment
1. Analyze personal finance data
2. Create monthly spending report
3. Identify spending patterns
4. Generate recommendations

### Looking Ahead
Week 10 will introduce:
- Error handling with try/except
- Module imports and organization
- Code reusability
- Building libraries

### Special Considerations

#### Real-World Datasets
Use authentic data with:
- Realistic inconsistencies
- Missing values
- Format variations
- Actual business scenarios

#### Google Colab Considerations
- File upload mechanisms
- Data size limitations
- Visualization constraints
- Output formatting

#### Statistical Literacy
Balance between:
- Mathematical accuracy
- Practical understanding
- Code implementation
- Result interpretation