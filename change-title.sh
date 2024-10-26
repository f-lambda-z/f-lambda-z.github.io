titleSite="Blog Pendidikan FΛZ"

sed -i "s@<title>Categories</title>@<title>Kategori · ${titleSite}</title>@g" ./public/categories/index.html
sed -i "s@<title>Tags</title>@<title>Tag · ${titleSite}</title>@g" ./public/tags/index.html
sed -i "s@<title>Archives</title>@<title>Arsip · ${titleSite}</title>@g" ./public/archives/index.html
sed -i "s@<title>Posts</title>@<title>Postingan · ${titleSite}</title>@g" ./public/posts/index.html
