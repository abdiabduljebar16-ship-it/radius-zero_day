
#!/bin/bash

# Set the output directory
if [ -n "$1" ]; then
    PROJECT_DIR="$1"
else
    PROJECT_DIR="$HOME/radius-projects/website-project"
fi

# Check if the destination already exists
if [ -e "$PROJECT_DIR" ]; then
    echo "Error: Destination already exists: $PROJECT_DIR"
    echo "No files were modified."
    exit 1
fi

# Create the directory structure
mkdir -p "$PROJECT_DIR/css"
mkdir -p "$PROJECT_DIR/js"
mkdir -p "$PROJECT_DIR/images"

# Create index.html
cat > "$PROJECT_DIR/index.html" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>Welcome to My Website</h1>
    <p>This website was generated using a Bash script.</p>

    <script src="js/script.js"></script>
</body>
</html>
EOF

# Create CSS
cat > "$PROJECT_DIR/css/style.css" <<EOF
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
    padding: 50px;
}

h1 {
    color: #2563eb;
}

p {
    color: #333;
}
EOF

# Create JavaScript
cat > "$PROJECT_DIR/js/script.js" <<EOF
console.log("Welcome to my website!");

document.addEventListener("DOMContentLoaded", function () {
    console.log("Website loaded successfully.");
});
EOF

# Create root README
cat > "$PROJECT_DIR/README.md" <<EOF
# Website Project

This is a basic website project generated automatically using a Bash script.

The project contains HTML, CSS, JavaScript, and images directories.
EOF

# Create CSS README
cat > "$PROJECT_DIR/css/README.md" <<EOF
# CSS Directory

This directory contains the CSS files used to style the website.
EOF

# Create JavaScript README
cat > "$PROJECT_DIR/js/README.md" <<EOF
# JavaScript Directory

This directory contains JavaScript files used to add functionality and interactivity to the website.
EOF

# Create Images README
cat > "$PROJECT_DIR/images/README.md" <<EOF
# Images Directory

This directory is used to store image files such as PNG, JPG, JPEG, SVG, and WebP images.
EOF

# Completion message
echo "Website project successfully created at:"
echo "$PROJECT_DIR"
