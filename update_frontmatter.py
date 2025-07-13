import os
import re

# Define the directories to process
directories = [
    "_practicos",
    "_guias"
]

# Process each directory
for directory in directories:
    # Get all markdown files in the directory
    for filename in os.listdir(directory):
        if filename.endswith(".md"):
            filepath = os.path.join(directory, filename)
            
            # Extract title from filename
            title = os.path.splitext(filename)[0]  # Remove extension
            title = re.sub(r'^\d+_', '', title)  # Remove leading numbers and underscore
            title = title.replace('_', ' ').title()  # Convert to title case
            
            # Extract nav_order from filename if it exists
            nav_order = "1"
            match = re.match(r'^(\d+)', filename)
            if match:
                nav_order = match.group(1)
            
            # Read the file content
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Add or update front matter
            front_matter = f"---\ntitle: \"{title}\"\nnav_order: {nav_order}\n---\n\n"
            
            # Remove any existing front matter
            content = re.sub(r'^---\n.*?\n---\n\n', '', content, flags=re.DOTALL)
            
            # Add new front matter
            new_content = front_matter + content
            
            # Write the updated content back to the file
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            print(f"Updated {filepath} with front matter")
