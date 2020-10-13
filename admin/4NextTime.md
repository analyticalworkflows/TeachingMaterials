# 4NextTime
Things to change or add the next time this course is taught

## Structured Projects
A fair number of students had data-specific project structure questions, including keeping data private (but the rest of the project public) or large-enough files to make Git (and GitHub) impracticle or not possible.
Both necessitated discussions of keeping data in seperate folders on the person's machine, either in a seperate repo (see below), somewhere in the cloud (e.g., Dropbox), or just somewhere else on the person's machine.
This necessitated talking about specifying data locations using 'full path' rather than 'relational' paths (which currently comes up in the Best Practices class).
It's probably okay to leave (or repeat) discussion of relational paths, but adding a section regarding data to the 'Structured Projects' lecture notes would probably be good.

Ways to keep your data private when using an otherwise public repository:
  1. Full path to an additional (private) repository
  2. Full path to directory outside of repository
  3. Don't ever stage/commit data folder
  4. Add data folder to .gitignore

Only option 1 gives you the benefits of using Git for your data, so the rest are not recommended if your data might _ever_ change.  A slightly more involved alternative is a combination of (1) and (4):

  5. (i) Add a folder to your public repository
    (ii) Add that folder to .gitignore
    (iii) Create a text file in that folder
    (iv) Create a subfolder
    (v) Clone a private repo into the subfolder
