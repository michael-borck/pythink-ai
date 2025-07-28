# Week 12 Solutions and Example Code

## Lab Exercise Solutions

### Exercise 1: Temperature Converter Solution

```python
import tkinter as tk
from tkinter import messagebox

class TemperatureConverter:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Temperature Converter")
        self.window.geometry("400x200")
        
        # Title
        title_label = tk.Label(self.window, text="Temperature Converter",
                              font=("Arial", 16, "bold"))
        title_label.pack(pady=10)
        
        # Input frame
        input_frame = tk.Frame(self.window)
        input_frame.pack(pady=10)
        
        tk.Label(input_frame, text="Temperature:").pack(side=tk.LEFT, padx=5)
        self.temp_entry = tk.Entry(input_frame, width=10)
        self.temp_entry.pack(side=tk.LEFT, padx=5)
        
        # Radio buttons for conversion type
        self.conversion_type = tk.StringVar(value="c_to_f")
        
        radio_frame = tk.Frame(self.window)
        radio_frame.pack(pady=10)
        
        tk.Radiobutton(radio_frame, text="Celsius to Fahrenheit",
                      variable=self.conversion_type,
                      value="c_to_f").pack(side=tk.LEFT, padx=10)
        tk.Radiobutton(radio_frame, text="Fahrenheit to Celsius",
                      variable=self.conversion_type,
                      value="f_to_c").pack(side=tk.LEFT, padx=10)
        
        # Convert button
        convert_btn = tk.Button(self.window, text="Convert",
                               command=self.convert_temperature,
                               bg="blue", fg="white", font=("Arial", 12))
        convert_btn.pack(pady=10)
        
        # Result label
        self.result_label = tk.Label(self.window, text="",
                                    font=("Arial", 14))
        self.result_label.pack(pady=10)
        
        # Bind Enter key to convert
        self.window.bind('<Return>', lambda e: self.convert_temperature())
    
    def convert_temperature(self):
        try:
            temp = float(self.temp_entry.get())
            
            if self.conversion_type.get() == "c_to_f":
                result = (temp * 9/5) + 32
                self.result_label.config(
                    text=f"{temp}°C = {result:.1f}°F",
                    fg="green"
                )
            else:
                result = (temp - 32) * 5/9
                self.result_label.config(
                    text=f"{temp}°F = {result:.1f}°C",
                    fg="green"
                )
        except ValueError:
            messagebox.showerror("Error", "Please enter a valid number")
            self.temp_entry.delete(0, tk.END)
            self.result_label.config(text="")
    
    def run(self):
        self.window.mainloop()

if __name__ == "__main__":
    app = TemperatureConverter()
    app.run()
```

### Exercise 2: Simple Calculator Solution

```python
import tkinter as tk
from tkinter import messagebox

class Calculator:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Simple Calculator")
        self.window.geometry("300x400")
        self.window.resizable(False, False)
        
        self.current_value = ""
        self.total = 0
        self.operation = None
        self.new_number = True
        
        self.create_widgets()
    
    def create_widgets(self):
        # Display
        self.display = tk.Entry(self.window, font=("Arial", 20),
                               justify="right", state="readonly")
        self.display.pack(pady=10, padx=10, fill=tk.X)
        
        # Button frame
        button_frame = tk.Frame(self.window)
        button_frame.pack(padx=10, pady=10)
        
        # Create buttons
        buttons = [
            ('7', 1, 0), ('8', 1, 1), ('9', 1, 2), ('/', 1, 3),
            ('4', 2, 0), ('5', 2, 1), ('6', 2, 2), ('*', 2, 3),
            ('1', 3, 0), ('2', 3, 1), ('3', 3, 2), ('-', 3, 3),
            ('0', 4, 0), ('.', 4, 1), ('=', 4, 2), ('+', 4, 3),
            ('C', 5, 0), ('CE', 5, 1)
        ]
        
        for (text, row, col) in buttons:
            btn = tk.Button(button_frame, text=text, width=5, height=2,
                           font=("Arial", 14))
            btn.grid(row=row, column=col, padx=2, pady=2)
            
            if text in '0123456789.':
                btn.config(command=lambda t=text: self.number_pressed(t))
            elif text in '+-*/':
                btn.config(command=lambda t=text: self.operation_pressed(t))
            elif text == '=':
                btn.config(command=self.equals_pressed, bg="green", fg="white")
            elif text == 'C':
                btn.config(command=self.clear_all, bg="red", fg="white")
            elif text == 'CE':
                btn.config(command=self.clear_entry)
    
    def update_display(self):
        self.display.config(state="normal")
        self.display.delete(0, tk.END)
        self.display.insert(0, self.current_value if self.current_value else "0")
        self.display.config(state="readonly")
    
    def number_pressed(self, number):
        if self.new_number:
            self.current_value = ""
            self.new_number = False
        
        if number == '.' and '.' in self.current_value:
            return
        
        self.current_value += number
        self.update_display()
    
    def operation_pressed(self, op):
        if self.current_value:
            if self.operation:
                self.equals_pressed()
            else:
                self.total = float(self.current_value)
            
            self.operation = op
            self.new_number = True
    
    def equals_pressed(self):
        if self.current_value and self.operation:
            try:
                current = float(self.current_value)
                
                if self.operation == '+':
                    self.total += current
                elif self.operation == '-':
                    self.total -= current
                elif self.operation == '*':
                    self.total *= current
                elif self.operation == '/' and current != 0:
                    self.total /= current
                else:
                    messagebox.showerror("Error", "Cannot divide by zero")
                    return
                
                self.current_value = str(self.total)
                self.update_display()
                self.operation = None
                self.new_number = True
                
            except Exception as e:
                messagebox.showerror("Error", f"Calculation error: {e}")
    
    def clear_all(self):
        self.current_value = ""
        self.total = 0
        self.operation = None
        self.new_number = True
        self.update_display()
    
    def clear_entry(self):
        self.current_value = ""
        self.new_number = True
        self.update_display()
    
    def run(self):
        # Keyboard bindings
        self.window.bind('<Key>', self.key_pressed)
        self.window.bind('<Return>', lambda e: self.equals_pressed())
        self.window.bind('<Escape>', lambda e: self.clear_all())
        
        self.update_display()
        self.window.mainloop()
    
    def key_pressed(self, event):
        if event.char in '0123456789.':
            self.number_pressed(event.char)
        elif event.char in '+-*/':
            self.operation_pressed(event.char)

if __name__ == "__main__":
    calc = Calculator()
    calc.run()
```

