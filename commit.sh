#!/bin/sh
cd ~/Sources/pheiduck
git add --all
timestamp() {
  date +"at %H:%M:%S on %d/%m/%Y"
}

git commit -am "Regular auto-commit $(timestamp)"

ping -c5 www.github.com && git push origin --all || echo "not connected"
