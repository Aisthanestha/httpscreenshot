#!/bin/shell

cd /opt/

echo "install fresh httpscreenshot?[y/n]"
read var
if [ $var = y ]
then
        rm -r -d httpscreenshot
        git clone https://github.com/breenmachine/httpscreenshot
else
    echo "Ok we not cloning\n"
fi
cd httpscreenshot


echo "install dependencies?[y/n]"
read var1

if [ $var1 = y ] 
    then
        sh /opt/httpscreenshot/install-dependencies.sh
else
        echo "I assume you already have them installed then! (ツ)"
fi

mkdir dsu.edu
cd dsu.edu

echo " OPENING VIM, ENTER WEBSITES"
echo " Press [Enter] to continue"
read garbo

vim text.txt

cd ..
mkdir foo
cd foo
../httpscreenshot.py -l ../dsu.edu/text.txt
cd ..
cd screenshotClustering

./cluster.py -d ../foo/


firefox clusters.html