### Exercise 3: Todo List Manager Solution

```python
import tkinter as tk
from tkinter import messagebox, ttk
import json
import os
from datetime import datetime

class TodoListManager:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Todo List Manager")
        self.window.geometry("600x500")
        
        self.tasks = []
        self.data_file = "tasks.json"
        
        self.create_widgets()
        self.load_tasks()
    
    def create_widgets(self):
        # Title
        title_label = tk.Label(self.window, text="My Todo List",
                              font=("Arial", 20, "bold"))
        title_label.pack(pady=10)
        
        # Input frame
        input_frame = tk.Frame(self.window)
        input_frame.pack(pady=10, padx=20, fill=tk.X)
        
        self.task_entry = tk.Entry(input_frame, font=("Arial", 12))
        self.task_entry.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=(0, 10))
        self.task_entry.bind('<Return>', lambda e: self.add_task())
        
        # Category selection
        self.category_var = tk.StringVar(value="Personal")
        categories = ["Personal", "Work", "Shopping", "Health", "Other"]
        self.category_menu = ttk.Combobox(input_frame, textvariable=self.category_var,
                                         values=categories, width=15, state="readonly")
        self.category_menu.pack(side=tk.LEFT, padx=(0, 10))
        
        # Priority selection
        self.priority_var = tk.StringVar(value="Medium")
        priorities = ["High", "Medium", "Low"]
        self.priority_menu = ttk.Combobox(input_frame, textvariable=self.priority_var,
                                         values=priorities, width=10, state="readonly")
        self.priority_menu.pack(side=tk.LEFT, padx=(0, 10))
        
        add_btn = tk.Button(input_frame, text="Add Task", command=self.add_task,
                           bg="green", fg="white", font=("Arial", 10, "bold"))
        add_btn.pack(side=tk.LEFT)
        
        # Filter frame
        filter_frame = tk.Frame(self.window)
        filter_frame.pack(pady=5, padx=20, fill=tk.X)
        
        tk.Label(filter_frame, text="Filter:").pack(side=tk.LEFT, padx=(0, 5))
        self.filter_var = tk.StringVar(value="All")
        filter_options = ["All", "Active", "Completed", "Personal", "Work", 
                         "Shopping", "Health", "Other"]
        filter_menu = ttk.Combobox(filter_frame, textvariable=self.filter_var,
                                   values=filter_options, width=15, state="readonly")
        filter_menu.pack(side=tk.LEFT)
        filter_menu.bind('<<ComboboxSelected>>', lambda e: self.refresh_task_list())
        
        # Task list frame
        list_frame = tk.Frame(self.window)
        list_frame.pack(pady=10, padx=20, fill=tk.BOTH, expand=True)
        
        # Scrollbar
        scrollbar = tk.Scrollbar(list_frame)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Task listbox
        self.task_listbox = tk.Listbox(list_frame, font=("Arial", 10),
                                      yscrollcommand=scrollbar.set,
                                      selectmode=tk.SINGLE)
        self.task_listbox.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        scrollbar.config(command=self.task_listbox.yview)
        
        # Bind double-click to toggle completion
        self.task_listbox.bind('<Double-Button-1>', lambda e: self.toggle_task())
        
        # Action buttons
        action_frame = tk.Frame(self.window)
        action_frame.pack(pady=10)
        
        tk.Button(action_frame, text="Toggle Complete", command=self.toggle_task,
                 bg="blue", fg="white").pack(side=tk.LEFT, padx=5)
        tk.Button(action_frame, text="Delete Task", command=self.delete_task,
                 bg="red", fg="white").pack(side=tk.LEFT, padx=5)
        tk.Button(action_frame, text="Clear Completed", command=self.clear_completed,
                 bg="orange", fg="white").pack(side=tk.LEFT, padx=5)
        
        # Status bar
        self.status_label = tk.Label(self.window, text="", relief=tk.SUNKEN,
                                    anchor=tk.W)
        self.status_label.pack(side=tk.BOTTOM, fill=tk.X)
    
    def add_task(self):
        task_text = self.task_entry.get().strip()
        if not task_text:
            messagebox.showwarning("Warning", "Please enter a task!")
            return
        
        task = {
            "id": len(self.tasks) + 1,
            "text": task_text,
            "category": self.category_var.get(),
            "priority": self.priority_var.get(),
            "completed": False,
            "created": datetime.now().strftime("%Y-%m-%d %H:%M"),
            "completed_date": None
        }
        
        self.tasks.append(task)
        self.task_entry.delete(0, tk.END)
        self.refresh_task_list()
        self.save_tasks()
        self.update_status()
    
    def toggle_task(self):
        selection = self.task_listbox.curselection()
        if not selection:
            return
        
        index = selection[0]
        filtered_tasks = self.get_filtered_tasks()
        if index < len(filtered_tasks):
            task = filtered_tasks[index]
            task["completed"] = not task["completed"]
            task["completed_date"] = datetime.now().strftime("%Y-%m-%d %H:%M") if task["completed"] else None
            self.refresh_task_list()
            self.save_tasks()
            self.update_status()
    
    def delete_task(self):
        selection = self.task_listbox.curselection()
        if not selection:
            messagebox.showwarning("Warning", "Please select a task to delete!")
            return
        
        if messagebox.askyesno("Confirm", "Are you sure you want to delete this task?"):
            index = selection[0]
            filtered_tasks = self.get_filtered_tasks()
            if index < len(filtered_tasks):
                task_to_delete = filtered_tasks[index]
                self.tasks.remove(task_to_delete)
                self.refresh_task_list()
                self.save_tasks()
                self.update_status()
    
    def clear_completed(self):
        completed_count = sum(1 for task in self.tasks if task["completed"])
        if completed_count == 0:
            messagebox.showinfo("Info", "No completed tasks to clear!")
            return
        
        if messagebox.askyesno("Confirm", f"Clear {completed_count} completed tasks?"):
            self.tasks = [task for task in self.tasks if not task["completed"]]
            self.refresh_task_list()
            self.save_tasks()
            self.update_status()
    
    def get_filtered_tasks(self):
        filter_value = self.filter_var.get()
        
        if filter_value == "All":
            return self.tasks
        elif filter_value == "Active":
            return [task for task in self.tasks if not task["completed"]]
        elif filter_value == "Completed":
            return [task for task in self.tasks if task["completed"]]
        else:  # Category filter
            return [task for task in self.tasks if task["category"] == filter_value]
    
    def refresh_task_list(self):
        self.task_listbox.delete(0, tk.END)
        
        filtered_tasks = self.get_filtered_tasks()
        
        for task in filtered_tasks:
            priority_symbol = {"High": "⚡", "Medium": "●", "Low": "○"}[task["priority"]]
            status = "✓" if task["completed"] else "☐"
            display_text = f"{status} {priority_symbol} [{task['category']}] {task['text']}"
            
            self.task_listbox.insert(tk.END, display_text)
            
            # Color coding
            index = self.task_listbox.size() - 1
            if task["completed"]:
                self.task_listbox.itemconfig(index, fg="gray")
            elif task["priority"] == "High":
                self.task_listbox.itemconfig(index, fg="red")
            elif task["priority"] == "Low":
                self.task_listbox.itemconfig(index, fg="blue")
    
    def update_status(self):
        total = len(self.tasks)
        completed = sum(1 for task in self.tasks if task["completed"])
        active = total - completed
        self.status_label.config(text=f"Total: {total} | Active: {active} | Completed: {completed}")
    
    def save_tasks(self):
        try:
            with open(self.data_file, 'w') as f:
                json.dump(self.tasks, f, indent=2)
        except Exception as e:
            messagebox.showerror("Error", f"Could not save tasks: {e}")
    
    def load_tasks(self):
        if os.path.exists(self.data_file):
            try:
                with open(self.data_file, 'r') as f:
                    self.tasks = json.load(f)
                self.refresh_task_list()
                self.update_status()
            except Exception as e:
                messagebox.showerror("Error", f"Could not load tasks: {e}")
    
    def run(self):
        self.update_status()
        self.window.mainloop()

if __name__ == "__main__":
    app = TodoListManager()
    app.run()
```

