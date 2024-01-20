
### Socials
<a>
	<img 
		height="80px" 
		alt="Discord" 
		src="https://discord.com/assets/cb48d2a8d4991281d7a6a95d2f58195e.svg" 
	/>
</a>

### Description

This is basically a repository for anyone studying databases, networking, and/or any other related subject
to both contain and share their work with others. </br>

The idea and reason behind this repo is that I find myself quite often learning and
experimenting with new subjects, languages, mini-projects, etc. and every time I do so,
I do it for myself in some private repository. </br>
For some reason this time I stopped to think about it and realized, bruh... why? <br/>

I could've shared so much with the open source community, as well as to find inspiration and
ideas from other people's work - so this is basically what im trying to do here...
<br/>

### Simpler summary of my goals for this repo:
- 	Having it simple and organized, so that it is natural and comfortable for anyone studying/experimenting/starting
	 out with anything related to the subject to use this repo as their go-to to contain their work.

-	the natural simplicity of the repo to create a workspace where people can explore the work of others
	 and perhaps even combine forces and initiate new projects together.

-   Make grandma proud.

### New to Git?
If you are new to this repository or to git in general, below are a few simple steps to get you started.

#### Copying the repository to your PC's local workspace - a.k.a. forking and cloning this repo:
1. 	Click the fork button in the top left corner of the webpage to fork this repository.
	  This will link the repository with your account, allowing to see it under your own repositories section,
	  and to perform essential operations such as <i> clone, push, pull, merge, etc. </i>

2.	create a dedicated git folder on your PC to keep things easy and organized, I would also suggest create another
	  subdirectory within that directory with your account name since with time and familiarity to git you may
	  find yourself cloning additional repos, packages, libraries, etc. and having your own individual space for your
	  repos can help keep stuff organized.

3.	If you haven't done so already, <a href="https://git-scm.com/downloads"><u>download git.</u></a>

4.	On your local pc, navigate to the directory you created at step 2, right click and choose "open Git Bash here".<br>
	  If you're on linux or if you're a mac user that is friendly with their terminal simply cd into the directory,
	  You should have git integrated, if not simply run "sudo apt-get install git" or if you're on mac and this doesn't
	  work then maybe "brew install git", otherwise, there are enough guides out there and you are more than welcome to
	  update this readme with the solution that worked for you, since im not really a mac nor a windows user...

5.  Windows users - on git bash, to copy use Ctrl-Insert, to paste use Shift-Insert, or simply use right click.

6.  Copy the files from the repository by running:

	```
	git clone <https://github.com/<YOUR-USERNAME-HERE>/intro-to-databases.git
    ```

7. use `git status` to review the latest changes before saving (a.k.a. committing) them

8. To add and commit (to save) changes use `git add <file1> <file2> <file3> ...`, or if you just want to add
   everything use `git add .`, running git add basically tells git which files you'd like to save changes for when running
   git commit - any un-added files will not be included.

9. run `git commit -m "your msg here"` to save the changes.

10. When you're ready to upload your files to the big scary web, after committing your changes, run `git push`.

	```
	# example usage:
	git add .
	git commit -m "Added new http exercise under exercises/http/mynameisjeff/"
	git push
 
	# Optional - To specify a branch, assuming the branch name is jeff, you can use:
	git push -u origin jeff
	```

11. If you have any issues stackoverflow.com is a great place to get flamed at, as well as to find answers.
