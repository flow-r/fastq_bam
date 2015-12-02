# we will use brew to install are dependencies
PREFIX=apps

# ----------------------------------- DISCLAIMER ----------------------------- #
# - the following is automatically tested on a ubuntu system
# - you may need to tweak the code to your own system
# - if you already have the dependencies installed, you may
#    add their paths in the

# --------------------------- installing brew -------------------------------- #
# this sections is for ubuntu linux ONLY
# motivation: once we have brew installed, getting everything else
# becomes quite easy, especially on clusters where we do not have root
# priveleges.

apt-get update
# install brew's dependencies
sudo apt-get -y install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

# add science tap
brew tap homebrew/science

# --------------------------- installing tools ------------------------------- #

# install R, bwa, samtools
brew install --prefix $PREFIX R bwa samtools picard-tools

# for mac simply use:
# brew install bwa samtools

# installing flowr
Rscript -e 'install.packages("flowr", repos = "http://sahilseth.github.io/drat")'

# alternative installation instructions:
wget https://github.com/broadinstitute/picard/releases/download/1.140/picard-tools-1.140.zip -O apps/picard-tools-1.140.zip
unzip -d apps apps/picard-tools-1.140.zip
