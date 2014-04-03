#! /bin/sh

BUCKET_NAME="awesome-sket.ch"

grunt build
find dist/ -iname '*.html' -exec gzip -n --best {} +
find dist/ -iname '*.xml' -exec gzip -n --best {} +
find dist/assets/css -iname '*.css' -exec gzip -n --best {} +

for f in `find dist/ -iname '*.gz'`; do
  mv $f ${f%.gz}
done

# sync HTML/XML and images
s3cmd sync --progress -M --acl-public --add-header 'Content-Encoding:gzip' dist/ s3://${BUCKET_NAME}/ --exclude '*.*' --include '*.html' --include '*.xml' --include '*.css' --verbose
s3cmd sync --progress -M --acl-public dist/assets/img/ s3://${BUCKET_NAME}/assets/img/ --exclude '*.*' --include '*.png' --include '*.gif' --include '*.jpg' --verbose

# # force CSS upload
# grunt sass
# find dist/assets/css -iname '*.css' -exec gzip -n --best {} +
# for f in `find dist/assets/css -iname '*.gz'`; do
#   mv $f ${f%.gz}
# done

# s3cmd put --recursive --progress -M --acl-public --add-header 'Content-Encoding:gzip' dist/assets/css s3://${BUCKET_NAME}/assets/

# Clean up since all pages are gzipped
grunt clean
