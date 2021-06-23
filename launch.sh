#!/bin/bash

# Create Self-Signed SSL
rm -rf nginx/certs/
mkdir -p nginx/certs/
openssl req -x509 -out ./nginx/certs/ssl.crt -keyout ./nginx/certs/ssl.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <(
    printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth"
  )

# Install Self-Signed SSL
if [[ "$OSTYPE" == "darwin"* ]]; then
    sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ./nginx/certs/ssl.crt
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo ln -s "$(pwd)/nginx/certs/ssl.crt" /usr/local/share/ca-certificates/ssl.crt
    sudo update-ca-certificates
else
    echo "Could not install the certificate on the host machine, please do it manually"
fi

# Launch containerized application
docker-compose build --no-cache
docker-compose up
