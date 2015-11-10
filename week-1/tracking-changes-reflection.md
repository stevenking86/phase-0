How does tracking and adding changes make developers' lives easier?

Tracking and adding changes helps out in several ways.  Firstly, it allows developers to revert back to an old version if things get messed up in a new one.  Git works great for this because of the message associated with each commit.  This type of workflow also helps multiple developers work on a project simultaneously in different branches and be able to keep track of what the others are doing.

What is a commit?

A commit is like a more elegant version of saving a file.  It's a saved version that comes with extra information like what was changed and who changed it. 

What are the best practices for commit messages?

Commit messages should be written in the present tense imperative. If doing the longer type of commit with -v, then the first line should be treated like the subject of an e-mail.  The next paragraph would be like the body and contain more detailed information if necessary.  There should be a blank line between the first line and the paragraph section.  Bullet points are okay.

What does the HEAD^ argument mean?

HEAD^ is the previous commit. 

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The first area is the working directory.  This is what it sounds like.  This is the first stage where your work is being done.  Next, if you'd like to get what's in your working directory to the staging area, you'll use: git add your_filename .  The staging area is a midpoint between your working area and an actual commit.  The final stage is the commit.  When you're ready to take what's in your staging area and make it a commit you use: git commit -m 'message describing your commit'. A commit is a documented, saved version of your project. 

Write a handy cheatsheet of the commands you need to commit your changes?

I did this a bit in the previous question but here's the rundown:
Check on your status with: git status
To move from working directory to staging area: git add your_filename
To move from staging area to a commit: git commit -m "message"

What is a pull request and how do you create and merge one?

A pull request is a handy way to avoid the bad practice of just adding code directly to a master branch.  It's a saftey measure of sorts.  After you've updated your project on a branch and pushed the branch to GitHub you can make a pull request.   

To move through the process, log into Github and if you've pushed correctly you'll see "Compare & pull request" as a green button up and to the right of your repo name. You'll open it and fill out a short form which is something like filling out the information in a commit. Then click "Create pull request". If everything works, you can click "Merge Pull request" on the next page. 

Why are pull requests preferred when working with teams?

Pull requests are preferred for the same reason that having someone look over a draft of a newspaper article is preferred.  It's good to have another set of eyes on something before adding it into the project.  It seems to me it's also good to just give those on your team a heads up before altering the master branch of a project. 