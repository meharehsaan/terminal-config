# Git basic commands

```
git command -help
git help --all
git log --oneline

// To initialize a folder as git repo
git init 

git clone [repolink] 
git status
```

### Add files to staging area 

``````
git add [filename]
git add --all  or git add -A
``````

### Commit changes

``````
git commit -m "First release of Hello World!"
``````

### Check small changes in some file

```
git status --short
```

Short status flags are
- ?? - Untracked files
- A - Files added to stage
- M - Modified files
- D - Deleted files


### To avoid staging area direct commit [not recommended]

```
git commit -a -m "comment"
```

### To go to some previous commit

``````
git reset [hash]
git reset 9a9add8
``````

### To revert commit

```
git revert HEAD --no-edit
```

### Git Ammend

``````
git commit -m "Adding plines to reddme"
``````

Oh no! the commit message is full of spelling errors. Embarrassing. Let's amend that

``````
git commit --amend -m "Added lines to README.md"
``````

### Git Branches

Branches are created to code separate without disturbing master code.

``````
git branch [name]
``````

### delete branch

```
git branch -d [name]

// main is default master branch.

git checkout [name]
// Switched to that branch

git checkout -b [branchname]             //to create a new branch and shift to that 
git push origin [branchname]            //to push branch from local to github
```

### Github

```
git remote add origin https://github.com/meharehsaan/reponame.git
```

### Push

```
git push origin                           //to changes to our remote origin
git push -u origin main
```

### PULL
Pull is a combination of fetch and merge. It is used to pull all changes from a remote repository into the branch you are working on

```
git fetch origin                               //to fetch all files from github to local
git log origin/master                   //to check commits etc
git diff origin/master                 //to  check difference between local and from fetch
git merge origin/master          //to merge after changes local and from pull
git pull origin                            //to update our local Git
```



### Github pages 
To host your pages on github create new repo with the name *meharehsaaan.github.io*
```
git remote add gh-page https://github.com/meharehsaan/meharehsaan.github.io.git

git push gh-page master          //to push to github
```
