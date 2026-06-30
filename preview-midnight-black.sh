#!/bin/bash
# ============================================
# Midnight Black - Live Preview v2.2
# Testa a paleta final antes de instalar
# Compatível com qualquer terminal true color
# ============================================

clear

# ============================================
# CORES DA PALETA (VERSÃO FINAL)
# ============================================
# Dark Mode
DARK_BG="#000000"
DARK_FG="#FFFFFF"
DARK_TB="#303030"
DARK_TF="#FFFFFF"
DARK_CURSOR="#FFFFFF"

# 16 cores
COLOR0="#000000"
COLOR1="#FF5F57"
COLOR2="#28C840"
COLOR3="#FFBD2E"
COLOR4="#007AFF"
COLOR5="#AF52DE"
COLOR6="#5AC8FA"
COLOR7="#FFFFFF"
COLOR8="#8E8E93"
COLOR9="#FF6961"
COLOR10="#32D74B"
COLOR11="#FFD60A"
COLOR12="#409CFF"
COLOR13="#DA8FFF"
COLOR14="#70D7FF"
COLOR15="#FFFFFF"

# Light Mode
LIGHT_BG="#FFFFFF"
LIGHT_FG="#000000"
LIGHT_TB="#FFFFFF"
LIGHT_TF="#000000"
LIGHT_CURSOR="#000000"

# ============================================
# FUNÇÕES AUXILIARES
# ============================================
hex_to_rgb() {
    local hex="$1"
    echo "$((16#${hex:1:2}));$((16#${hex:3:2}));$((16#${hex:5:2}))"
}

bg_color() { printf "\033[48;2;%sm" "$(hex_to_rgb "$1")"; }
fg_color() { printf "\033[38;2;%sm" "$(hex_to_rgb "$1")"; }
rst() { printf "\033[0m"; }

# ============================================
# CABEÇALHO
# ============================================
echo ""
fg_color "$COLOR14"
echo "  ╔══════════════════════════════════════════════════╗"
echo "  ║                                                  ║"
echo "  ║     MIDNIGHT BLACK - PALETA PARA PTYXIS          ║"
echo "  ║     Preview ao vivo • Versão Final               ║"
echo "  ║                                                  ║"
echo "  ╚══════════════════════════════════════════════════╝"
rst
echo ""

# ============================================
# MODO ESCURO
# ============================================
echo ""
fg_color "$COLOR3"
echo "  ▸ MODO ESCURO"
rst
echo ""

# Título simulando titlebar
bg_color "$DARK_TB"
fg_color "$DARK_TF"
printf "  ┌─ Terminal · Midnight Black "
printf "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
rst
echo ""

# Corpo do terminal
bg_color "$DARK_BG"

# Linha 1: navegação
echo "  │                                                  │"
printf "  │  "
fg_color "$COLOR2"
printf "clack"
fg_color "$DARK_FG"
printf "@"
fg_color "$COLOR5"
printf "ubuntu"
fg_color "$DARK_FG"
printf ":"
fg_color "$COLOR4"
printf "~/projetos"
fg_color "$DARK_FG"
printf "$ "
fg_color "$COLOR14"
printf "neofetch"
rst
echo "                      │"

# Linha 2: ASCII art placeholder
echo "  │                                                  │"
fg_color "$COLOR4"
echo "  │       .-/+oossssoo+/-.                           │"
echo "  │    \`:+ssssssssssssssssss+:\`                      │"
echo "  │  -+ssssssssssssssssssyyssss+-                    │"
echo "  │ .ossssssssssssssssssdMMMNysssso.                 │"
echo "  │ /sssssssssshddmmNNmmyNMMMMhssss/                 │"
echo "  │ +ssssssssshdmNNNNMMMNNMMMMMssss+                 │"
echo "  │ /ssssssssshdmmNNMMMMNNMMMMMysss/                 │"
echo "  │ .ssssssssssshdmmNNNNmNMMMMhssss.                 │"
echo "  │  -osssssssssssshdmmNNmdysssso-                   │"
echo "  │    \`:+ssssssssssssssssss+:\`                      │"
echo "  │       .-/+oossssoo+/-.                           │"
rst

echo "  │                                                  │"
fg_color "$DARK_FG"
echo "  │  clack@ubuntu                                    │"
echo "  │  ─────────────                                  │"
echo "  │  OS: Ubuntu 26.04 LTS x86_64                     │"
echo "  │  Host: ThinkPad T14 Gen 5                        │"
echo "  │  Kernel: 6.12.0-generic                          │"
echo "  │  Shell: bash 5.3                                 │"
echo "  │  Terminal: Ptyxis (Midnight Black)                │"
echo "  │  Packages: 2847 (dpkg)                           │"
echo "  │  Mem: 3.2Gi / 15.4Gi                             │"
rst

