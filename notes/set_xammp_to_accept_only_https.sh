#!/bin/bash

# ** DOWNLOAD AND INSTALL LAMP: 
# Download the Linux version from the official site Apache Friends. At the time of writing this article, the downloaded file is xampp-linux-x64-7.4.29-1-installer.run. For you, the numbers in the filename might get changed but the procedure will remain the
# cd ~/Downloads/
# sudo chmod 755 xampp-linux-x64-7.4.29-1-installer.run
# sudo ./xampp-linux-x64-7.4.29-1-installer.run

# ** CONFIG LAMPP TO ACCEPT ONLY https
# chmod +x set_xammp_to_accept_only_https.sh
# sudo ./set_xammp_to_accept_only_https.sh

# ** START LAMPP
# sudo /opt/lampp/lampp start

# Define the paths
XAMPP_DIR="/opt/lampp"  # Change this path to your XAMPP installation directory
OPENSSL_CONF="$XAMPP_DIR/etc/openssl.cnf"
OPENSSL_BIN="/usr/bin/openssl"  # Change this path to the location of the openssl binary
CERT_DIR="$XAMPP_DIR/etc/ssl.crt"
KEY_DIR="$XAMPP_DIR/etc/ssl.key"
APACHE_CONF="$XAMPP_DIR/etc/httpd.conf"
BACKUP_APACHE_CONF="$XAMPP_DIR/etc/httpd.conf.bak"

# Check if httpd.conf.bak does not exist
if [ ! -f "$BACKUP_APACHE_CONF" ]; then
    echo "Backing up httpd.conf to httpd.conf.bak..."
    cp "$APACHE_CONF" "$BACKUP_APACHE_CONF"
fi

# Generate a self-signed SSL certificate
cd "$XAMPP_DIR"
"$OPENSSL_BIN" req -x509 -nodes -days 365 -newkey rsa:2048 -keyout "$KEY_DIR/server.key" -out "$CERT_DIR/server.crt" -config "$OPENSSL_CONF"

# Update Apache configuration to use HTTPS
echo "Updating Apache configuration to use HTTPS..."
echo "LoadModule ssl_module modules/mod_ssl.so" >> "$APACHE_CONF"
echo "Listen 443" >> "$APACHE_CONF"
echo "<VirtualHost _default_:443>" >> "$APACHE_CONF"
echo "DocumentRoot \"$XAMPP_DIR/htdocs\"" >> "$APACHE_CONF"
echo "ServerName localhost:443" >> "$APACHE_CONF"
echo "SSLEngine on" >> "$APACHE_CONF"
echo "SSLCertificateFile \"$CERT_DIR/server.crt\"" >> "$APACHE_CONF"
echo "SSLCertificateKeyFile \"$KEY_DIR/server.key\"" >> "$APACHE_CONF"
echo "</VirtualHost>" >> "$APACHE_CONF"

# Restart Apache to apply the changes
echo "Restarting Apache..."
"$XAMPP_DIR/xampp" restartapache

echo "XAMPP is now configured to accept HTTPS."

