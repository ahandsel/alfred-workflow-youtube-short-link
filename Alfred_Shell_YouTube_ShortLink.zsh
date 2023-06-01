query="{query}"

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
