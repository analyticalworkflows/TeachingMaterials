# Faster Computing

Sometimes it's nice to have code that takes a long time to run; it feels like you're working even when you're not!  But most of the time it's really useful when you can speed up code so that it takes seconds intead of minutes, or minutes instead of hours, or hours instead of days.  Although most of the time faster computing can be achieved by tackling the problem in a more efficient manner, sometimes it can't.

In the next two classes, we'll step through a few of the options for faster computing, moving from the simplest forms of code efficiency to the use of computer clusters.  We'll also touch on ways to quantitatively assess and compare code performance.


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
