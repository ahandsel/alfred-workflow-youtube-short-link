query="{query}"

# Remove unnecessary characters from the URL
query=${query#"https://www.youtube.com/"}
query=${query%"?feature=share"}
query=${query#"watch?v="}
query=${query%"live/"}
# Add "https://youtu.be/" at the beginning
query="https://youtu.be/$query"

echo -n $query