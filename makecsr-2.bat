@echo off
if exist efsws_key.pem goto CSR
echo ---------------------- Generating EFSWS Key ----------------------
openssl genrsa -rand efsws_rand.txt -out efsws_key.pem

:CSR
echo ---------------- Generating Certificate Request ----------------
openssl req -new -key efsws_key.pem -out efsws_req.pem -config openssl.cnf 

echo ---------- EFSWS key and certificate request generated -----------
