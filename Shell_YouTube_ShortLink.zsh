#!/bin/zsh

# Function to shorten the YouTube URL
modify_youtube_url() {
  local query=$1

  # Remove unnecessary characters from the URL
  query=${query#"https://"}
  query=${query#"http://"}
  query=${query#"www."}
  query=${query##*(youtube.com/|youtu.be/|watch\?v=|v/|embed/)}
  query=${query##*(live\/|\/live|live)}
  query=${query%%(\?*|&=*)}
  query=${query%(/|&)}
  query=${query//feature/}
  query=${query//share/}
  query=${query//channel/}
  query=${query//embed/}

  # Add "https://youtu.be/" at the beginning
  query="https://youtu.be/$query"

  echo -n "$query"
}

# Read URL from the user
echo "Enter the YouTube URL:"
read -r youtube_url

# Modify the URL
modified_url=$(modify_youtube_url "$youtube_url")

# Output the modified URL
echo "Modified URL: $modified_url"
