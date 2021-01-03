read 'anyDir';
if [ -f ./$anyDir ];
then cd $anyDir
else mkdir $anyDir
fi