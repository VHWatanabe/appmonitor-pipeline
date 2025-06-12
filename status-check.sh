URL="https://example.com"
STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)