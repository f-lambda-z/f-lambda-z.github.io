#!/bin/bash
titleSite="Blog Pendidikan FΛZ"

################
# Change title #
################
# Categories homepage
sed -i "s@<title>Categories</title>@<title>Kategori · ${titleSite}</title>@g" ./public/categories/index.html

# Tags homepage
sed -i "s@<title>Tags</title>@<title>Tag · ${titleSite}</title>@g" ./public/tags/index.html

# Archives homepage
sed -i "s@<title>Archives</title>@<title>Arsip · ${titleSite}</title>@g" ./public/archives/index.html

# Posts homepage
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

######################
# Change description #
######################
# Homepage
sed -i 's@"description":"Blog Pendidikan"@"description":"Blog khusus pendidikan. Ayo, belajar dari blog Kami!!"@g' ./public/index.html
sed -i 's@<meta property="og:description" content="Blog Pendidikan">@<meta property="og:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/index.html
sed -i 's@<meta name=description content="Blog Pendidikan">@<meta name="description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/index.html
sed -i 's@<meta name=twitter:description content="Blog Pendidikan">@<meta name="twitter:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/index.html

# Tags homepage
sed -i 's@"description":"Blog Pendidikan"@"description":"Blog khusus pendidikan. Ayo, belajar dari blog Kami!!"@g' ./public/tags/index.html
sed -i 's@<meta property="og:description" content="Blog Pendidikan">@<meta property="og:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/tags/index.html
sed -i 's@<meta name=description content="Blog Pendidikan">@<meta name="description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/tags/index.html
sed -i 's@<meta name=twitter:description content="Blog Pendidikan">@<meta name="twitter:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/tags/index.html

# Categories homepage
sed -i 's@"description":"Blog Pendidikan"@"description":"Blog khusus pendidikan. Ayo, belajar dari blog Kami!!"@g' ./public/categories/index.html
sed -i 's@<meta property="og:description" content="Blog Pendidikan">@<meta property="og:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/categories/index.html
sed -i 's@<meta name=description content="Blog Pendidikan">@<meta name="description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/categories/index.html
sed -i 's@<meta name=twitter:description content="Blog Pendidikan">@<meta name="twitter:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/categories/index.html

# Archives homepage
sed -i 's@"description":"Blog Pendidikan"@"description":"Kumpulan arsip dari konten-konten yang Kami posting."@g' ./public/archives/index.html
sed -i 's@<meta name=description content="Blog Pendidikan">@<meta name="description" content="Kumpulan arsip dari konten-konten yang Kami posting.">@g' ./public/archives/index.html
sed -i 's@<meta property="og:description" content="Blog Pendidikan">@<meta property="og:description" content="Kumpulan arsip dari konten-konten yang Kami posting.">@g' ./public/archives/index.html
sed -i 's@<meta name=twitter:description content="Blog Pendidikan">@<meta name="twitter:description" content="Kumpulan arsip dari konten-konten yang kami posting.">@g' ./public/archives/index.html

# Posts homepage
sed -i 's@"description":"Blog Pendidikan"@"description":"Blog khusus pendidikan. Ayo, belajar dari blog Kami!!"@g' ./public/posts/index.html
sed -i 's@<meta property="og:description" content="Blog Pendidikan">@<meta property="og:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/posts/index.html
sed -i 's@<meta name=description content="Blog Pendidikan">@<meta name="description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/posts/index.html
sed -i 's@<meta name=twitter:description content="Blog Pendidikan">@<meta name="twitter:description" content="Blog khusus pendidikan. Ayo, belajar dari blog Kami!!">@g' ./public/posts/index.html
