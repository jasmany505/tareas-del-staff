#!/usr/bin/env bash
set -euo pipefail

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: instala GitHub CLI desde https://cli.github.com/"
  exit 1
fi
if [[ $# -ne 1 ]]; then
  echo "Uso: bash scripts/create-labels.sh OWNER/REPOSITORY"
  exit 1
fi
REPO="$1"
gh auth status >/dev/null

create_label() {
  local name="$1" color="$2" description="$3"
  if gh label list --repo "$REPO" --limit 200 --json name --jq '.[].name' | grep -Fxq "$name"; then
    gh label edit "$name" --repo "$REPO" --color "$color" --description "$description"
  else
    gh label create "$name" --repo "$REPO" --color "$color" --description "$description"
  fi
}

create_label "tipo: tarea" "A855F7" "Tarea del staff de Kronix"
create_label "tipo: incidencia" "EC4899" "Problema que necesita seguimiento"
create_label "estado: pendiente" "D8B4FE" "Aún no iniciada"
create_label "estado: en progreso" "A855F7" "En ejecución"
create_label "estado: revisión" "EC4899" "Pendiente de revisión"
create_label "estado: completada" "22C55E" "Trabajo terminado y verificado"
create_label "prioridad: urgente" "DC2626" "Resolver inmediatamente"
create_label "prioridad: alta" "F97316" "Prioridad alta"
create_label "prioridad: media" "EAB308" "Prioridad media"
create_label "prioridad: baja" "22C55E" "Prioridad baja"
create_label "área: moderación" "7C3AED" "Moderación y convivencia"
create_label "área: soporte" "C084FC" "Atención a usuarios"
create_label "área: desarrollo" "DB2777" "Código y bots"
create_label "área: construcción" "9333EA" "Construcciones del servidor"

echo "Etiquetas de Kronix creadas/actualizadas en $REPO."
