#!/bin/bash
# seteamos las variables
NAME="dump.bz2" # nombre del respaldo
DIR=/home/ionix/backup/ #direccion donde se guarda los documentos 

export_db(){
    cd $DIR > ${NAME} #donde se guardara el bz2
    chmod 777 ${NAME} #se le da permisos al archivo

    echo "[+] procesando la copia de la base de datos" #mensaje a ver

    [[ ! -z $1 ]] && export PGPASSWORD=$DB_PASS || echo "[-] requiere password!"; exit;
    [[ -z $2 ]] && IP=$DB_HOST || IP="locahost";
    [[ -z $3 ]] && PORT=5432 || PORT=$DB_PORT;
    [[ ! -d DIR ]] && mkdir -p $DIR; # si no existe la carpeta la cree antes de que no marque error!

    pg_dump -i -h $DB_HOST -p $DB_PORT -U $DB_USER -F c -b -v -f ${NAME}  $DB_NAME # comando para crear el backup
    echo "[+] backup terminado" #mensaje a ver 
    
    # generamos el bzip2 para comprimir el sql
    bzip2 ${NAME}

    
}

export_db $DB_USER $DB_PASS $DB_NAME $DB_HOST $DB_PORT

# ==========================================
# readme
#./1_1mysql_dump user pass name host port

# 1. user(requerido)
# 2. pass(requerido)
# 3. name(requerido)
# 4. host(optional default:localhost)
# 5. port(opcional default:5432) 

 