### Exercise 4: Multi-Window Application Solution

```python
import tkinter as tk
from tkinter import messagebox, ttk

class MultiWindowApp:
    def __init__(self):
        self.main_window = tk.Tk()
        self.main_window.title("Multi-Window Application")
        self.main_window.geometry("400x300")
        
        self.settings = {
            "theme": "light",
            "font_size": 12,
            "auto_save": True
        }
        
        self.create_main_window()
    
    def create_main_window(self):
        # Title
        title = tk.Label(self.main_window, text="Main Application",
                        font=("Arial", 18, "bold"))
        title.pack(pady=20)
        
        # Buttons
        button_frame = tk.Frame(self.main_window)
        button_frame.pack(pady=20)
        
        tk.Button(button_frame, text="Open Settings",
                 command=self.open_settings_window,
                 width=15, height=2).pack(pady=5)
        
        tk.Button(button_frame, text="Open About",
                 command=self.open_about_window,
                 width=15, height=2).pack(pady=5)
        
        tk.Button(button_frame, text="New Document",
                 command=self.open_document_window,
                 width=15, height=2).pack(pady=5)
        
        # Status
        self.status_label = tk.Label(self.main_window, 
                                    text=f"Theme: {self.settings['theme']}",
                                    relief=tk.SUNKEN, anchor=tk.W)
        self.status_label.pack(side=tk.BOTTOM, fill=tk.X)
    
    def open_settings_window(self):
        settings_window = tk.Toplevel(self.main_window)
        settings_window.title("Settings")
        settings_window.geometry("350x400")
        settings_window.transient(self.main_window)
        settings_window.grab_set()
        
        # Theme section
        theme_frame = tk.LabelFrame(settings_window, text="Theme", padx=10, pady=10)
        theme_frame.pack(pady=10, padx=20, fill=tk.X)
        
        theme_var = tk.StringVar(value=self.settings["theme"])
        tk.Radiobutton(theme_frame, text="Light Theme",
                      variable=theme_var, value="light").pack(anchor=tk.W)
        tk.Radiobutton(theme_frame, text="Dark Theme",
                      variable=theme_var, value="dark").pack(anchor=tk.W)
        
        # Font size section
        font_frame = tk.LabelFrame(settings_window, text="Font Size", padx=10, pady=10)
        font_frame.pack(pady=10, padx=20, fill=tk.X)
        
        font_var = tk.IntVar(value=self.settings["font_size"])
        font_scale = tk.Scale(font_frame, from_=8, to=24, orient=tk.HORIZONTAL,
                             variable=font_var)
        font_scale.pack(fill=tk.X)
        
        # Auto-save section
        auto_frame = tk.LabelFrame(settings_window, text="Options", padx=10, pady=10)
        auto_frame.pack(pady=10, padx=20, fill=tk.X)
        
        auto_var = tk.BooleanVar(value=self.settings["auto_save"])
        tk.Checkbutton(auto_frame, text="Enable Auto-save",
                      variable=auto_var).pack(anchor=tk.W)
        
        # Buttons
        button_frame = tk.Frame(settings_window)
        button_frame.pack(pady=20)
        
        def apply_settings():
            self.settings["theme"] = theme_var.get()
            self.settings["font_size"] = font_var.get()
            self.settings["auto_save"] = auto_var.get()
            self.status_label.config(text=f"Theme: {self.settings['theme']}")
            messagebox.showinfo("Success", "Settings applied!")
            settings_window.destroy()
        
        tk.Button(button_frame, text="Apply", command=apply_settings,
                 bg="green", fg="white").pack(side=tk.LEFT, padx=5)
        tk.Button(button_frame, text="Cancel", command=settings_window.destroy,
                 bg="red", fg="white").pack(side=tk.LEFT, padx=5)
    
    def open_about_window(self):
        about_window = tk.Toplevel(self.main_window)
        about_window.title("About")
        about_window.geometry("300x200")
        about_window.resizable(False, False)
        about_window.transient(self.main_window)
        
        # Center the window
        about_window.update_idletasks()
        x = (about_window.winfo_screenwidth() // 2) - (150)
        y = (about_window.winfo_screenheight() // 2) - (100)
        about_window.geometry(f"+{x}+{y}")
        
        # Content
        tk.Label(about_window, text="Multi-Window Application",
                font=("Arial", 14, "bold")).pack(pady=20)
        tk.Label(about_window, text="Version 1.0").pack()
        tk.Label(about_window, text="© 2024 Python Course").pack()
        tk.Label(about_window, text="Demonstrating window management").pack(pady=10)
        
        tk.Button(about_window, text="OK", command=about_window.destroy,
                 width=10).pack(pady=20)
    
    def open_document_window(self):
        doc_window = tk.Toplevel(self.main_window)
        doc_window.title("New Document")
        doc_window.geometry("500x400")
        
        # Menu bar for document window
        menubar = tk.Menu(doc_window)
        doc_window.config(menu=menubar)
        
        file_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="File", menu=file_menu)
        file_menu.add_command(label="Save", command=lambda: self.save_document(text_widget))
        file_menu.add_separator()
        file_menu.add_command(label="Close", command=doc_window.destroy)
        
        # Text widget
        text_widget = tk.Text(doc_window, wrap=tk.WORD)
        text_widget.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        # Add some default text
        text_widget.insert("1.0", "Start typing your document here...")
    
    def save_document(self, text_widget):
        content = text_widget.get("1.0", tk.END)
        messagebox.showinfo("Save", "Document saved! (Simulation)")
    
    def run(self):
        self.main_window.mainloop()

if __name__ == "__main__":
    app = MultiWindowApp()
    app.run()
```

