@echo off
echo ---------------------- Generador de SSL Server Key ----------------------
openssl genrsa -rand efsws_rand.txt -out ServerKey.pem
echo ------------ Generador auto emitido del Certificado SSL del servidor ------------
openssl req -new -key ServerKey.PEM -out ServerCert.pem -x509 -config openssl.cnf -days 365
echo -------- SSL Server key auto emitida certificado generado ---------
