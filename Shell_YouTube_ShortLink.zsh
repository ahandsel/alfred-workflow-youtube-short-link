#!/bin/zsh

# Function to shorten the YouTube URL
modify_youtube_url() {
  local url=$1

  # Remove "https://www.youtube.com/" from the URL
  url=${url#"https://www.youtube.com/"}

  # Remove "?feature=share" from the URL
  url=${url%"?feature=share"}

  # Remove "watch?v=" from the URL
  url=${url#"watch?v="}

  # Remove "live/" from the URL
  url=${url%"live/"}

  # Add "https://youtu.be/" at the beginning
  url="https://youtu.be/$url"

  echo "$url"
}

# Read URL from the user
echo "Enter the YouTube URL:"
read -r youtube_url

# Modify the URL
modified_url=$(modify_youtube_url "$youtube_url")

# Output the modified URL
echo "Modified URL: $modified_url"