## Assessment Solutions

### GUI Fundamentals Assessment - Widget Demo Solution

```python
import tkinter as tk
from tkinter import ttk, messagebox

def create_widget_demo():
    """Create a window demonstrating various tkinter widgets."""
    
    window = tk.Tk()
    window.title("Widget Demonstration")
    window.geometry("500x600")
    
    # 1. Label with formatting
    label = tk.Label(window, text="Widget Demonstration",
                    font=("Arial", 16, "bold"), fg="blue")
    label.pack(pady=10)
    
    # 2. Entry with validation
    def validate_number(char):
        return char.isdigit() or char == ""
    
    vcmd = (window.register(validate_number), '%P')
    
    entry_frame = tk.Frame(window)
    entry_frame.pack(pady=10)
    tk.Label(entry_frame, text="Numbers only:").pack(side=tk.LEFT)
    number_entry = tk.Entry(entry_frame, validate='key', validatecommand=vcmd)
    number_entry.pack(side=tk.LEFT, padx=5)
    
    # 3. Button with command
    def show_message():
        messagebox.showinfo("Hello!", "Button was clicked!")
    
    button = tk.Button(window, text="Click Me!", command=show_message,
                      bg="green", fg="white", font=("Arial", 12))
    button.pack(pady=10)
    
    # 4. Combobox with options
    combo_frame = tk.Frame(window)
    combo_frame.pack(pady=10)
    tk.Label(combo_frame, text="Choose option:").pack(side=tk.LEFT)
    combo = ttk.Combobox(combo_frame, values=["Option 1", "Option 2", 
                                              "Option 3", "Option 4", "Option 5"],
                        state="readonly")
    combo.set("Option 1")
    combo.pack(side=tk.LEFT, padx=5)
    
    # 5. Text widget with scrollbar
    text_frame = tk.Frame(window)
    text_frame.pack(pady=10, padx=20, fill=tk.BOTH, expand=True)
    
    scrollbar = tk.Scrollbar(text_frame)
    scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
    
    text_widget = tk.Text(text_frame, height=5, width=40,
                         yscrollcommand=scrollbar.set)
    text_widget.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
    scrollbar.config(command=text_widget.yview)
    text_widget.insert("1.0", "This is a text widget with scrollbar.\n" * 10)
    
    # 6. Checkbutton with variable
    check_var = tk.BooleanVar()
    
    def toggle_widgets():
        state = "normal" if check_var.get() else "disabled"
        button.config(state=state)
        combo.config(state=state)
        number_entry.config(state=state)
    
    checkbutton = tk.Checkbutton(window, text="Enable widgets",
                                variable=check_var, command=toggle_widgets)
    checkbutton.select()
    checkbutton.pack(pady=10)
    
    # 7. Radiobuttons in a group
    radio_frame = tk.LabelFrame(window, text="Choose one:", padx=10, pady=10)
    radio_frame.pack(pady=10, padx=20, fill=tk.X)
    
    radio_var = tk.StringVar(value="option1")
    
    tk.Radiobutton(radio_frame, text="Red", variable=radio_var,
                  value="red", command=lambda: window.config(bg="#ffcccc")).pack(anchor=tk.W)
    tk.Radiobutton(radio_frame, text="Green", variable=radio_var,
                  value="green", command=lambda: window.config(bg="#ccffcc")).pack(anchor=tk.W)
    tk.Radiobutton(radio_frame, text="Blue", variable=radio_var,
                  value="blue", command=lambda: window.config(bg="#ccccff")).pack(anchor=tk.W)
    
    window.mainloop()

# Run the demonstration
create_widget_demo()
```