# Prompt
echo "  │                                                  │"
printf "  │  "
fg_color "$COLOR2"
printf "clack"
fg_color "$DARK_FG"
printf "@"
fg_color "$COLOR5"
printf "ubuntu"
fg_color "$DARK_FG"
printf ":"
fg_color "$COLOR4"
printf "~/projetos"
fg_color "$DARK_FG"
printf "$ "
fg_color "$COLOR14"
printf "./script.sh"
rst
echo "                      │"

# Comandos e outputs simulados
echo "  │                                                  │"
printf "  │  "
fg_color "$COLOR4"
printf "drwxr-xr-x"
fg_color "$DARK_FG"
printf "  clack clack 4.0K Jan 15 "
fg_color "$COLOR4"
printf "src"
rst
echo "            │"
printf "  │  "
fg_color "$COLOR4"
printf "drwxr-xr-x"
fg_color "$DARK_FG"
printf "  clack clack 4.0K Jan 15 "
fg_color "$COLOR5"
printf "lib"
rst
echo "            │"
printf "  │  "
fg_color "$COLOR4"
printf "-rw-r--r--"
fg_color "$DARK_FG"
printf "  clack clack 2.1K Jan 15 "
fg_color "$COLOR12"
printf "config.json"
rst
echo "    │"
printf "  │  "
fg_color "$COLOR4"
printf "-rwxr-xr-x"
fg_color "$DARK_FG"
printf "  clack clack 8.0K Jan 15 "
fg_color "$COLOR2"
printf "main.py"
rst
echo "       │"
printf "  │  "
fg_color "$COLOR4"
printf "-rw-r--r--"
fg_color "$DARK_FG"
printf "  clack clack  512 Jan 15 "
fg_color "$COLOR7"
printf "README.md"
rst
echo "     │"

echo "  │                                                  │"
printf "  │  "
fg_color "$COLOR1"
printf "  ✗ ERROR"
fg_color "$DARK_FG"
printf "  Falha na conexão com o banco de dados"
rst
echo "       │"
printf "  │  "
fg_color "$COLOR3"
printf "  ⚠ WARN"
fg_color "$DARK_FG"
printf "   Disco /dev/sda2 com 89%% de uso"
rst
echo "             │"
printf "  │  "
fg_color "$COLOR2"
printf "  ✓ OK"
fg_color "$DARK_FG"
printf "     Deploy concluído em 3.2s"
rst
echo "                    │"
printf "  │  "
fg_color "$COLOR6"
printf "  ℹ INFO"
fg_color "$DARK_FG"
printf "   Escutando em 0.0.0.0:8080"
rst
echo "                   │"
printf "  │  "
fg_color "$COLOR5"
printf "  ◆ DEBUG"
fg_color "$DARK_FG"
printf "  Request ID: af3b9c12..."
rst
echo "                    │"

echo "  │                                                  │"
printf "  │  "
fg_color "$COLOR8"
printf "  # Comentário explicativo (Color8)"
rst
echo "                         │"
printf "  │  "
fg_color "$COLOR8"
printf "  # Repare como o texto secundário ficou legível"
rst
echo "              │"
printf "  │  "
fg_color "$COLOR8"
printf "  # tom cinza suave, sem cansar a vista"
rst
echo "                     │"

echo "  │                                                  │"
printf "  │  "
fg_color "$DARK_CURSOR"
printf "█"
fg_color "$DARK_FG"
printf " Cursor branco (#FFFFFF) integrado ao tema"
rst
echo "            │"

# Barra inferior
echo "  │                                                  │"
bg_color "$DARK_TB"
printf "  └──────────────────────────────────────────────────┘"
rst
echo ""

# ============================================
# PALETA DE CORES (GRID)
# ============================================
echo ""
fg_color "$COLOR3"
echo "  ▸ PALETA DE CORES (16 CORES)"
rst
echo ""

echo "  ┌──────────┬──────────┬──────────┬──────────┐"
for row in "0:4" "4:8" "8:12" "12:16"; do
    start=$(echo $row | cut -d: -f1)
    end=$(echo $row | cut -d: -f2)
    echo "  │          │          │          │          │"
    printf "  │"
    for i in $(seq $start $((end-1))); do
        eval "COR=\$COLOR$i"
        bg_color "$COR"
        printf "  Color%-2d " "$i"
        rst
        printf "│"
    done
    echo ""
    printf "  │"
    for i in $(seq $start $((end-1))); do
        eval "COR=\$COLOR$i"
        bg_color "$COR"
        printf "          "
        rst
        printf "│"
    done
    echo ""
    printf "  │"
    for i in $(seq $start $((end-1))); do
        eval "COR=\$COLOR$i"
        fg_color "$COR"
        printf "  %-7s " "$COR"
        rst
        printf "│"
    done
    echo ""
    echo "  ├──────────┼──────────┼──────────┼──────────┤"
done

