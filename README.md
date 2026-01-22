Simple Interest Calculator (Bash)

A lightweight and robust command-line interface (CLI) script written in Bash to calculate Simple Interest and the Total Amount. It features interactive user input and uses the bc utility to handle floating-point arithmetic (decimals) accurately.
📋 Features

    Interactive Input: Prompts the user clearly for Principal, Rate, and Time.

    Decimal Support: Handles non-integer inputs (e.g., Interest Rate: 4.5%, Amount: 1050.50) using bc.

    Input Validation: Checks for empty fields to prevent calculation errors.

    Formatted Output: Displays results in a clean, readable table format with 2 decimal precision.

⚙️ Prerequisites

To run this script, you need a Unix-like operating system (Linux or macOS) with the following installed:

    Bash (Standard on most Linux/macOS systems).

    bc (Basic Calculator): Used for decimal math.

        Most systems have this by default.

        If missing on Ubuntu/Debian: sudo apt install bc

        If missing on RHEL/CentOS: sudo yum install bc

🚀 Installation & Usage

Follow these steps to set up and run the script.
1. Create the Script

Save the script code into a file named simple_interest.sh.
2. Make it Executable

Before running the script for the first time, you must give it execution permissions:
Bash

chmod +x simple_interest.sh

3. Run the Script

Execute the script from your terminal:
Bash

./simple_interest.sh

📝 Example Run
Plaintext

------------------------------------------
      Simple Interest Calculator          
------------------------------------------
Formula: SI = (P * R * T) / 100
------------------------------------------
Enter Principal Amount (P): 5000
Enter Rate of Interest per year (R): 4.5
Enter Time Period in years (T): 2

------------------------------------------
Calculated Results:
------------------------------------------
Principal Amount : 5000
Interest Rate    : 4.5%
Time Duration    : 2 years
------------------------------------------
Simple Interest  : 450.00
Total Amount     : 5450.00
------------------------------------------

⚠️ Troubleshooting

Error: bc: command not found If you see this error, it means the Basic Calculator utility is not installed. Please install it using your system's package manager (see the Prerequisites section above).

Error: Permission denied Ensure you have run chmod +x simple_interest.sh to make the file executable.
