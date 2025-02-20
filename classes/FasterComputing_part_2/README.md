# Faster Computing Part 2

Today we will make use of a high performance computing (HPC) cluster.  HPC clusters provide many more servers (nodes) on which to run things in parallel.  Moreover, each node is also faster than your personal computer.  Thus, even if you're not running code in parallel, it is often faster to run things on a single node of the cluster than on your computer.  (Plus it frees you up to do other things with your computer!)


### Required readings (_before class_)
- Notes: [tex/FasterComputing_part_2.pdf](tex/FasterComputing_part_2.pdf)

### To do (_before class_)
We'll be using OSU's [Novus High Performance Cluster](https://arcs.oregonstate.edu/novus-cluster):   `yourONID@novus.dri.oregonstate.edu`

You'll need to install two (possibly three) more apps:
1. _CISCO AnyConnect client_ to connect to OSU's VPN (see download and instructions [here](https://oregonstate.teamdynamix.com/TDClient/1935/Portal/KB/ArticleDet?ID=76790));
2. An _sftp_ GUI (e.g., [Cyberduck](https://cyberduck.io));
3. (_Windows-users only_) An _ssh_ client (see [OSU's recommendations](https://cosine.oregonstate.edu/faqs/software-tools-and-fixes), e.g., [MobaXterm](https://mobaxterm.mobatek.net) and [PuTTy](https://www.putty.org) which also do _sftp_).

You'll need to login to OSU's VPN before you'll be able to connect to OSU's servers from off-campus.  The _sftp_ GUI will make it easier to transfer files (scripts and output) to/from OSU's servers. The _ssh_ client is for interacting with OSU's servers via command-line (for which Mac users can use the built-in _Terminal_ app).

### Class structure
  - Interactive computing by command-line
  - Job submission using SLURM

### Demonstration files
#### Serial
- [submit_simple.sh](examples/R_simple/submit_simple.sh)
- [simple.R](examples/R_simple/simple.R)
- [simple_sleep.R](examples/R_simple/simple_sleep.R)

#### Parallel


Additional examples in the [examples](examples/) folder.

### Resources
#### Using the Novus HPC cluster
- [Novus HPC FAQ](https://arcs.oregonstate.edu/novus-cluster)
- [ARCS training](https://arcs.oregonstate.edu/training)

#### SLURM explanations
- [Princeton University](https://researchcomputing.princeton.edu/support/knowledge-base/slurm)
- [University of Georgia Wiki](https://wiki.gacrc.uga.edu/wiki/Running_Jobs_on_Sapelo2)
- [University of Michigan Guide](https://documentation.its.umich.edu/arc-hpc/slurm-user-guide)
- [OSU College of Engineering How to](https://it.engineering.oregonstate.edu/hpc/slurm-howto)

##### Unix
- [UNIX Youtube video - Part 1](https://www.youtube.com/watch?v=BjO1BgeuPhE)
- [UNIX Youtube video - Part 2](https://www.youtube.com/watch?v=JVBtabkJ4ZE)
- [UNIX Tutorial](http://www.ee.surrey.ac.uk/Teaching/Unix/unix1.html)

##### Additional OSU HPCs (soon to be partly merged)
- [College of Engineering](https://it.engineering.oregonstate.edu/hpc)
- [Center for Quantitative Life Sciences](https://shell.cqls.oregonstate.edu)
- [College of Earth, Ocean, and Atmospheric Sciences](https://ceoas.oregonstate.edu/computing-about)
