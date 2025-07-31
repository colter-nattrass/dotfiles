#!/usr/bin/env bash

set -e

LOCAL_GITCONFIG="$HOME/.gitconfig.local"

if [ -f "$LOCAL_GITCONFIG" ]; then
  echo "✔ ~/.gitconfig.local already exists."
  exit 0
fi

echo "Creating ~/.gitconfig.local..."
read -rp "Enter your Git name: " git_name
read -rp "Enter your Git email: " git_email

cat > "$LOCAL_GITCONFIG" <<EOF
[user]
  name = $git_name
  email = $git_email
EOF

echo "✔ ~/.gitconfig.local created!"
