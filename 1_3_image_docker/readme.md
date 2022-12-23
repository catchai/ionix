'''
Procedimiento para cumplir con 
La imagen de docker debe estar basada en Nginx
Debe ocupar la variable de ambiente BACKEND_URL para definir a dónde apunta el proxy reverso.
Todos los request que le lleguen a este Nginx deber ser pasador por proxy_pass a la URL objetivo.
Debe admitir HTTPS. Los requests que lleguen por HTTP deben ser redirigidos al cliente a HTTPS.
El certificado a usar para HTTPS debe ser autofirmado, y se puede generar en cualquier momento (en la imagen de docker, cuando corre el
container, de ante mano, etc)
Si el backend no existe o retorna error, usar la configuración por defecto de Nginx.

1.- crear los certificados
2.- ejecutar build.sh // este constuira la imagen docker con el server proxy para peticiones https
desde nuestro navegador podremos ver con http y https y el certificado auto firmado. 
'''

