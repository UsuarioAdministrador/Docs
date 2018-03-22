#!/bin/bash

# Abridor de Documentos do Google (gdoc, gsheet, gslides)
# versão 0.0.1
# author: UsuarioAdministrador
# on: 22/03 03:36

checkString() {
    # Se a string não for encontrada
    if [[ !($findString) ]]; then
        exit
    fi
}

# Se nenhum parâmetro foi passado
if [[ !("$1") ]]; then
    exit
fi

# Nome do executável do navegador
browser='google-chrome'

# Primeiro padrão a ser encontrado
startString='{"url": "'
# Segundo padrão a ser encontrado
lastString='", "doc_id": ".*'

# Verificar se arquivo contém os parâmetros
findString=`cat "$1" | grep -o "$startString"`
checkString
findString=`cat "$1" | grep -o "$lastString"`
checkString

# Filtrar o conteúdo do arquivo
command=`cat "$1" | sed "s/\$startString/\$browser /"`
command=`echo $command | sed "s/\$lastString//"`

# Executar comando
$command
