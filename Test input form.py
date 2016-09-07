from Tkinter import *

# Controls what happens when you press the submit button
def print_input_fields():
   print("First Name: %s\nLast Name: %s\nPhone Number: %s\nEmail Address: %s\nID Number: %s\nDepartment: %s\nVisitor Check: %s" %(first_name.get(), last_name.get(), phone_number.get(), email_address.get(), id_number.get(), dept.get(), check_var.get()))
##   first_name.delete(0, END)
##   last_name.delete(0, END)
##   phone_number.delete(0, END)
##   email_address.delete(0, END)
##   id_number.delete(0, END)
##   dept.set("Science and Engineeing Faculty")

#Starts Tkinter and sets up the winder
root = Tk()
root.geometry("500x500")
root.title("Test Input Form")

# Labels for input fields
Label(root, text="First Name").grid(row=0, padx=5, pady=5)
Label(root, text="Last Name").grid(row=1, padx=5, pady=5)
Label(root, text="Phone Number").grid(row=2, padx=5, pady=5)
Label(root, text="Email Address").grid(row=3, padx=5, pady=5)
Label(root, text="Student/Staff ID Number").grid(row=4, padx=5, pady=5)
Label(root, text="Department").grid(row=5, padx=5, pady=5)
Label(root, text="Are you applying for a visitor?").grid(row=6, padx=5, pady=5)

# Variables for the check box and Department drop down menu
check_var = IntVar()
dept = StringVar(root)
dept.set("Science and Engineeing Faculty")

# Initialises input fields
first_name = Entry(root)
last_name = Entry(root)
phone_number = Entry(root)
email_address = Entry(root)
id_number = Entry(root)
department = OptionMenu(root, dept, "Science and Engineering Faculty", "Law", "Faculty of Education", "Faculty of Health", "QUT Business School", "Creative Industries Faculty")
visitor_check = Checkbutton(root, variable=check_var)

# Controls the location of the input fields
first_name.grid(row=0, column=1, padx=30, pady=5)
last_name.grid(row=1, column=1, padx=30, pady=5)
phone_number.grid(row=2, column=1, padx=30, pady=5)
email_address.grid(row=3, column=1, padx=30, pady=5)
id_number.grid(row=4, column=1, padx=30, pady=5)
department.grid(row=5, column=1, padx=5, pady=5)
visitor_check.grid(row=6, column=1, padx=30, pady=5)

# Initialises buttons at the bottom of the window and controls their location
Button(root, text='Quit', command=root.destroy).grid(row=7, column=0, padx=5, pady=5)
Button(root, text='Submit', command=print_input_fields).grid(row=7, column=1, padx=5, pady=5)

# Main loop
root.mainloop()
