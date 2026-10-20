# ✦ KRONIX NETWORK — Staff Task Manager

Sistema de organización del staff de **KRONIX NETWORK**, preparado para usarse con GitHub Issues y GitHub Projects, con estética premium morado/rosa.

## Owners oficiales
- **Jasmany** — Owner
- **Dorbel** — Owner
- **Dekuto** — Owner

> Los nombres anteriores son los nombres visibles. Para asignar permisos reales en GitHub, añade sus `@usuarios` de GitHub como colaboradores/administradores del repositorio y del proyecto.

## Qué incluye
- Plantilla de tareas con responsable, prioridad, rango, fecha límite y criterios de aceptación.
- Plantilla para reportar incidencias.
- Plantilla de Pull Request.
- Etiquetas para estado, prioridad, equipo y rango.
- Archivo `CODEOWNERS` de ejemplo.
- Script opcional para crear etiquetas con GitHub CLI.
- Flujo recomendado para registrar tareas completadas.

## Importante: registro con Discord
**GitHub Projects no admite un formulario de registro personalizado ni autenticación mediante Discord dentro del tablero.** El tablero usa los permisos y las cuentas de GitHub. Si el staff debe iniciar sesión con Discord, hace falta una aplicación web independiente con Discord OAuth2 y una base de datos; no se debe guardar contraseñas de Discord ni pedirlas en un formulario.

Este repositorio prepara la gestión de tareas en GitHub. La autenticación de Discord no queda activada por estos archivos.

## Instalación rápida

1. Crea un repositorio en GitHub llamado `kronix-staff-tasks`.
2. Sube todos los archivos de esta carpeta a la raíz del repositorio.
3. En **Settings → Collaborators**, invita a los Owners y al staff por sus nombres de usuario reales de GitHub.
4. Abre **Projects → New project** y crea un proyecto tipo **Board** llamado `✦ KRONIX NETWORK | STAFF TASKS`.
5. Crea los campos:
   - `Status` (Single select): `📥 Pendiente`, `🛠️ En progreso`, `👀 En revisión`, `✅ Completada`, `⛔ Bloqueada`
   - `Priority` (Single select): `🔴 Urgente`, `🟠 Alta`, `🟡 Media`, `🟢 Baja`
   - `Staff rank` (Single select): `Owner`, `Admin`, `Moderador`, `Helper`, `Builder`, `Developer`
   - `Due date` (Date)
   - `Task type` (Single select): `Moderación`, `Soporte`, `Construcción`, `Desarrollo`, `Eventos`, `Contenido`, `Mantenimiento`
6. Añade el repositorio como fuente del proyecto y configura las vistas:
   - **📌 Todas las tareas** — tabla, agrupada por Status.
   - **⚡ Prioridad** — tabla, ordenada por Priority.
   - **🛠️ Kanban Staff** — Board, agrupada por Status.
   - **✅ Completadas** — filtro `Status = ✅ Completada`.
7. En el repositorio, ve a **Settings → Issues → Set up templates** si GitHub no detecta automáticamente las plantillas de `.github/ISSUE_TEMPLATE`.

## Permisos recomendados

| Rol | Permisos sugeridos |
|---|---|
| Owner (Jasmany, Dorbel, Dekuto) | Admin del repositorio y del proyecto |
| Admin | Triage / Write según las necesidades |
| Moderador | Crear incidencias y actualizar tareas asignadas |
| Helper | Crear tareas de soporte y comentar |
| Builder | Gestionar tareas de construcción |
| Developer | Gestionar incidencias técnicas y Pull Requests |

GitHub no asigna automáticamente estos rangos de Kronix. Configura el acceso por persona en GitHub y no des permisos de administrador a todo el staff.

## Crear etiquetas (opcional)

Instala y autentícate con [GitHub CLI](https://cli.github.com/), entra en la carpeta del repositorio y ejecuta:

```bash
bash scripts/create-labels.sh OWNER/REPOSITORY
```

Reemplaza `OWNER/REPOSITORY` por la ruta real del repositorio. El script no cambia contraseñas ni usa tokens guardados en archivos.

## Ciclo de trabajo
1. Crear una tarea usando **✦ Nueva tarea del Staff**.
2. Añadirla al Project y asignar a una persona.
3. Definir prioridad, rango responsable y fecha límite.
4. Mover la tarjeta a `🛠️ En progreso` cuando se empiece.
5. Adjuntar pruebas, enlaces o capturas en los comentarios.
6. Al terminar, completar la lista de aceptación, añadir un resumen y mover a `👀 En revisión`.
7. Un Owner/Admin revisa y mueve a `✅ Completada`.

## Registro de tareas completadas
Para mantener un historial verificable, no borres tareas terminadas. Márcalas como completadas y deja un comentario con:
- Qué se hizo.
- Quién lo realizó.
- Fecha de finalización.
- Pruebas o enlaces relacionados.

## Estilo visual
GitHub Projects no permite cambiar libremente toda la interfaz a morado y rosa. Usa el nombre, emojis, etiquetas y nombres de vistas incluidos para mantener la identidad Kronix.
