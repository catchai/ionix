# Creamos primero nuestra clave y certificado (autofirmado).
openssl req -x509 -sha256 -nodes -newkey rsa:2048 -keyout ser.key -out ser.pem