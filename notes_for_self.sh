cd ~/Dropbox/public/flow-r/fastq_bam/pipe
base=https://raw.githubusercontent.com/sahilseth/flowr/devel/inst/pipelines
wget $base/fastq_bam_bwa.R
wget $base/fastq_bam_bwa.conf
wget $base/fastq_bam_bwa.def

# get some example data:
cd ~/Dropbox/public/flow-r/fastq_bam/input
wget http://omixon-download.s3.amazonaws.com/target_brca_example.zip
unzip target_brca_example.zip

# create ref for chr17
cp /scratch/rists/hpcapps/reference/human/ucsc_hg19/chrfas/chr17.fa .

# use FULL paths for reliability
fqs1=input/target_brca_example/brca.example.illumina.0.1.fastq
fqs2=input/target_brca_example/brca.example.illumina.0.2.fastq

# by default this will create a flowmat and flowdef
flowr run x=fastq_bam_bwa fqs1=$fqs1 fqs2=$fqs2 samplename=samp
