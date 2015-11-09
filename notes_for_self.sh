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