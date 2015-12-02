

fqs1=input/target_brca_example/brca.example.illumina.0.1.fastq
fqs2=input/target_brca_example/brca.example.illumina.0.2.fastq

# by default this will create a flowmat and flowdef
flowr run x=fastq_bam_bwa fqs1=$fqs1 fqs2=$fqs2 samplename=samp

# actually run the commands locally
# local run is for testing purposes ONLY, and errors may not get captured as desired
flowr run x=fastq_bam_bwa fqs1=$fqs1 fqs2=$fqs2 samplename=samp execute=TRUE platform=local

# rerun, so as not to make too many folders
flowr run x=fastq_bam_bwa fqs1=$fqs1 fqs2=$fqs2 samplename=samp execute=TRUE platform=local rerun_wd=output/runs/fastq_bam_bwa-samp-20151201-18-07-17-aiJFUNjt start_from=aln1





# END
