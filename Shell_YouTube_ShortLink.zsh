#!/bin/zsh

# Function to shorten the YouTube URL
modify_youtube_url() {
  local query=$1

  # Remove unnecessary characters from the URL
  query=${query#"https://"}
  query=${query#"http://"}
  query=${query#"www."}
  query=${query#*youtube.com/}
  query=${query#*youtu.be/}
  query=${query#*watch?v=}
  query=${query#*?v=}
  query=${query#"/v/"}
  query=${query//feature/}
  query=${query//share/}
  query=${query//channel/}
  query=${query//embed/}
  query=${query%"?="*}
  query=${query%"?=&v="*}
  query=${query%"live/"}
  query=${query//live/}
  query=${query%"v/"}
  query=${query%"embed/"}
  query=${query%"&="}
  query=${query%%\?*}
  query=${query#"/"}

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