# Última linha
echo "  │          │          │          │          │"
bg_color "$DARK_BG"
rst
echo "  └──────────┴──────────┴──────────┴──────────┘"

# ============================================
# GRADIENTE
# ============================================
echo ""
fg_color "$COLOR3"
echo "  ▸ GRADIENTE DE CORES"
rst
echo ""

echo "  ┌──────────────────────────────────────────────────┐"
printf "  │ "
grad=("$COLOR1" "$COLOR9" "$COLOR3" "$COLOR11" "$COLOR2" "$COLOR10" "$COLOR4" "$COLOR12" "$COLOR5" "$COLOR13" "$COLOR6" "$COLOR14")
for cor in "${grad[@]}"; do
    bg_color "$cor"
    printf "   "
    rst
done
echo " │"
echo "  └──────────────────────────────────────────────────┘"

# ============================================
# MODO CLARO (MINI PREVIEW)
# ============================================
echo ""
fg_color "$COLOR3"
echo "  ▸ MODO CLARO (PREVIEW RÁPIDO)"
rst
echo ""

bg_color "$LIGHT_BG"
echo "  ┌──────────────────────────────────────────────────┐"
printf "  │  "
fg_color "$LIGHT_FG"
printf "clack@ubuntu:"
fg_color "$COLOR4"
printf "~/projetos"
fg_color "$LIGHT_FG"
printf "$ "
fg_color "$COLOR2"
printf "ls"
rst
echo "                           │"
echo "  │                                                  │"
printf "  │  "
fg_color "$COLOR4"
printf "drwxr-xr-x"
fg_color "$LIGHT_FG"
printf "  src/"
rst
echo "                                        │"
printf "  │  "
fg_color "$COLOR2"
printf "-rwxr-xr-x"
fg_color "$LIGHT_FG"
printf "  script.sh"
rst
echo "                                    │"
printf "  │  "
fg_color "$COLOR8"
printf "  # Comentário secundário"
rst
echo "                          │"
printf "  │  "
fg_color "$COLOR1"
printf "  ✗ ERROR"
fg_color "$LIGHT_FG"
printf "  Algo deu errado"
rst
echo "                           │"
printf "  │  "
fg_color "$LIGHT_CURSOR"
printf "█"
fg_color "$LIGHT_FG"
printf " Cursor preto (#000000)"
rst
echo "                               │"
echo "  └──────────────────────────────────────────────────┘"
rst

# ============================================
# DADOS TÉCNICOS
# ============================================
echo ""
fg_color "$COLOR3"
echo "  ▸ FICHA TÉCNICA"
rst
echo ""

printf "  ┌────────────────────────────────────────────────┐\n"
printf "  │                                                │\n"
printf "  │  "
bg_color "$DARK_BG"
fg_color "$DARK_FG"
printf "  Background    %-20s" "$DARK_BG"
rst
echo "  │"
printf "  │  "
bg_color "$DARK_FG"
fg_color "$DARK_BG"
printf "  Foreground    %-20s" "$DARK_FG"
rst
echo "  │"
printf "  │  "
bg_color "$DARK_TB"
fg_color "$DARK_TF"
printf "  Titlebar      %-20s" "$DARK_TB"
rst
echo "  │"
printf "  │  "
bg_color "$DARK_CURSOR"
fg_color "$DARK_BG"
printf "  Cursor        %-20s" "$DARK_CURSOR"
rst
echo "  │"
printf "  │  "
bg_color "$COLOR8"
fg_color "$DARK_BG"
printf "  Color8        %-20s" "$COLOR8"
rst
echo "  │"
printf "  │  "
bg_color "$COLOR14"
fg_color "$DARK_BG"
printf "  Color14       %-20s" "$COLOR14"
rst
echo "  │"
printf "  │                                                │\n"
printf "  └────────────────────────────────────────────────┘\n"

# ============================================
# INSTRUÇÕES DE INSTALAÇÃO
# ============================================
echo ""
fg_color "$COLOR14"
echo "  ╔══════════════════════════════════════════════════╗"
echo "  ║  GOSTOU? INSTALE AGORA!                         ║"
echo "  ╠══════════════════════════════════════════════════╣"
echo "  ║                                                  ║"
fg_color "$DARK_FG"
echo "  ║  cp midnight-black.palette \\                    ║"
echo "  ║    ~/.local/share/org.gnome.Ptyxis/palettes/     ║"
echo "  ║                                                  ║"
fg_color "$COLOR8"
echo "  ║  Reinicie o Ptyxis e selecione                   ║"
echo "  ║  'Midnight Black' nas preferências.              ║"
echo "  ║                                                  ║"
fg_color "$COLOR14"
echo "  ╚══════════════════════════════════════════════════╝"
rst

echo ""
fg_color "$COLOR8"
echo "  Midnight Black • github.com/VitorioSilva/midnight-black-ptyxis"
echo ""
rst
