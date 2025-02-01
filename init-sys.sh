#!/bin/bash
# init-sys.sh – Configuraciones específicas del sistema en macOS

echo "Iniciando configuraciones del sistema..."

# Ejemplo: Configuración para ocultar el Dock automáticamente
defaults write com.apple.dock autohide -bool true
killall Dock

# =============================
# Establecer Brave como navegador predeterminado
# -----------------------------
# Se usará duti para asignar Brave al protocolo http y https.
# Primero se verifica si duti está instalado; si no, se instala mediante Homebrew.
if ! command -v duti &>/dev/null; then
  echo "duti no está instalado. Se procederá a instalarlo..."
  brew install duti
fi

echo "Definiendo Brave Browser como navegador predeterminado..."
# Asigna Brave al protocolo http y https
duti -s com.brave.Browser http
duti -s com.brave.Browser https
# (Opcional) También se puede asociar archivos .html a Brave
duti -s com.brave.Browser .html
echo "Navegador predeterminado definido a Brave Browser."
# =============================

# =============================
# Asignar Cursor como editor predeterminado para archivos de desarrollo
# -----------------------------
# Nota: Asegúrate de que Cursor esté instalado y verifica el Bundle Identifier.
# En este ejemplo usamos 'com.cursor.Editor' como identificador; si es distinto,
# reemplázalo por el correcto.
echo "Asignando Cursor como editor predeterminado para archivos de desarrollo..."
duti -s com.cursor.Editor .js all
duti -s com.cursor.Editor .py all
duti -s com.cursor.Editor .html all
duti -s com.cursor.Editor .css all
duti -s com.cursor.Editor .json all
duti -s com.cursor.Editor .md all
duti -s com.cursor.Editor .ts all
duti -s com.cursor.Editor .tsx all
duti -s com.cursor.Editor .jsx all
duti -s com.cursor.Editor .txt all
duti -s com.cursor.Editor .log all
duti -s com.cursor.Editor .sh all
duti -s com.cursor.Editor .sql all
duti -s com.cursor.Editor .xml all
duti -s com.cursor.Editor .yaml all
duti -s com.cursor.Editor .yml all




echo "Cursor asignado como editor predeterminado para archivos de desarrollo."
# =============================

# Agrega aquí otras configuraciones del sistema según necesites

echo "Configuraciones del sistema completadas." 