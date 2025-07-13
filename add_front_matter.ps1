function Add-FrontMatter {
    param (
        [string]$Directory
    )
    
    $files = Get-ChildItem -Path $Directory -Filter "*.md"
    
    foreach ($file in $files) {
        $content = Get-Content -Path $file.FullName -Raw
        
        # Skip if file already has front matter
        if ($content -match '^---\r?\n') {
            Write-Host "Skipping $($file.Name) - already has front matter"
            continue
        }
        
        # Extract title from filename
        $title = $file.BaseName -replace '^\d+_', '' -replace '_', ' '
        $title = (Get-Culture).TextInfo.ToTitleCase($title.ToLower())
        
        # Extract order number
        $order = 0
        if ($file.Name -match '^(\d+)') {
            $order = [int]$matches[1]
        }
        
        # Create front matter
        $frontMatter = @"
---
layout: default
title: "$title"
nav_order: $order
---

"@
        
        # Write back to file with front matter
        $frontMatter + $content | Set-Content -Path $file.FullName -NoNewline
        Write-Host "Added front matter to: $($file.Name)"
    }
}

# Process both collections
Add-FrontMatter -Directory ".\_apuntes"
Add-FrontMatter -Directory ".\_practicos"

Write-Host "Front matter added to all markdown files."
