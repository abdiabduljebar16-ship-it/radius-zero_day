# Bash Scripting — Automated Website Project Generator

## What the Script Does

The `create_website.sh` script automatically creates a basic website project. It generates the required HTML, CSS, JavaScript, images, and README files with starter content.

The generated project has the following structure:

```text
website-project/
├── README.md
├── index.html
├── css/
│   ├── README.md
│   └── style.css
├── js/
│   ├── README.md
│   └── script.js
└── images/
    └── README.md
```

## How to Execute the Script

First, make the script executable:

```bash
chmod +x task-4/create_website.sh
```

Run it using the default location:

```bash
./task-4/create_website.sh
```

## Default Output Location

When no directory is provided, the website project is created at:

```text
~/radius-projects/website-project/
```

## Custom Output Location

A custom output directory can be provided as the first command-line argument:

```bash
./task-4/create_website.sh "$HOME/radius-projects/custom website"
```

The script supports directory paths containing spaces.

## Protection of Existing Directories

Before creating the project, the script checks whether the destination already exists.

If the destination exists, the script:

- Displays an error message.
- Stops execution.
- Does not overwrite or modify existing files.

For example:

```text
Error: Destination already exists: /home/username/radius-projects/website-project
No files were modified.
```

## Script Implementation

The complete `create_website.sh` implementation is located in this directory:

```text
task-4/create_website.sh
```

The script uses Bash commands such as `mkdir`, `cat`, `echo`, command-line arguments, and conditional statements to automate website project creation.
