# Faster Computing Part 2

Now that we've learned the basics of parallel computing we're in position to make use of a high performance computing cluster (HPC).  Granted, you can make use of parallel computing on your personal computer too (by computing on two or more of its cores), but HPCs provide many more cores ('nodes') which are typically also individually much faster than your computer.  (Thus, even if you're not running code in parallel, it is often faster to run things on a single node of the cluster -- or in the cloud -- than on your computer.  Plus it frees you up to do other things with your computer!)


### Required readings (_before class_)
- Notes: [tex/FasterComputing_part_2.pdf](tex/FasterComputing_part_2.pdf)

### To do (_before class_)
We'll be interacting with two servers:
- Cosine's _High Performance Cluster_ (HPC):   `yourONID@submit.hpc.oregonstate.edu`
- Cosine's _RStudio_ in the cloud: [https://rstudio-1.cosine.oregonstate.edu](https://rstudio-1.cosine.oregonstate.edu)

For these you'll need to install two (possibly three) more apps:
1. _CISCO AnyConnect client_ to connect to OSU's VPN (see download and instructions [here](https://oregonstate.teamdynamix.com/TDClient/1935/Portal/KB/ArticleDet?ID=76790));
2. An _sftp_ GUI (e.g., [Cyberduck](https://cyberduck.io));
3. (_Windows-users only_) An _ssh_ client (see [OSU's recommendations](https://cosine.oregonstate.edu/faqs/software-tools-and-fixes), e.g., [MobaXterm](https://mobaxterm.mobatek.net) which also does _sftp_).

You'll need to login to OSU's VPN before you'll be able to connect to OSU's servers from off-campus.  The _sftp_ GUI will make it easier to transfer files (scripts and output) to/from OSU's servers. The _ssh_ client is for interacting with OSU's servers via command-line (for which Mac users can use the built-in _Terminal_ app).

### Class structure
1) RStudio Server Pro
2) High Performance Clusters
	- Command-line (R or Mathematica or Matlab)
	- Job submission

### Further readings
##### Using Cosine's HPC
- [Cosine's HPC FAQ](https://cosine.oregonstate.edu/faqs/unix-hpc-cluster)

##### Unix resources
- [UNIX Youtube video - Part 1](https://www.youtube.com/watch?v=BjO1BgeuPhE)
- [UNIX Youtube video - Part 2](https://www.youtube.com/watch?v=JVBtabkJ4ZE)
- [UNIX Tutorial](http://www.ee.surrey.ac.uk/Teaching/Unix/unix1.html)
