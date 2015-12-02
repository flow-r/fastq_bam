

This is a simple example for flowr, which preprocess fastq files and aligns using
bwa and then merges the output.

**requirements**
- R (3.2+)
- java (1.7)
- bwa
- samtools
- picard (1.38+)

You may look at the 00_install_deps.sh for some ideas into getting the
latest versions of these tools quickly.

```
git clone https://github.com/flow-r/fastq_bam.git

# rest of the steps assume that this is the WD
cd fastq_bam

# update paths to tools etc.
vi pipe/fastq_bam_bwa.conf

# use FULL paths for reliability, as an example this works too.
fqs1=input/target_brca_example/brca.example.illumina.0.1.fastq
fqs2=input/target_brca_example/brca.example.illumina.0.2.fastq

# by default this will create a flowmat and flowdef
flowr run x=fastq_bam_bwa fqs1=$fqs1 fqs2=$fqs2 samplename=samp
```


**notes**

 Files `00_install_deps.sh`, `01_run_pipe.sh` and `02_run_tests.sh` are used in
 automated testing.

 These are still a work in progress.
