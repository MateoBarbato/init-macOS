# Instalador de Entorno macOS

Este proyecto provee un conjunto modular de scripts que automatizan la instalación y configuración de tu entorno de desarrollo en macOS. Cada módulo se encarga de una parte específica de la configuración, y el script principal los coordina para que se ejecuten en el orden adecuado.

---

## Estructura del Proyecto

- **init.sh**  
  Script principal encargado de:
  - Verificar e instalar Homebrew si no está presente.
  - Determinar la ubicación del directorio del script para realizar llamadas relativas a otros módulos.
  - Ejecutar los módulos (scripts) en el orden correcto:
    - `init-sys.sh`: Configuraciones del sistema (por ejemplo, cambiar preferencias del Dock, asignar aplicaciones predeterminadas).
    - `init-apps.sh`: Instalación y configuración de aplicaciones (por ejemplo, iTerm2, VSCode, DBeaver, etc.).
    - `init-shell.sh`: Configuración de la shell (personalización de bash, zsh, etc.).
    - `init-iterm.sh`: Configuración específica de iTerm2 (por ejemplo, cambiar preferencias, cargar snippets).

- **init-sys.sh**  
  Configura aspectos del sistema como:
  - Ajustes visuales (ocultación automática del Dock).
  - Asignación de aplicaciones predeterminadas:
    - Brave Browser como navegador predeterminado.
    - Cursor como editor predeterminado para archivos de desarrollo (usando `duti` para configurar las extensiones).

- **init-apps.sh**  
  Automatiza la instalación de aplicaciones esenciales mediante Homebrew:
  - Instala aplicaciones disponibles a través de Homebrew (por ejemplo, iTerm2, Visual Studio Code, DBeaver).
  - Muestra mensajes de advertencia para aplicaciones que deben instalarse manualmente.
  
- **init-shell.sh**  
  Este script se encarga de la configuración de la shell:
  - Agrega configuraciones personalizadas al archivo `.zshrc` (en caso de que uses zsh).
  - Permite definir prompt, alias, o cualquier otra personalización que desees.

- **init-iterm.sh**  
  Configura iTerm2 automáticamente:
  - Ajusta preferencias básicas (desactivar el aviso de cierre, establecer una carpeta personalizada para las preferencias).
  - Configura la codificación por defecto y comportamiento de las pestañas.
  - Muestra ejemplos de cómo cargar snippets en iTerm2 mediante un archivo de preferencias.

---

## Flujo de Ejecución

1. **Inicio de `init.sh`:**  
   - Se verifica si Homebrew está instalado. Si no lo está, el script lo instala y valida la instalación.
   - Se determina el directorio del script para ejecutar los módulos de forma relativa.

2. **Ejecución de Módulos:**  
   - El script principal recorre la lista de módulos definidos y los ejecuta en el siguiente orden:
     1. `init-sys.sh`: Se configuran aspectos fundamentales del sistema.
     2. `init-apps.sh`: Se instalan las aplicaciones necesarias.
     3. `init-shell.sh`: Se aplican las configuraciones personalizadas de la shell.
     4. `init-iterm.sh`: Se aplican las configuraciones específicas de iTerm2.

3. **Finalización:**  
   - Una vez ejecutados todos los módulos, se muestra un mensaje indicando que la inicialización se completó exitosamente.

---

## Cómo Utilizarlo

1. **Clonar o Descargar el Repositorio:**  
   Clona este repositorio o descarga los archivos en un directorio de tu macOS.

   ```bash
   git clone https://github.com/tu_usuario/instalador-entorno-macos.git
   cd instalador-entorno-macos
   ```

2. **Asignar Permisos de Ejecución:**  
   Asigna permisos de ejecución a cada uno de los scripts.

   ```bash
   chmod +x init.sh init-sys.sh init-apps.sh init-shell.sh init-iterm.sh
   ```

3. **Ejecutar el Script Principal:**  
   Inicia la configuración ejecutando el script principal.

   ```bash
   ./init.sh
   ```

   Durante la ejecución, el script:
   - Verificará e instalará Homebrew (si es necesario).
   - Configurará el sistema, asignando aplicaciones predeterminadas (por ejemplo, Brave Browser para navegación y Cursor para edición de archivos de desarrollo).
   - Instalará y configurará las aplicaciones especificadas.
   - Configurará la shell y aplicará la configuración específica para iTerm2 (incluyendo snippets, si se ha cargado el archivo correspondiente).

4. **Verificar Resultados:**  
   Una vez completada la ejecución, el mensaje "Inicialización completada con éxito." confirmará que todas las tareas se han realizado correctamente. Puedes reiniciar las aplicaciones afectadas (por ejemplo, iTerm2 o el Dock) para ver los cambios en efecto.

5. **Personalizar Configuraciones:**  
   Si deseas modificar o agregar nuevas configuraciones, edita directamente los scripts correspondientes. Por ejemplo, para agregar más extensiones con Cursor o nuevos parámetros en iTerm2, simplemente actualiza el contenido del script respectivo.

---

## Consideraciones

- **Orden de Ejecución:**  
  El orden en que se ejecutan los módulos es importante para garantizar que las dependencias se apliquen de forma correcta.  
  Por ejemplo, el script de instalación de aplicaciones (`init-apps.sh`) depende de que Homebrew esté instalado, y el script de configuraciones del sistema (`init-sys.sh`) puede depender de algunas aplicaciones instaladas previamente.

- **Configuraciones Personalizadas:**  
  Si deseas modificar o agregar nuevas configuraciones, puedes editar directamente los scripts correspondientes. Cada uno está diseñado para ser modular y fácil de modificar.

- **Uso de duti:**  
  El script utiliza `duti` para asignar aplicaciones predeterminadas (por ejemplo, Brave Browser como navegador o Cursor para archivos de desarrollo). Asegúrate de que `duti` esté instalado (el script lo instalará automáticamente si no se encuentra).

---

Este conjunto de scripts brinda una manera automatizada y modular de configurar tu entorno macOS para el desarrollo, facilitando la puesta en marcha y manteniendo un proceso ordenado y reproducible.

¡Disfruta de tu entorno personalizado!
