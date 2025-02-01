#!/bin/bash
# init.sh – Script principal para inicializar el entorno

set -e  # Salir si ocurre algún error

# Función para verificar e instalar Homebrew
check_homebrew() {
  if ! command -v brew &>/dev/null; then
    echo "Homebrew no está instalado. Se procederá a instalarlo..."
    if ! /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
      echo "Error: check_homebrew - Falló en la instalación de Homebrew."
      echo "Its breaking in the step of installing Homebrew."
      exit 1
    fi

    # Verificación posterior a la instalación
    if ! command -v brew &>/dev/null; then
      echo "Error: check_homebrew - Homebrew se instaló pero no se pudo verificar."
      echo "Its breaking in the step of validating Homebrew installation."
      exit 1
    else
      echo "Homebrew se ha instalado exitosamente."
    fi
  else
    echo "Homebrew está instalado. Continuando..."
  fi
}

# Llama a la función de verificación/instalación
check_homebrew

# Obtiene el directorio donde se encuentra este script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Se llama a los scripts modulares encargados de distintas configuraciones e instalaciones
for script in init-apps.sh init-shell.sh init-iterm.sh init-sys.sh; do
  if [ -f "$SCRIPT_DIR/$script" ]; then
    echo "Ejecutando $script..."
    bash "$SCRIPT_DIR/$script"
  else
    echo "Advertencia: $script no encontrado en $SCRIPT_DIR"
  fi
done

echo "Inicialización completada con éxito." 