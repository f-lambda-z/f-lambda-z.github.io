titleSite="Blog Pendidikan FΛZ"

sed -i "s@<title>Categories</title>@<title>Kategori · ${titleSite}</title>@g" ./public/categories/index.html
sed -i "s@<title>Tags</title>@<title>Tag · ${titleSite}</title>@g" ./public/tags/index.html
sed -i "s@<title>Archives</title>@<title>Arsip · ${titleSite}</title>@g" ./public/archives/index.html
sed -i "s@<title>Posts</title>@<title>Postingan · ${titleSite}</title>@g" ./public/posts/index.html

# Categories
categories=(`ls ./public/categories`)
for d in "${categories[@]}"; do
  if [[ -d "./public/categories/$d" ]]; then
    sed -i "s@<title>@<title>Kategori: @g" ./public/categories/$d/index.html
    sed -i "s@</title>@ · ${titleSite}</title>@g" ./public/categories/$d/index.html
  fi
done

# Tags
tags=(`ls ./public/tags`)
for d in "${tags[@]}"; do
  if [[ -d "./public/tags/$d" ]]; then
    sed -i "s@<title>@<title>Tag: @g" ./public/tags/$d/index.html
    sed -i "s@</title>@ · ${titleSite}</title>@g" ./public/tags/$d/index.html
  fi
done
