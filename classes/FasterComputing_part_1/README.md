# Faster Computing

Sometimes it's nice to have code that takes a long time to run; it feels like you're working even when you're not!  But most of the time it's really useful when you can speed up code so that it takes seconds intead of minutes, or minutes instead of hours, or hours instead of days. Most of the time, the first and best way to improve the speed of your code is by tackling the problem in a more efficient manner. But sometimes that isn't enough.

In the next two classes, we'll step through a few of the options for faster computing, moving from the simplest forms of code efficiency to the use of computer clusters.  We'll also touch on ways to quantitatively assess and compare code performance, allowing you to make an informed choice about what faster computing tools to use, based on the real improvements they are providing. 

Here are two other reasons to use high-performance computing clusters (HPCs). First, running code on an HPC cluster frees up your personal machine to do other things (like write papers). Second, sometimes the syntactic hoops you have to jump through to optimize your code for speed can obscure its function, making it more difficult to understand and debug; in these cases it can be more efficient to run un-optimized code on an HPC. Of course, that is no excuse for writing inefficient code per se. If you are going to claim you are keeping code unoptimized for human readability, your code better be beautiful! :)

We'll do everything in R today, but other languages have equivalent functions and the principles apply regardless.

_As a preview for our upcoming classes on Typesetting, notice that today's readings are Knitr-produced, combining Markdown, LaTex, and displayed (and run) R code._

***

### Required readings (_before class_)
- Notes: [Rmd/FasterComputing_part_1.pdf](Rmd/FasterComputing_part_1.pdf)

### To do (_before class_)
- Download [Rmd/FasterComputing_part_1.Rmd](Rmd/FasterComputing_part_1.Rmd) so you can follow along in class
- Install the following R packages:
	- microbenchmark
	- ggplot2
	- parallel
	- doParallel
	- foreach

### Class structure
We'll progress through methods as time allows.
1) Benchmarking
2) Vectorize it!
3) Parallelize it!
4) Profiling

### Further readings
##### Apply functions
- [DataCamp's tutorial on apply functions](https://www.datacamp.com/community/tutorials/r-tutorial-apply-family)
- [Stack Exchange post on for loops vs. apply functions](https://stackoverflow.com/questions/42393658/what-are-the-performance-differences-between-for-loops-and-the-apply-family-of-f)
- [R Programming for Data Science - apply family functions](https://bookdown.org/rdpeng/rprogdatascience/loop-functions.html)

***
