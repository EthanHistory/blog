#!/bin/bash
# Usage
usage() { echo "$0 usage:" && grep " .)\ #" $0; exit 0; }

# Parse arguments
# Reference for "getopts" : https://stackoverflow.com/questions/16483119/an-example-of-how-to-use-getopts-in-bash
[ $# -eq 0 ] && usage
while getopts "t:m:" arg; do
  case $arg in
    t) # Specify the theme for your blog.
      THEME=${OPTARG}
      ;;
    m) # Specify ,message, either 45 or 90.
      MESSAGE=${OPTARG}
      ;;
    h | *) # Display help.
      usage
      exit 0
      ;;
  esac
done

# Default Theme
if [ -z ${THEME} ]; then THEME=PaperMod; fi
if [ -z ${MESSAGE} ]; then MESSAGE="rebuilding site `date`"; fi

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
# hugo -t <여러분의 테마>
hugo -t ${THEME}

# Go To Public folder, sub module commit
cd public
# Add changes to git.
git add .
git commit -m "${MESSAGE}"
# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..

# blog 저장소 Commit & Push
git add .
git commit -m "${MESSAGE}"
git push origin master