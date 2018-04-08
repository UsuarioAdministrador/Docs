# Docs
Abridor de Documentos do Google para Linux

Sobre

Este shell script para Linux serve para abrir documentos, slides e planilhas do Google através do arquivo local baixado pelo software Google Drive (no Windows). O arquivo é aberto no navegador.

Requisitos

Sistema Operacional: Linux (testado somente no Ubuntu)
Softwares: cat, grep, sed, echo e um navegador web
Interpretador: bash ou compatível

Conteúdo

docs.sh: arquivo com scripts escritos em shell
docs.desktop: atalho para o aplicativo docs.sh
icon.png: ícone do atalho do aplicativo

Instalação e Configuração

1. Baixar a pasta docs do github
2. Abrir com um editor de texto o arquivo:
    docs/docs.sh
   procurar a linha:
    browser='google-chrome'
   e alterar para o nome do executável do navegador que será utilizado
3. Executar o comando:
    chmod +x docs/docs.sh
   para dar permissão de execução
4. Mover a pasta docs para o diretório:
    /opt/ (necessita de permissão de super usuário)
   Se não for movida, abrir com um editor de texto o arquivo:
    docs/docs.desktop
   e alterar os diretórios de Exec, Icon e Path
4. Copiar o arquivo:
    /opt/docs/docs.desktop
   para o diretório:
    /usr/share/applications (necessita de permissão de super usuário)

Utilização

Selecionar um arquivo com extensão .gdoc, .gsheet ou .gslides e, se houvar, selecionar a opção "Abrir com..." e encontrar o aplicativo Docs (docs.desktop). Se não houver a opção, executar via terminal:
    /opt/docs/docs.desktop <nome_do_arquivo>.gdoc
Se nenhum parâmetro for passado, o aplicativo será encerrado.