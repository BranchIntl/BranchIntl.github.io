rm -rf _site .jekyll-cache
JEKYLL_ENV=production bundle exec jekyll build
cd ..
rm -rf engineering
mkdir -p engineering
cp -R jekyll_blog/_site/* engineering/
git add .
git ci -m "Script: Generated site"
