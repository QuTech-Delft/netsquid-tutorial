# NetSquid Tutorial

This repository contains the materials for the NetSquid tutorial, specifically:

- Tutorial notebooks
- Exercise

## Getting Started

### Prerequisites

To install and use the NetSquid package, please ensure the following prerequisites are met:

1. **Operating System Compatibility**
   NetSquid is officially supported on **Linux** and **macOS**. Windows users are recommended to use [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install).

2. **NetSquid Forum Account**
   Access to the tutorial requires a NetSquid forum account. If you don’t have one, [register here](https://forum.netsquid.org/ucp.php?mode=register).

3. **Python Installation**
   Ensure you have **Python 3.9, 3.10, 3.11, or 3.12** installed.

---

### **Installation**

#### **1. Environment Setup**
Set your NetSquid account credentials as environment variables by running the following commands (replace `your_username` and `your_password` with your actual credentials):
```bash
export NETSQUIDPYPI_USER=your_username
export NETSQUIDPYPI_PWD=your_password
```

#### **2. (Optional) Virtual Python Environment**
Using a virtual environment ensures that the tutorial’s Python packages are installed in an isolated directory, preventing conflicts with other Python projects on your system.

To create and activate a virtual environment:
```bash
python3 -m venv .venv          # Create the virtual environment
source .venv/bin/activate      # Activate the virtual environment
```

#### **3. Install Dependencies**
Install all required dependencies, including NetSquid, by running:
```bash
make install
```

---

## **Starting the Tutorial**
Start the Jupyter Notebook environment with:
```bash
jupyter notebook
```

This will launch Jupyter Notebook in your default web browser.

**For WSL Users:**
If you see the message *"Couldn't find a suitable web browser!"*, look for an address in the console output, such as:
```
//localhost:8888/tree?token=XXXXXXXXXXXX
```
Copy and paste this address into a **Windows browser** to access the Jupyter Notebook interface.

