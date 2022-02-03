apt-get update && apt-get install -y hugo
lake
git init
hugo -d ./dist
echo "dist/" > .gitignore 
