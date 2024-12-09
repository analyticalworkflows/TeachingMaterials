 ARRAY R SUBMISSION EXAMPLE

1. Copy the example to your home directory

	cp -R /cm/shared/examples/R/array ~/mydir

2. Navigate home and examine each file

	cd ~/mydir
	cat test.r
	cat submitR_array.sh

3. Edit submitR_simple.sh and input your email address, optionally enter the array variables, range and chunk size
	


4. Submit the job

	qsub submitR_array.sh

5. Monitor the queue

	watch qstat

6. Examine the output of job.log and chunk output logs

	cat job.log

	cat output.*