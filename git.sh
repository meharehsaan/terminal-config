# It can change the all previous commits name and email to what you want in case you have commited changes with wrong name and email
# Edit first three variables
git filter-branch --env-filter '
OLD_EMAIL="yourmail@gmail.com"
CORRECT_NAME="yourname"
CORRECT_EMAIL="youremail@gmail.com"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

