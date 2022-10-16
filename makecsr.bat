@echo off
if exist efsws_key.pem goto CSR
echo ---------------------- SSL Key Generator ----------------------
openssl genrsa -rand efsws_rand.txt -out efsws_key.pem

:CSR
echo ---------------- Generado  de solicitud de certificado ----------------
openssl req -new -key efsws_key.pem -out efsws_req.pem -config openssl.cnf 

echo ---------- SSL Solicitud de Clave y Certificado Generado -----------
