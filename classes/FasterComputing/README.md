# Faster Computing

### Additional apps
You'll need two (possibly three) more apps for today:
- _CISCO AnyConnect client_ to connect to OSU's Virtual Private Network (see download and instructions [here]((https://oregonstate.teamdynamix.com/TDClient/1935/Portal/KB/ArticleDet?ID=76790)));
- An _sftp_ GUI (e.g., [Cyberduck](https://cyberduck.io));
- (_Windows-users only_) An _ssh_ client (see [OSU's recommendations](https://cosine.oregonstate.edu/faqs/software-tools-and-fixes), e.g., [MobaXterm](https://mobaxterm.mobatek.net) which apparently does _sftp_ too).

You'll need to login to OSU's VPN before you'll be able to connect to OSU's servers from off-campus.  The _sftp_ GUI will make it easier to transfer files (scripts and output) to/from OSU's servers. The _ssh_ client is for interacting with OSU's servers via command-line (for which Mac users can use the built-in _Terminal_ app).

_Note that OSU has upgraded its VPN to the one linked-to above.  You'll need to upgrade to the new client if you've used the old one before._

We'll be interacting with two servers today:
1) Cosine's _High Performance Cluster_ (HPC):   `yourONID@submit.hpc.oregonstate.edu`
2) Cosine's _RStudio_ in the cloud: [https://rstudio-1.cosine.oregonstate.edu](https://rstudio-1.cosine.oregonstate.edu)

See the readings for details.

### Required readings (_before class_)
- Notes: [tex/FasterComputing.pdf](tex/FasterComputing.pdf)

### To do (_before class_)
- Ensure you can connect to OSU's VPN.

### Class structure
We'll progress through methods as time allows, alternating between demonstration and your implementation:
1) Vectorize it! (using R's `apply()`-family functions)
2) Parallelize it! (using R's `Parallel` package)
3) RStudio in the cloud
4) High Performance Clusters
	- Command-line (R or Mathematica or Matlab)
	- Job submission (incl. _Introduction to Unix_)
5) Benchmarking & Profiling

### Further readings
##### Apply functions
- [DataCamp's tutorial on apply functions](https://www.datacamp.com/community/tutorials/r-tutorial-apply-family)

##### Parallel Programming
- [Peng's R Programming for Data Science - Parallel programming](https://bookdown.org/rdpeng/rprogdatascience/parallel-computation.html)
- [Parallel package manual](https://stat.ethz.ch/R-manual/R-devel/library/parallel/doc/parallel.pdf)
- [CRAN Task View: High-Performance and Parallel Computing with R](https://cran.r-project.org/web/views/HighPerformanceComputing.html)

##### Using Cosine's HPC
- [Cosine FAQ](https://cosine.oregonstate.edu/faqs/unix-hpc-cluster)
