@echo off
setlocal enabledelayedexpansion

rem Define the paths
set XAMPP_DIR=C:\xampp
set OPENSSL_CONF=%XAMPP_DIR%\apache\conf\openssl.cnf
set OPENSSL_BIN=C:\path\to\openssl\bin\openssl.exe
set CERT_DIR=%XAMPP_DIR%\apache\conf\ssl.crt
set KEY_DIR=%XAMPP_DIR%\apache\conf\ssl.key
set APACHE_CONF=%XAMPP_DIR%\apache\conf\httpd.conf
set BACKUP_APACHE_CONF=%XAMPP_DIR%\apache\conf\httpd.conf.bak

rem Check if httpd.conf.bak does not exist
if not exist "%BACKUP_APACHE_CONF%" (
    echo Backing up httpd.conf to httpd.conf.bak...
    copy "%APACHE_CONF%" "%BACKUP_APACHE_CONF%"
)

rem Generate a self-signed SSL certificate
cd %XAMPP_DIR%
"%OPENSSL_BIN%" req -x509 -nodes -days 365 -newkey rsa:2048 -keyout %KEY_DIR%\server.key -out %CERT_DIR%\server.crt -config %OPENSSL_CONF%
rem "C:\xampp\php\extras\openssl\openssl.exe" req -x509 -nodes -days 365 -newkey rsa:2048 -keyout "C:\xampp\apache\conf\ssl.key\server.key" -out "C:\xampp\apache\conf\ssl.crt\server.crt" -config "C:\xampp\apache\conf\openssl.cnf"

rem Update Apache configuration to use HTTPS
echo Updating Apache configuration to use HTTPS...
echo LoadModule ssl_module modules/mod_ssl.so >> %APACHE_CONF%
echo Listen 443 >> %APACHE_CONF%
echo <VirtualHost _default_:443> >> %APACHE_CONF%
echo DocumentRoot "%XAMPP_DIR%\htdocs" >> %APACHE_CONF%
echo ServerName localhost:443 >> %APACHE_CONF%
echo SSLEngine on >> %APACHE_CONF%
echo SSLCertificateFile "%CERT_DIR%\server.crt" >> %APACHE_CONF%
echo SSLCertificateKeyFile "%KEY_DIR%\server.key" >> %APACHE_CONF%
echo </VirtualHost> >> %APACHE_CONF%

rem Restart Apache to apply the changes
echo Restarting Apache...
%SystemRoot%\System32\taskkill.exe /IM httpd.exe /F > nul
%XAMPP_DIR%\apache\bin\httpd.exe

echo XAMPP is now configured to accept HTTPS.

endlocal
