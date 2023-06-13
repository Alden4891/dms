@echo off
..\..\..\mysql\bin\mysql -u root -e "DROP DATABASE db_dms"
..\..\..\mysql\bin\mysql -u root mysql -v < db.sql
pause
