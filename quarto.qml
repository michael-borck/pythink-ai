project:
  type: book
  output-dir: _book

book:
  title: "Python Programming: Learning WITH AI"
  subtitle: "A 12-Week Course"
  author: "Your Name"
  date: today
  chapters:
    - index.qmd
    - syllabus.qmd
    - schedule.qmd
    - part: "Course Materials"
      chapters:
        - weeks/week-01/index.qmd
        - weeks/week-02/index.qmd
        # ... add more as created

format:
  html:
    theme: cosmo
    toc: true
    toc-depth: 3
