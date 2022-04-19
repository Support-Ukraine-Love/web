#!/bin/bash
#set -x

BLOG_PATH="/Users/quintessence/code/support-ukraine-love/web/content/refugee"

#mv ${BLOG_PATH}content/refugee/index.md{,.bkp}
cat ${BLOG_PATH}/assets/blog-partials/header.md > ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/partial1.md >> ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/partial2.md >> ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/partial3.md >> ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/partial4.md >> ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/partial5.md >> ${BLOG_PATH}/index.md
cat ${BLOG_PATH}/assets/blog-partials/partial6.md >> ${BLOG_PATH}/index.md