### Application Design Assessment - Finance Tracker MVC Solution

```python
import tkinter as tk
from tkinter import ttk, messagebox
import json
from datetime import datetime
from abc import ABC, abstractmethod

class Model:
    """Handles data and business logic."""
    def __init__(self):
        self.transactions = []
        self.categories = ["Food", "Transport", "Entertainment", "Bills", "Other"]
        self.data_file = "finance_data.json"
        self.load_data()
    
    def add_transaction(self, amount, category, description, date=None):
        """Add a new transaction."""
        try:
            # Validation
            if not amount or float(amount) <= 0:
                return False, "Amount must be positive"
            
            if not description.strip():
                return False, "Description is required"
            
            # Create transaction
            transaction = {
                "id": max([t["id"] for t in self.transactions], default=0) + 1,
                "amount": float(amount),
                "category": category,
                "description": description.strip(),
                "date": date or datetime.now().strftime("%Y-%m-%d"),
                "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            }
            
            self.transactions.append(transaction)
            self.save_data()
            return True, "Transaction added successfully"
            
        except ValueError:
            return False, "Invalid amount format"
        except Exception as e:
            return False, f"Error: {str(e)}"
    
    def get_transactions(self, filter_category=None, filter_date=None):
        """Get transactions with optional filtering."""
        filtered = self.transactions
        
        if filter_category and filter_category != "All":
            filtered = [t for t in filtered if t["category"] == filter_category]
        
        if filter_date:
            filtered = [t for t in filtered if t["date"] == filter_date]
        
        return sorted(filtered, key=lambda x: x["timestamp"], reverse=True)
    
    def calculate_summary(self):
        """Calculate financial summary."""
        if not self.transactions:
            return {
                "total_income": 0,
                "total_expenses": 0,
                "balance": 0,
                "by_category": {}
            }
        
        total = sum(t["amount"] for t in self.transactions)
        
        by_category = {}
        for category in self.categories:
            cat_total = sum(t["amount"] for t in self.transactions 
                          if t["category"] == category)
            if cat_total > 0:
                by_category[category] = cat_total
        
        return {
            "total_income": 0,  # Could be extended for income tracking
            "total_expenses": total,
            "balance": -total,  # Negative because these are expenses
            "by_category": by_category
        }
    
    def delete_transaction(self, transaction_id):
        """Delete a transaction by ID."""
        self.transactions = [t for t in self.transactions if t["id"] != transaction_id]
        self.save_data()
    
    def save_data(self):
        """Save transactions to file."""
        try:
            with open(self.data_file, 'w') as f:
                json.dump(self.transactions, f, indent=2)
        except Exception:
            pass  # In production, would log this error
    
    def load_data(self):
        """Load transactions from file."""
        try:
            with open(self.data_file, 'r') as f:
                self.transactions = json.load(f)
        except:
            self.transactions = []

class View:
    """Handles all UI elements and display."""
    def __init__(self, root):
        self.root = root
        self.root.title("Personal Finance Tracker")
        self.root.geometry("800x600")
        
        # UI Components references
        self.transaction_tree = None
        self.amount_entry = None
        self.category_var = None
        self.description_entry = None
        self.filter_var = None
        self.summary_labels = {}
        
        self.setup_ui()
    
    def setup_ui(self):
        """Create the complete UI."""
        # Create menu bar
        self.create_menu_bar()
        
        # Main container
        main_container = tk.Frame(self.root)
        main_container.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        # Left panel - Input and summary
        left_panel = tk.Frame(main_container)
        left_panel.pack(side=tk.LEFT, fill=tk.Y, padx=(0, 10))
        
        # Input section
        self.create_input_section(left_panel)
        
        # Summary section
        self.create_summary_section(left_panel)
        
        # Right panel - Transaction list
        right_panel = tk.Frame(main_container)
        right_panel.pack(side=tk.RIGHT, fill=tk.BOTH, expand=True)
        
        self.create_transaction_list(right_panel)
        
        # Status bar
        self.status_bar = tk.Label(self.root, text="Ready", relief=tk.SUNKEN, anchor=tk.W)
        self.status_bar.pack(side=tk.BOTTOM, fill=tk.X)
    
    def create_menu_bar(self):
        """Create application menu bar."""
        menubar = tk.Menu(self.root)
        self.root.config(menu=menubar)
        
        # File menu
        file_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="File", menu=file_menu)
        file_menu.add_command(label="New Transaction", accelerator="Ctrl+N")
        file_menu.add_command(label="Export...", accelerator="Ctrl+E")
        file_menu.add_separator()
        file_menu.add_command(label="Exit", command=self.root.quit)
        
        # View menu
        view_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="View", menu=view_menu)
        view_menu.add_command(label="Refresh", accelerator="F5")
        view_menu.add_command(label="Clear Filter")
        
        # Help menu
        help_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Help", menu=help_menu)
        help_menu.add_command(label="About")
    
    def create_input_section(self, parent):
        """Create transaction input section."""
        input_frame = tk.LabelFrame(parent, text="Add Transaction", padx=10, pady=10)
        input_frame.pack(fill=tk.X, pady=(0, 10))
        
        # Amount
        tk.Label(input_frame, text="Amount:").grid(row=0, column=0, sticky=tk.W, pady=5)
        self.amount_entry = tk.Entry(input_frame, width=20)
        self.amount_entry.grid(row=0, column=1, pady=5)
        
        # Category
        tk.Label(input_frame, text="Category:").grid(row=1, column=0, sticky=tk.W, pady=5)
        self.category_var = tk.StringVar(value="Food")
        category_menu = ttk.Combobox(input_frame, textvariable=self.category_var,
                                    values=["Food", "Transport", "Entertainment", "Bills", "Other"],
                                    state="readonly", width=17)
        category_menu.grid(row=1, column=1, pady=5)
        
        # Description
        tk.Label(input_frame, text="Description:").grid(row=2, column=0, sticky=tk.W, pady=5)
        self.description_entry = tk.Entry(input_frame, width=20)
        self.description_entry.grid(row=2, column=1, pady=5)
        
        # Add button
        self.add_button = tk.Button(input_frame, text="Add Transaction",
                                   bg="green", fg="white", width=17)
        self.add_button.grid(row=3, column=0, columnspan=2, pady=10)
    
    def create_summary_section(self, parent):
        """Create financial summary section."""
        summary_frame = tk.LabelFrame(parent, text="Summary", padx=10, pady=10)
        summary_frame.pack(fill=tk.X)
        
        # Summary labels
        labels = ["Total Expenses:", "Balance:", "Top Category:"]
        for i, label_text in enumerate(labels):
            tk.Label(summary_frame, text=label_text).grid(row=i, column=0, sticky=tk.W, pady=2)
            value_label = tk.Label(summary_frame, text="$0.00", font=("Arial", 10, "bold"))
            value_label.grid(row=i, column=1, sticky=tk.E, pady=2)
            self.summary_labels[label_text] = value_label
    
    def create_transaction_list(self, parent):
        """Create transaction list display."""
        # Filter frame
        filter_frame = tk.Frame(parent)
        filter_frame.pack(fill=tk.X, pady=(0, 5))
        
        tk.Label(filter_frame, text="Filter:").pack(side=tk.LEFT, padx=(0, 5))
        self.filter_var = tk.StringVar(value="All")
        filter_menu = ttk.Combobox(filter_frame, textvariable=self.filter_var,
                                  values=["All", "Food", "Transport", "Entertainment", "Bills", "Other"],
                                  state="readonly", width=15)
        filter_menu.pack(side=tk.LEFT)
        
        # Treeview for transactions
        tree_frame = tk.Frame(parent)
        tree_frame.pack(fill=tk.BOTH, expand=True)
        
        # Scrollbar
        scrollbar = tk.Scrollbar(tree_frame)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Treeview
        self.transaction_tree = ttk.Treeview(tree_frame, columns=("Date", "Category", "Description", "Amount"),
                                           show="tree headings", yscrollcommand=scrollbar.set)
        self.transaction_tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        scrollbar.config(command=self.transaction_tree.yview)
        
        # Configure columns
        self.transaction_tree.column("#0", width=0, stretch=False)
        self.transaction_tree.column("Date", width=100)
        self.transaction_tree.column("Category", width=100)
        self.transaction_tree.column("Description", width=200)
        self.transaction_tree.column("Amount", width=100)
        
        # Headings
        self.transaction_tree.heading("Date", text="Date")
        self.transaction_tree.heading("Category", text="Category")
        self.transaction_tree.heading("Description", text="Description")
        self.transaction_tree.heading("Amount", text="Amount")
        
        # Action buttons
        action_frame = tk.Frame(parent)
        action_frame.pack(fill=tk.X, pady=(5, 0))
        
        self.delete_button = tk.Button(action_frame, text="Delete Selected",
                                      bg="red", fg="white")
        self.delete_button.pack(side=tk.RIGHT)
    
    def refresh_transaction_list(self, transactions):
        """Update the transaction display."""
        # Clear existing items
        for item in self.transaction_tree.get_children():
            self.transaction_tree.delete(item)
        
        # Add transactions
        for transaction in transactions:
            self.transaction_tree.insert("", "end", values=(
                transaction["date"],
                transaction["category"],
                transaction["description"],
                f"${transaction['amount']:.2f}"
            ), tags=(transaction["id"],))
    
    def refresh_summary(self, summary_data):
        """Update the summary display."""
        self.summary_labels["Total Expenses:"].config(
            text=f"${summary_data['total_expenses']:.2f}")
        self.summary_labels["Balance:"].config(
            text=f"${summary_data['balance']:.2f}",
            fg="red" if summary_data['balance'] < 0 else "green")
        
        if summary_data['by_category']:
            top_category = max(summary_data['by_category'].items(), key=lambda x: x[1])
            self.summary_labels["Top Category:"].config(text=top_category[0])
        else:
            self.summary_labels["Top Category:"].config(text="N/A")
    
    def show_error(self, message):
        """Display error message to user."""
        messagebox.showerror("Error", message)
    
    def show_success(self, message):
        """Display success message to user."""
        self.status_bar.config(text=message)
        self.root.after(3000, lambda: self.status_bar.config(text="Ready"))
    
    def clear_inputs(self):
        """Clear input fields."""
        self.amount_entry.delete(0, tk.END)
        self.description_entry.delete(0, tk.END)
        self.category_var.set("Food")
        self.amount_entry.focus()

class Controller:
    """Manages interaction between Model and View."""
    def __init__(self):
        self.root = tk.Tk()
        self.model = Model()
        self.view = View(self.root)
        
        self.bind_events()
        self.load_initial_data()
    
    def bind_events(self):
        """Connect UI events to controller methods."""
        self.view.add_button.config(command=self.add_transaction)
        self.view.delete_button.config(command=self.delete_transaction)
        self.view.filter_var.trace('w', lambda *args: self.filter_transactions())
        
        # Keyboard shortcuts
        self.root.bind('<Control-n>', lambda e: self.view.amount_entry.focus())
        self.root.bind('<F5>', lambda e: self.load_initial_data())
        
        # Enter key in description field adds transaction
        self.view.description_entry.bind('<Return>', lambda e: self.add_transaction())
    
    def add_transaction(self):
        """Handle adding a new transaction."""
        amount = self.view.amount_entry.get()
        category = self.view.category_var.get()
        description = self.view.description_entry.get()
        
        success, message = self.model.add_transaction(amount, category, description)
        
        if success:
            self.view.show_success(message)
            self.view.clear_inputs()
            self.refresh_display()
        else:
            self.view.show_error(message)
    
    def delete_transaction(self):
        """Handle deleting selected transaction."""
        selection = self.view.transaction_tree.selection()
        if not selection:
            self.view.show_error("Please select a transaction to delete")
            return
        
        if messagebox.askyesno("Confirm", "Delete selected transaction?"):
            item = self.view.transaction_tree.item(selection[0])
            transaction_id = item['tags'][0]
            self.model.delete_transaction(int(transaction_id))
            self.refresh_display()
            self.view.show_success("Transaction deleted")
    
    def filter_transactions(self):
        """Handle filtering transactions."""
        self.refresh_display()
    
    def refresh_display(self):
        """Refresh both transaction list and summary."""
        filter_category = self.view.filter_var.get()
        transactions = self.model.get_transactions(
            filter_category if filter_category != "All" else None
        )
        self.view.refresh_transaction_list(transactions)
        
        summary = self.model.calculate_summary()
        self.view.refresh_summary(summary)
    
    def load_initial_data(self):
        """Load data and update view on startup."""
        self.refresh_display()
        self.view.amount_entry.focus()
    
    def run(self):
        """Start the application."""
        self.root.mainloop()

# Application entry point
if __name__ == "__main__":
    app = Controller()
    app.run()
```

