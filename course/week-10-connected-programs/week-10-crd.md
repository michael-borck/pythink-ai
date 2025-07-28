# Week 10: Connected Programs
## Course Requirements Document (CRD)

### Overview

Week 10 introduces students to building programs that connect with the outside world through APIs, web services, and external data sources. Students learn professional error handling, working with JSON data, and building resilient applications that gracefully handle failures.

**Duration**: 3 hours (1 hour lecture, 2 hours lab)
**Prerequisites**: Weeks 1-9 (especially file operations and data analysis)

---

## Learning Objectives

By the end of Week 10, students will be able to:

1. **Error Handling Mastery**
   - Implement try/except blocks for robust error handling
   - Understand different exception types and when to catch them
   - Create meaningful error messages for users
   - Handle file, network, and data conversion errors

2. **JSON Data Processing**
   - Parse JSON data from external sources
   - Convert between Python dictionaries and JSON format
   - Handle nested JSON structures
   - Validate and clean JSON data

3. **External Service Integration**
   - Understand API concepts and REST principles
   - Make HTTP requests to web APIs
   - Handle API authentication and parameters
   - Process API responses and error codes

4. **Professional Development Practices**
   - Build fault-tolerant applications
   - Implement graceful degradation
   - Provide informative user feedback
   - Debug network and data issues

5. **AI Partnership for External Integrations**
   - Use AI to understand API documentation
   - Get help with error handling strategies
   - Debug connection and data issues
   - Optimize API usage patterns

---

## Session Breakdown

### 1. Opening Hook: "The Connected World" (10 min)

**Scenario**: Your weather app won't load this morning. Why?

Show students a broken app, then reveal:
- App needs internet weather data
- Service could be down
- API key might be expired
- Network connection issues
- Server returns unexpected data

**Key insight**: Modern apps are interconnected - we need to handle when connections fail!

### 2. Computational Thinking: Error Handling & External Systems (20 min)

**Core Concepts**:
- **Defensive Programming**: Assume things will go wrong
- **Graceful Degradation**: App works even when external services fail
- **User Experience**: Clear feedback when things break
- **Data Validation**: Never trust external data

**Error Handling Mindset**:
```python
# Instead of hoping it works:
data = get_weather_data()

# Plan for failure:
try:
    data = get_weather_data()
except NetworkError:
    data = load_cached_weather()
except InvalidResponse:
    data = {"error": "Weather service unavailable"}
```

### 3. From Concepts to Code: Building Connected Programs (25 min)

**Introduction to try/except**:
- Basic syntax and structure
- Common exception types
- Multiple exception handling
- Error message design

**JSON Data Processing**:
- Working with json module
- Converting dictionaries to/from JSON
- Handling malformed JSON
- Nested data access

**HTTP Requests** (Simplified):
- Using urllib module (built-in)
- Making GET requests
- Handling response codes
- Parameter passing

### 4. AI Partnership: Connected Programming (10 min)

**Effective prompts for external integrations**:
- "Help me understand this API documentation"
- "My request returns error 403, what does this mean?"
- "How do I handle when the JSON response is missing a field?"
- "What exceptions should I catch for network requests?"

**AI debugging for connections**:
- Show AI exact error messages
- Include relevant code context
- Ask for fallback strategies
- Get help interpreting HTTP status codes

### 5. Real-World Applications (5 min)

**Where connected programs matter**:
- Weather apps fetching forecasts
- News apps getting latest articles
- Social media integrating with platforms
- E-commerce checking payment services
- Games connecting to leaderboards

---

## Code Constraints

**Week 10 introduces**:
- `try` and `except` statements
- `json` module for JSON processing
- `urllib.request` for HTTP requests
- Exception types: `ValueError`, `TypeError`, `KeyError`, `ConnectionError`

**Still avoiding**:
- `requests` library (use built-in urllib)
- Complex authentication (OAuth, JWT)
- Async/await patterns
- Multiple threads
- Database connections

**Building on previous weeks**:
- File operations (Week 7) for caching
- Dictionaries (Week 6) for JSON data
- Functions (Week 5) for modular error handling
- Data analysis (Week 9) for processing API responses

---

## Assessment Integration

### Formative Assessment
- Error handling implementation
- JSON parsing accuracy
- API integration functionality
- User experience with failures

### Summative Assessment
- Complete weather app with error handling
- Multiple data source integration
- Professional error messages
- Graceful failure management

---

## AI Integration Themes

1. **API Documentation Analysis**
   - "Explain this API endpoint documentation"
   - "What parameters are required vs optional?"
   - "How do I authenticate with this service?"

2. **Error Handling Strategy**
   - "What exceptions should I catch for file operations?"
   - "How do I provide helpful error messages to users?"
   - "When should I retry vs fail immediately?"

3. **JSON Data Processing**
   - "How do I safely access nested JSON fields?"
   - "What's the best way to validate JSON structure?"
   - "Help me convert this complex dictionary to JSON"

4. **Debugging Connection Issues**
   - "My API request returns 401 error, what should I check?"
   - "How do I debug network timeout issues?"
   - "What causes 'SSL certificate verification failed'?"

---

## Project Integration

**Week 10 Project**: Weather Information App
- Fetches data from weather API
- Handles network failures gracefully
- Caches data locally
- Provides user-friendly error messages
- Displays data in multiple formats

**Skills demonstrated**:
- Professional error handling
- JSON data processing
- External API integration
- User experience design
- AI-assisted debugging

---

## Success Criteria

Students successfully complete Week 10 when they can:

1. **Implement robust error handling**
   - Use try/except appropriately
   - Catch specific exception types
   - Provide meaningful error messages
   - Handle multiple failure scenarios

2. **Process JSON data confidently**
   - Parse JSON from external sources
   - Navigate nested data structures
   - Handle missing or invalid data
   - Convert between Python and JSON formats

3. **Integrate external services**
   - Make HTTP requests to APIs
   - Handle response codes properly
   - Pass parameters correctly
   - Process API responses

4. **Build professional applications**
   - Create fault-tolerant programs
   - Implement graceful degradation
   - Provide excellent user feedback
   - Debug connection issues effectively

5. **Leverage AI for integration challenges**
   - Understand API documentation with AI help
   - Debug connection problems systematically
   - Implement suggested error handling patterns
   - Optimize API usage based on AI recommendations

---

## Preparation for Week 11

Week 11 will introduce:
- Interactive user interfaces
- Menu-driven applications
- Input validation and sanitization
- State management
- Building complete interactive systems

The error handling and external data skills from Week 10 provide the foundation for building robust interactive applications that can handle user errors and external service failures gracefully.