#!/bin/bash
# HackBio Stage 0 Project
# Author: Funmilayo

##############################
# Project 1: Bash Basic
##############################

# print name
echo "Funmilayo"

# make folder with your name
mkdir Funmilayo

# make biocomputing folder and cd into it
mkdir biocomputing && cd biocomputing

# download files
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna \
     https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk \
     https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# move fna file into name folder
mv wildtype.fna ../Funmilayo

# remove duplicate gbk
rm wildtype.gbk.1

# check for mutant (tatatata)
grep -i "tatatata" ../Funmilayo/wildtype.fna

# check for wild type
grep -i "tata" ../Funmilayo/wildtype.fna

# save mutant lines if found
grep -i "tatatata" ../Funmilayo/wildtype.fna > mutant_results.txt

# count lines (without header)
grep -v "^>" wildtype.gbk | wc -l

# get sequence length from LOCUS
grep "LOCUS" wildtype.gbk | awk '{print $3}'

# get source organism from SOURCE
grep "SOURCE" wildtype.gbk | awk '{$1=""; print $0}'

# list all gene names
grep "/gene=" wildtype.gbk

# clear screen and show commands
clear && history

# list files in both folders
ls ../Funmilayo
ls .

##############################
# Project 2: Bioinformatics Software
##############################

# activate base conda
conda activate base

# add conda channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# create env
conda create --name funtools

# activate env
conda activate funtools

# install figlet
conda install -c conda-forge figlet

# run figlet with name
figlet Funmilayo

# install bwa
conda install -c bioconda bwa

# install blast
conda install -c bioconda blast

# install samtools
conda install -c bioconda samtools

# install bedtools
conda install -c bioconda bedtools

# install spades
conda install -c bioconda spades

# install bcftools
conda install -c bioconda bcftools

# install fastp
conda install -c bioconda fastp

# install multiqc
conda install -c bioconda multiqc

##############################
# Professional Profile
##############################

# push to github
echo "GitHub Repo: https://github.com/FunmilayoJokotoye/hackbio-stage0.sh/blob/main/hackbio_stage0.sh"

# share linkedin video
echo "GitHub Repo: <your_github_repo_link>"
echo "LinkedIn Video: <your_linkedin_video_link>"


