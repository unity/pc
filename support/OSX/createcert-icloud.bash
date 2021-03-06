#!/bin/bash

## cd to PlexConnect directory
cd "$( cd "$( dirname "$0" )" && pwd )"/../..

## iCloud - hostname is www.icloud.com
## certificate good for 10 years
openssl req -new -nodes -newkey rsa:2048 -outform pem -out ./assets/certificates/trailers.cer -keyout ./assets/certificates/trailers.key -x509 -days 3650 -subj "/C=US/CN=www.icloud.com"
cat ./assets/certificates/trailers.cer ./assets/certificates/trailers.key >> ./assets/certificates/trailers.pem