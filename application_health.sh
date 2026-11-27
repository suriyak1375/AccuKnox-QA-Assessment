
#!/bin/bash

echo "===== APPLICATION HEALTH CHECKER ====="

URL="https://www.google.com"

HTTP_STATUS=$(curl -L -s -o /dev/null -w "%{http_code}" --max-time 10 "$URL")

echo "Application URL: $URL"
echo "HTTP Status Code: $HTTP_STATUS"

if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "STATUS: UP"
else
    echo "STATUS: DOWN"
fi

echo "===== CHECK COMPLETED ====="
