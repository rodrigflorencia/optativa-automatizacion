// This script will be used to fix the duplicate variable issue
const fs = require('fs');
const path = require('path');

// Read the original file
const filePath = path.join(__dirname, 'index.html');
let content = fs.readFileSync(filePath, 'utf8');

// Remove all script blocks containing backToTopButton
content = content.replace(/<script>[\s\S]*?backToTopButton[\s\S]*?<\/script>/g, '');

// Add a single, well-structured script at the end
const newScript = `
    <!-- Back to top and smooth scrolling functionality -->
    <script>
        // Wait for DOM to be fully loaded
        document.addEventListener('DOMContentLoaded', function() {
            // Back to top button functionality
            const backToTopButton = document.getElementById('backToMain');
            
            // Only proceed if the button exists
            if (backToTopButton) {
                // Show/hide button based on scroll position
                window.addEventListener('scroll', () => {
                    if (window.pageYOffset > 300) {
                        backToTopButton.classList.add('visible');
                    } else {
                        backToTopButton.classList.remove('visible');
                    }
                });
            }

            // Smooth scrolling for anchor links
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();

                    const targetId = this.getAttribute('href');
                    if (targetId === '#') return;

                    const targetElement = document.querySelector(targetId);
                    if (targetElement) {
                        window.scrollTo({
                            top: targetElement.offsetTop - 100,
                            behavior: 'smooth'
                        });
                    }
                });
            });
        });
    </script>`;

// Add the new script before the closing body tag
content = content.replace('</body>', newScript + '\n</body>');

// Write the fixed content to a new file
fs.writeFileSync(path.join(__dirname, 'index_fixed_script.html'), content, 'utf8');
console.log('Fixed file created: index_fixed_script.html');
