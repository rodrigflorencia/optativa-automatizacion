require 'yaml'

def add_front_matter(directory)
  Dir.glob(File.join(directory, '*.md')).each do |file_path|
    content = File.read(file_path)
    
    # Skip if file already has front matter
    next if content.start_with?('---')
    
    # Extract title from filename (remove numbers and underscores)
    title = File.basename(file_path, '.md')
                 .gsub(/^\d+_/, '')  # Remove leading numbers and underscore
                 .gsub('_', ' ')      # Replace underscores with spaces
                 .split.map(&:capitalize).join(' ')  # Title case
    
    # Create front matter
    front_matter = {
      'layout' => 'default',
      'title' => title,
      'nav_order' => file_path.scan(/\d+/).first.to_i  # Extract number for ordering
    }.to_yaml + "---\n"
    
    # Write back to file with front matter
    File.write(file_path, front_matter + content)
    puts "Added front matter to: #{file_path}"
  end
end

# Process both collections
add_front_matter('_apuntes')
add_front_matter('_practicos')

puts "Front matter added to all markdown files."
