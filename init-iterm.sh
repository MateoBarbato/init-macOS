#!/bin/bash
# init-iterm.sh – Ejemplos de configuraciones para iTerm2

echo "Iniciando configuración de iTerm2..."

# 1. Desactivar el aviso de cierre (PromptOnQuit)
# Esto evita que iTerm2 pregunte si realmente quieres salir cuando cierras todas las ventanas.
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
echo "Desactivado aviso de cierre de iTerm2."

# 2. Definir una carpeta personalizada para almacenar y cargar las preferencias de iTerm2
# Esto permite tener un control versionado o compartido de las preferencias.
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.iterm2prefs"
echo "Configurada carpeta personalizada para preferencias en $HOME/.iterm2prefs."

# 3. Configurar la codificación por defecto
# 4 representa UTF-8 según la documentación de iTerm2.
defaults write com.googlecode.iterm2 StringEncodings -array 4
echo "Configurada codificación UTF-8 para iTerm2."

# 4. Ajustar el comportamiento de las pestañas: Abrir nuevas pestañas en la misma ventana
defaults write com.googlecode.iterm2 OpenBookmarkInNewWindow -bool false
echo "Nuevas pestañas se abrirán en la misma ventana de iTerm2."

# 5. (Opcional) Configurar esquemas de color o fuentes
# Los siguientes comandos son ejemplos comentados. Puedes adaptarlos según tus necesidades.
# Por ejemplo, podrías definir un bookmark por defecto con una configuración
# defaults write com.googlecode.iterm2 "Default Bookmark Last Closed" -string "Solarized Dark"
# Y para cambiar la fuente y el tamaño, tendrías que hacerlo desde el archivo de preferencias.

echo "Configuración de iTerm2 completada." 