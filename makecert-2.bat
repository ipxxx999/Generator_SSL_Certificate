@echo off
echo ---------------------- Generating SSL Server Key ----------------------
openssl genrsa -rand efsws_rand.txt -out ServerKey.pem
echo ------------ Generating self-issued SSL Server Certificate ------------
openssl req -new -key ServerKey.PEM -out ServerCert.pem -x509 -config openssl.cnf -days 365
echo -------- SSL Server key and self-issued certificate generated ---------
