# Faster Computing

Sometimes it's nice to have code that takes a long time to run; it feels like you're working even when you're not!  But most of the time it's really useful when you can speed up code so that it takes seconds intead of minutes, or minutes instead of hours, or hours instead of days. Most of the time, the first and best way to improve the speed of your code is by tackling the problem in a more efficient manner. But sometimes that isn't enough.

In the next two classes, we'll step through a few of the options for faster computing, moving from the simplest forms of code efficiency to the use of computer clusters.  We'll also touch on ways to quantitatively assess and compare code performance, allowing you to make an informed choice about what faster computing tools to use, based on the real improvements they are providing. 

Here are two other reasons ot use high-performance computing clusters (HPCs). First, running code on an HPC cluster frees up your personal machine to do other things (like write papers), and reduces wear and tear on your computer (which you may well have purchased yourself, whereas HPC resources will typically be owned by someone else). The second additional reason to use and HPC cluster is that sometimes the syntactic hoops you have to jump through to optimize your code for speed can obscure its function, making it more difficult to understand and debug. Sometimes in these cases it is more efficient in the long term to run un-optimized code on an HPC. Of course, that is no excuse for writing inefficient code per se, and if you are going to claim you are keeping it unoptimized for human readability, it had better be beautiful to read! :)


### Required readings (_before class_)
- Notes: [Rmd/FasterComputing.pdf](Rmd/FasterComputing_part_1.pdf)

### To do (_before class_)
- Download [Rmd/FasterComputing.Rmd](Rmd/FasterComputing_part_1.Rmd) so you can follow along in class
- Install the following R packages:
	- microbenchmark
	- ggplot2
	- parallel
	- doParallel
	- foreach

### Class structure
We'll progress through methods as time allows.
1) Benchmarking
2) Vectorize it! (using R's apply()-family functions)
3) Parallelize it! (using R's Parallel package)
4) Profiling

### Further readings
##### Apply functions
- [DataCamp's tutorial on apply functions](https://www.datacamp.com/community/tutorials/r-tutorial-apply-family)
