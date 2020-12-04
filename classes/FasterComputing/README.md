# Faster Computing

Sometimes it's nice to have code that takes a long time to run; it feels like you're working even when you're not!  But most of the time it's really useful when you can speed up code so that it takes seconds intead of minutes, or minutes instead of hours, or hours instead of days.  Although most of the time faster computing can be achieved by tackling the problem in a more efficient manner, sometimes it can't.

In the next two classes, we'll step through a few of the options for faster computing, moving from the simplest forms of code efficiency to the use of computer clusters.  We'll also touch on ways to quantitatively assess and compare code performance.


### Required readings (_before class_)
##### Class 1
- Notes: [Rmd/FasterComputing.pdf](Rmd/FasterComputing.pdf)
##### Class 2
- Notes: [tex/FasterComputing-HPC.pdf](tex/FasterComputing-HPC.pdf)

### To do (_before class_)
##### Class 1
- Download [Rmd/FasterComputing.Rmd](Rmd/FasterComputing.Rmd) so you can follow along in class
- Install the following R packages:
	- microbenchmark
	- ggplot2
	- parallel
	- doParallel
	- foreach
##### Class 2
- Install the apps listed below
- Ensure you can connect to OSU's VPN


### Additional setup (Class 2)
We'll be interacting with two servers in Class 2:
- Cosine's _High Performance Cluster_ (HPC):   `yourONID@submit.hpc.oregonstate.edu`
- Cosine's _RStudio_ in the cloud: [https://rstudio-1.cosine.oregonstate.edu](https://rstudio-1.cosine.oregonstate.edu)

For these you'll need to install two (possibly three) more apps:
1. _CISCO AnyConnect client_ to connect to OSU's VPN (see download and instructions [here](https://oregonstate.teamdynamix.com/TDClient/1935/Portal/KB/ArticleDet?ID=76790));
2. An _sftp_ GUI (e.g., [Cyberduck](https://cyberduck.io));
3. (_Windows-users only_) An _ssh_ client (see [OSU's recommendations](https://cosine.oregonstate.edu/faqs/software-tools-and-fixes), e.g., [MobaXterm](https://mobaxterm.mobatek.net) which also does _sftp_).

You'll need to login to OSU's VPN before you'll be able to connect to OSU's servers from off-campus.  The _sftp_ GUI will make it easier to transfer files (scripts and output) to/from OSU's servers. The _ssh_ client is for interacting with OSU's servers via command-line (for which Mac users can use the built-in _Terminal_ app).

_Note that OSU has upgraded its VPN to the one linked-to above.  You'll need to upgrade to the new client if you've used the old one before._

### Class structure
##### Class 1
We'll progress through methods as time allows.
1) Benchmarking
2) Vectorize it! (using R's apply()-family functions)
3) Parallelize it! (using R's Parallel package)
4) Profiling
##### Classs 2
5) RStudio Server Pro
6) High Performance Clusters
	- Command-line (R or Mathematica or Matlab)
	- Job submission


### Further readings
##### Apply functions
- [DataCamp's tutorial on apply functions](https://www.datacamp.com/community/tutorials/r-tutorial-apply-family)

##### Parallel programming in R
- [Peng's R Programming for Data Science - Parallel programming](https://bookdown.org/rdpeng/rprogdatascience/parallel-computation.html)
- [Parallel package manual](https://stat.ethz.ch/R-manual/R-devel/library/parallel/doc/parallel.pdf)
- [CRAN Task View: High-Performance and Parallel Computing with R](https://cran.r-project.org/web/views/HighPerformanceComputing.html)

##### Parallel programming in Mathematica
- [Wolfram Parallel Tools]https://reference.wolfram.com/language/ParallelTools/tutorial/Overview.html

##### Using Cosine's HPC
- [Cosine's HPC FAQ](https://cosine.oregonstate.edu/faqs/unix-hpc-cluster)

##### Unix resources
- [UNIX Youtube video - Part 1](https://www.youtube.com/watch?v=BjO1BgeuPhE)
- [UNIX Youtube video - Part 2](https://www.youtube.com/watch?v=JVBtabkJ4ZE)
- [UNIX Tutorial](http://www.ee.surrey.ac.uk/Teaching/Unix/unix1.html)