## Project Scaffolding Code

### Todo GUI App Starter Template

```python
"""
Professional Todo List GUI Application
Week 12 Final Project Starter Template
"""

import tkinter as tk
from tkinter import messagebox, ttk
import json
import os
from datetime import datetime
from enum import Enum

class Priority(Enum):
    HIGH = "High"
    MEDIUM = "Medium"
    LOW = "Low"

class Category(Enum):
    PERSONAL = "Personal"
    WORK = "Work"
    SHOPPING = "Shopping"
    HEALTH = "Health"
    OTHER = "Other"

class TodoApp:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title("Professional Todo List")
        self.window.geometry("800x600")
        self.window.minsize(600, 400)
        
        # Data
        self.tasks = []
        self.data_file = "todo_tasks.json"
        self.settings_file = "todo_settings.json"
        self.settings = self.load_settings()
        
        # UI References
        self.task_listbox = None
        self.task_entry = None
        self.category_var = None
        self.priority_var = None
        self.filter_var = None
        self.search_var = None
        
        # Setup
        self.setup_ui()
        self.create_menu_bar()
        self.bind_shortcuts()
        self.load_tasks()
        
    def setup_ui(self):
        """Create the main user interface."""
        # TODO: Implement your UI layout here
        # Remember to use frames for organization
        # Create all the required widgets
        pass
    
    def create_menu_bar(self):
        """Create the application menu bar."""
        menubar = tk.Menu(self.window)
        self.window.config(menu=menubar)
        
        # File menu
        file_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="File", menu=file_menu)
        file_menu.add_command(label="New Task", accelerator="Ctrl+N")
        file_menu.add_command(label="Export...", accelerator="Ctrl+E")
        file_menu.add_separator()
        file_menu.add_command(label="Exit", command=self.quit_app)
        
        # Edit menu
        edit_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Edit", menu=edit_menu)
        edit_menu.add_command(label="Delete Task", accelerator="Delete")
        edit_menu.add_command(label="Clear Completed")
        
        # View menu
        view_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="View", menu=view_menu)
        view_menu.add_command(label="Statistics")
        view_menu.add_command(label="Settings")
        
        # Help menu
        help_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Help", menu=help_menu)
        help_menu.add_command(label="User Guide", command=self.show_help)
        help_menu.add_command(label="About", command=self.show_about)
    
    def bind_shortcuts(self):
        """Bind keyboard shortcuts."""
        self.window.bind('<Control-n>', lambda e: self.focus_new_task())
        self.window.bind('<Delete>', lambda e: self.delete_task())
        self.window.bind('<Control-e>', lambda e: self.export_tasks())
        self.window.bind('<F1>', lambda e: self.show_help())
    
    def add_task(self):
        """Add a new task to the list."""
        # TODO: Implement task addition
        # Get values from widgets
        # Validate input
        # Create task dictionary
        # Add to list
        # Save and refresh
        pass
    
    def delete_task(self):
        """Delete the selected task."""
        # TODO: Implement task deletion
        # Get selection
        # Confirm with user
        # Remove from list
        # Save and refresh
        pass
    
    def toggle_task(self):
        """Toggle task completion status."""
        # TODO: Implement task toggling
        pass
    
    def filter_tasks(self):
        """Filter tasks based on selected criteria."""
        # TODO: Implement filtering
        pass
    
    def search_tasks(self):
        """Search tasks by text."""
        # TODO: Implement search
        pass
    
    def save_tasks(self):
        """Save tasks to JSON file."""
        try:
            with open(self.data_file, 'w') as f:
                json.dump(self.tasks, f, indent=2, default=str)
            return True
        except Exception as e:
            messagebox.showerror("Save Error", f"Could not save tasks: {e}")
            return False
    
    def load_tasks(self):
        """Load tasks from JSON file."""
        if os.path.exists(self.data_file):
            try:
                with open(self.data_file, 'r') as f:
                    self.tasks = json.load(f)
                self.refresh_task_display()
            except Exception as e:
                messagebox.showerror("Load Error", f"Could not load tasks: {e}")
    
    def load_settings(self):
        """Load application settings."""
        default_settings = {
            "theme": "light",
            "auto_save": True,
            "confirm_delete": True,
            "default_category": "Personal",
            "default_priority": "Medium"
        }
        
        if os.path.exists(self.settings_file):
            try:
                with open(self.settings_file, 'r') as f:
                    return {**default_settings, **json.load(f)}
            except:
                pass
        
        return default_settings
    
    def save_settings(self):
        """Save application settings."""
        try:
            with open(self.settings_file, 'w') as f:
                json.dump(self.settings, f, indent=2)
        except:
            pass
    
    def refresh_task_display(self):
        """Update the task list display."""
        # TODO: Implement display refresh
        # Clear current display
        # Apply filters
        # Apply search
        # Sort tasks
        # Display tasks
        pass
    
    def update_status_bar(self):
        """Update status bar with task counts."""
        # TODO: Implement status updates
        pass
    
    def export_tasks(self):
        """Export tasks to text file."""
        # TODO: Implement export functionality
        pass
    
    def show_statistics(self):
        """Show task statistics window."""
        # TODO: Implement statistics window
        pass
    
    def show_settings(self):
        """Show settings window."""
        # TODO: Implement settings window
        pass
    
    def show_help(self):
        """Show help/user guide."""
        help_window = tk.Toplevel(self.window)
        help_window.title("User Guide")
        help_window.geometry("500x400")
        
        help_text = """
        Professional Todo List - User Guide
        
        Keyboard Shortcuts:
        - Ctrl+N: New task
        - Delete: Delete selected task
        - Ctrl+E: Export tasks
        - F1: Show this help
        
        Features:
        - Add tasks with categories and priorities
        - Mark tasks as complete
        - Filter by status, category, or priority
        - Search tasks by text
        - Export tasks to file
        """
        
        text_widget = tk.Text(help_window, wrap=tk.WORD, padx=10, pady=10)
        text_widget.pack(fill=tk.BOTH, expand=True)
        text_widget.insert("1.0", help_text)
        text_widget.config(state="disabled")
    
    def show_about(self):
        """Show about dialog."""
        messagebox.showinfo(
            "About",
            "Professional Todo List\n\n"
            "Version 1.0\n"
            "Created for Python Course Week 12\n\n"
            "A feature-rich task management application"
        )
    
    def focus_new_task(self):
        """Focus on new task entry."""
        if self.task_entry:
            self.task_entry.focus()
    
    def quit_app(self):
        """Quit application with confirmation."""
        if messagebox.askyesno("Quit", "Are you sure you want to quit?"):
            self.save_tasks()
            self.save_settings()
            self.window.quit()
    
    def run(self):
        """Start the application."""
        self.window.protocol("WM_DELETE_WINDOW", self.quit_app)
        self.window.mainloop()

# Helper functions for students to use
def create_task_display_string(task):
    """Create a formatted string for task display."""
    status = "✓" if task.get("completed", False) else "☐"
    priority_symbols = {"High": "⚡", "Medium": "●", "Low": "○"}
    priority = priority_symbols.get(task.get("priority", "Medium"), "●")
    
    return f"{status} {priority} [{task.get('category', 'Other')}] {task.get('title', 'Untitled')}"

def validate_task_data(title, category, priority):
    """Validate task input data."""
    if not title or not title.strip():
        return False, "Task title cannot be empty"
    
    if len(title) > 100:
        return False, "Task title too long (max 100 characters)"
    
    if category not in [c.value for c in Category]:
        return False, "Invalid category"
    
    if priority not in [p.value for p in Priority]:
        return False, "Invalid priority"
    
    return True, "Valid"

# Main entry point
if __name__ == "__main__":
    app = TodoApp()
    app.run()
```

