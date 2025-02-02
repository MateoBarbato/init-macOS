#!/bin/bash
# init-apps.sh – Instalación y configuración de aplicaciones

echo "Iniciando instalación y configuración de aplicaciones..."

# 1. iTerm2
echo "Instalando iTerm2..."
if brew install --cask iterm2; then
  echo "iTerm2 instalado correctamente."
else
  echo "Error: La instalación de iTerm2 falló."
fi

# 2. Visual Studio Code
echo "Instalando Visual Studio Code..."
if brew install --cask visual-studio-code; then
  echo "Visual Studio Code instalado correctamente."
else
  echo "Error: La instalación de Visual Studio Code falló."
fi

# 3. DBeaver Community
echo "Instalando DBeaver Community..."
if brew install --cask dbeaver-community; then
  echo "DBeaver Community instalado correctamente."
else
  echo "Error: La instalación de DBeaver Community falló."
fi

echo "Instalando Node.js..."
if brew install node; then
  echo "Node.js instalado correctamente."
else
  echo "Error: La instalación de Node.js falló."
fi

echo "Instalando Git..."
if brew install --global git; then
  echo "Git instalado correctamente."
else
  echo "Error: La instalación de Git falló."
fi

echo "Instalando NPM..."
if brew install --global npm; then
  echo "NPM instalado correctamente."
else
  echo "Error: La instalación de NPM falló."
fi

echo "Instalando Yarn..."
if brew install --global yarn; then
  echo "Yarn instalado correctamente."
else
  echo "Error: La instalación de Yarn falló."
fi

echo "Instalando AnyDesk..."
if brew install --cask anydesk; then
  echo "AnyDesk instalado correctamente."
else
  echo "Error: La instalación de AnyDesk falló."
fi

echo "Instalando Brave Browser..."
if brew install --cask brave-browser; then
  echo "Brave Browser instalado correctamente."
else
  echo "Error: La instalación de Brave Browser falló."
fi

echo "Instalando Google Drive..."
if brew install --cask google-drive; then
  echo "Google Drive instalado correctamente."
else
  echo "Error: La instalación de Google Drive falló."
fi

echo "Instalando Bitwarden..."
if brew install --cask bitwarden; then
  echo "Bitwarden instalado correctamente."
else
  echo "Error: La instalación de Bitwarden falló."
fi

echo "Instalando Cursor..."
if brew install --cask cursor; then
  echo "Cursor instalado correctamente."
else
  echo "Error: La instalación de Cursor falló."
fi

echo "Instalando Ice Menu Bar"
if brew install --cask jordanbaird-ice then
  echo "Bartender 5 instalado correctamente."
else
  echo "Error: La instalación de Bartender 5 falló."
fi

echo "Instalando WireGuard..."
if brew install --cask wireguard; then
  echo "WireGuard instalado correctamente."
else
  echo "Error: La instalación de WireGuard falló."
fi


echo "Instalando DBeaver Community..."
if brew install --cask dbeaver-community; then
  echo "DBeaver Community instalado correctamente."
else
  echo "Error: La instalación de DBeaver Community falló."
fi


echo "Instalando Stats..."
if brew install --cask stats; then
  echo "Stats instalado correctamente."
else
  echo "Error: La instalación de Stats falló."
fi


echo "Instalación/configuración de aplicaciones completada." 
