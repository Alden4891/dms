@echo off
setlocal enabledelayedexpansion

rem Define the XAMPP directory
set XAMPP_DIR=C:\xampp

rem Define the paths for the certificate and backup
set APACHE_CONF=%XAMPP_DIR%\apache\conf\httpd.conf
set BACKUP_APACHE_CONF=%XAMPP_DIR%\apache\conf\httpd.conf.bak
set CERT_DIR=%XAMPP_DIR%\apache\conf\ssl.crt
set KEY_DIR=%XAMPP_DIR%\apache\conf\ssl.key
set CSR_DIR=%XAMPP_DIR%\apache\conf\ssl.csr

rem Step 1: Backup httpd.conf to httpd.conf.bak if not exists
if not exist "%BACKUP_APACHE_CONF%" (
    echo Backing up httpd.conf to httpd.conf.bak...
    copy "%APACHE_CONF%" "%BACKUP_APACHE_CONF%"
)

rem Step 2: Create a certificate using certbot
echo Creating a certificate using Certbot...
certbot certonly --manual --preferred-challenges http -d localhost

rem Step 3: Place the certificate, key, and CSR files in their respective directories
echo Copying certificate, key, and CSR files...
copy "%USERPROFILE%\.acme.sh\localhost\localhost.cer" "%CERT_DIR%\server.crt"
copy "%USERPROFILE%\.acme.sh\localhost\localhost.key" "%KEY_DIR%\server.key"
copy "%USERPROFILE%\.acme.sh\localhost\localhost.csr" "%CSR_DIR%\server.csr"

rem Step 4: Configure Apache to accept only HTTPS
echo Configuring Apache to accept only HTTPS...
echo LoadModule ssl_module modules/mod_ssl.so >> "%APACHE_CONF%"
echo Listen 443 >> "%APACHE_CONF%"
echo <VirtualHost _default_:443> >> "%APACHE_CONF%"
echo DocumentRoot "%XAMPP_DIR%\htdocs" >> "%APACHE_CONF%"
echo ServerName localhost:443 >> "%APACHE_CONF%"
echo SSLEngine on >> "%APACHE_CONF%"
echo SSLCertificateFile "%CERT_DIR%\server.crt" >> "%APACHE_CONF%"
echo SSLCertificateKeyFile "%KEY_DIR%\server.key" >> "%APACHE_CONF%"
echo SSLCertificateChainFile "%CERT_DIR%\server.csr" >> "%APACHE_CONF%"
echo </VirtualHost> >> "%APACHE_CONF%"

rem Restart Apache to apply the changes
echo Restarting Apache...
"%XAMPP_DIR%\apache\bin\httpd.exe" -k restart

echo XAMPP is now configured to accept HTTPS.

endlocal
