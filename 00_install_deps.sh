# we will use brew to install are dependencies
PREFIX=$1

# installing brew:
# update apt
apt-get update
# install brew's dependencies
sudo apt-get -y install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

# the first argument for this tool is the prefix for installation dir
brew install --prefix $PREFIX R bwa samtools

Rscript -e 'install.packages("flowr", repos = "http://sahilseth.github.io/drat")'


# alternative installation instructions:
wget https://github.com/broadinstitute/picard/releases/download/1.140/picard-tools-1.140.zip
