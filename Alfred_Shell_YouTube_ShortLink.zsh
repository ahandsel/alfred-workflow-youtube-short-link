query="{query}"

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
