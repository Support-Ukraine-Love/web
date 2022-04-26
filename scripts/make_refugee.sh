#!/bin/bash
#set -x

BLOG_PATH="/Users/quintessence/code/support-ukraine-love/web/content/refugee"

#mv ${BLOG_PATH}content/refugee/index.md{,.bkp}
cat ${BLOG_PATH}/assets/blog-partials/header.md > ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/main.html >> ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/footer.md >> ${BLOG_PATH}/index.md
