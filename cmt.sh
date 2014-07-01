DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
STR=$(LC_CTYPE=C tr -dc "[:alpha:]" < /dev/urandom | head -c 8)
echo $STR >> test.txt
git add .
git commit -m "Pushed string $STR"
git push