## Teaching Tips and Tricks

### 1. Live Coding Best Practices
- Start with working code, break it, fix it together
- Use print statements to debug event flow
- Show common mistakes and how to fix them
- Build incrementally, test frequently

### 2. Debugging GUI Applications
```python
# Debug helper for students
def debug_event(event):
    print(f"Event: {event}")
    print(f"Widget: {event.widget}")
    print(f"Type: {event.type}")
    if hasattr(event, 'x'):
        print(f"Position: ({event.x}, {event.y})")
    if hasattr(event, 'char'):
        print(f"Character: {event.char}")

# Use in bindings
widget.bind("<Button-1>", debug_event)
```

### 3. Common Student Errors and Solutions

**Error 1: Widget not appearing**
```python
# Wrong - forgot to pack/grid
label = tk.Label(window, text="Hello")

# Right
label = tk.Label(window, text="Hello")
label.pack()
```

**Error 2: Command executes immediately**
```python
# Wrong
button = tk.Button(window, command=my_function())

# Right
button = tk.Button(window, command=my_function)
```

**Error 3: Variable scope in callbacks**
```python
# Problem
def create_buttons():
    for i in range(5):
        btn = tk.Button(window, text=f"Button {i}",
                       command=lambda: print(i))  # Always prints 4!
        btn.pack()

# Solution
def create_buttons():
    for i in range(5):
        btn = tk.Button(window, text=f"Button {i}",
                       command=lambda x=i: print(x))  # Captures value
        btn.pack()
```

### 4. Performance Considerations
- Avoid creating too many widgets at once
- Use virtual events for complex updates
- Don't block the main loop with long operations
- Consider using after() for periodic updates

### 5. Making It Fun
- Create mini-challenges during class
- Show real-world applications
- Let students customize colors and themes
- Celebrate creative solutions

## Conclusion

Week 12 represents the culmination of the students' Python journey. By the end of this week, they will have created professional GUI applications that integrate everything they've learned. The key to success is patience, practice, and encouraging creativity while maintaining code quality standards.

Remember: Every professional programmer started where your students are now. Celebrate their progress and inspire them to continue learning!