LOGFILE=./upload.log
git checkout master
git add -all
git commit -m "autosave"
git status
#try catch function 
#write in this way {code1&&}||{code2}
{
   git pull
   git push&&
   echo "$(date) : file uploaded" >> $LOGFILE
}||{
   git pull --rebase
   git push
   echo "$(date) : file reloaded and uploaded" >> $LOGFILE
}
