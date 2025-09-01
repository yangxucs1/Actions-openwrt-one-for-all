#!/bin/bash

#feeds添加kenzok8的软件包仓库
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

#echo "packages executed successfully!"
