# Cloud comparison for Transcript-Annotation data analysis pipeline

## Introduction

The annotation of transcripts with functional and biological processes is an important step in developing an understanding of the biological complexity of an organism. Annotation is a complex process that requires the integration of multiple biological databases and several software tools.

A review of published manuscripts since 2012 [1-9] reveals that many developed pipelines have a common core component which is the NCBI BLAST tool [10]. This tool is used to align the assembled transcriptomes against annotated databases of nucleotides or proteins. These alignments are the first step, after an assembly, to identifying close and/or distant homologous genes, proteins, and functional domains that could be cross-referenced with other public databases, such as Gene Ontology [11], to generate a new annotation.

Our study is based on a workflow for [transcriptome annotation](https://github.com/ncbi/cwl-ngs-workflows-cbb/blob/master/workflows/Annotation/transcriptome_annotation.cwl). 

<img src="./doc/transcriptome_annotation.cwl.png" width="600" height="400"/>

This workflow is comprised of five steps that include the most important steps required for the transcriptome annotation. First, TransDecoder [12] is used to generate all open reading frames (ORFs) from the transcripts. Then, BLASTP and RPS-BLAST are used to generate a list of homologous proteins and conserved domains. BLASTP uses the BLAST nr database, and RPS-BLAST uses the NCBI Conserved Domain Database (CDD)[13]. In parallel, BLASTN and RPST-BLASTN are executed, using the BLAST nt database and the NCBI CDD database, respectively. These steps generate a list of homologous genes and conserved domains. The workflow uses as input a FASTA file, named query, with multiple transcripts to process. The variation in the query size, i.e., number of transcripts in the file, is also studied.

We used the transcriptome assembled from a public BioProject with the ID [PRJNA320545](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA320545) for the organism Opuntia streptacantha. The transcriptome includes 474,563 transcripts. From this pool of transcripts, three types of queries (FASTA files) were randomly generated, with 2,000, 6,000, and 10,000 transcripts in each. For each query size, 20 different files were generated and processed independently.

## Cloud platforms

We tested GCP and AWS cloud providers using similar machine types between them. First and second generation machines were tested with 16, 32 and 64 CPUs. GCP first generation machines are labbeled with **N1** and second generation with **N2**. AWS first generation are labbeled with **M5D** and second generation with **M5DN**. 

Three times and cost were analyzed and shown in the next plots. First, total billed time and cost all tested configurations. Then, the time and cost for instance creation, setup and release and finally, times and cost for the transfer of the Blast databases, currently 342 GB that includes (nt, nr and CDD).

## Notebooks

 1. [00 - Project Report](./notebooks/00%20-%20Project%20Report.ipynb) This notebook shows the final figures generated from the resulting files of both cloud providers.
 2. [01 - Data Partitioning](./notebooks/01%20-%20Data%20Partitioning.ipynb) This notebook is used to generate 20 FASTA file from the Nopal transcriptome to be tested on each cloud provider.
 3. [02 - Google cloud Platform](./notebooks/02%20-%20Google%20cloud%20Platform.ipynb) This is the notebook used to process the 20 FASTA files on GCP.
 4. [02 - AWS](./notebooks/02%20-%20AWS.ipynb)  This is the notebook used to process the 20 FASTA files on AWS.

## Basic requirements

1. Miniconda Python 3.7.x

## Installation

### Installing Miniconda

Download and execute the Miniconda installer. Us all default instructions. 

```bash
$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
$ sh ./Miniconda3-latest-MacOSX-x86_64.sh
```

### Instalation of Conda environment

```bash
$ wget https://raw.githubusercontent.com/r78v10a07/cloud-transcriptome-annotation/master/environment.yml
$ conda env create -f environment.yml
```

## Cloning the repo and starting the Jupyter Notebook server

```bash
$ conda activate bioconda
$ git clone https://github.com/r78v10a07/cloud-transcriptome-annotation
$ jupyter notebook
```

Notebooks are located in the folder `notebooks`

### References

1.	Al-Qurainy, F. et al. Comprehensive Stress-Based De Novo Transcriptome Assembly and Annotation of Guar (Cyamopsis tetragonoloba (L.) Taub.): An Important Industrial and Forage Crop. Int J Genomics 2019, 7295859, doi:10.1155/2019/7295859 (2019).
2.	Chabikwa, T. G., Barbier, F. F., Tanurdzic, M. & Beveridge, C. A. De novo transcriptome assembly and annotation for gene discovery in avocado, macadamia and mango. Sci Data 7, 9, doi:10.1038/s41597-019-0350-9 (2020).
3.	Ji, P. et al. Characterization of common carp transcriptome: sequencing, de novo assembly, annotation and comparative genomics. PLoS One 7, e35152, doi:10.1371/journal.pone.0035152 (2012).
4.	Torre, S. et al. RNA-seq analysis of Quercus pubescens Leaves: de novo transcriptome assembly, annotation and functional markers development. PLoS One 9, e112487, doi:10.1371/journal.pone.0112487 (2014).
5.	Carruthers, M. et al. De novo transcriptome assembly, annotation and comparison of four ecological and evolutionary model salmonid fish species. BMC Genomics 19, 32, doi:10.1186/s12864-017-4379-x (2018).
6.	Haas, B. J. et al. De novo transcript sequence reconstruction from RNA-seq using the Trinity platform for reference generation and analysis. Nat Protoc 8, 1494-1512, doi:10.1038/nprot.2013.084 (2013).
7.	Bryant, D. M. et al. A Tissue-Mapped Axolotl De Novo Transcriptome Enables Identification of Limb Regeneration Factors. Cell Rep 18, 762-776, doi:10.1016/j.celrep.2016.12.063 (2017).
8.	Vera Alvarez, R. et al. Workflow and web application for annotating NCBI BioProject transcriptome data. Database (Oxford) 2017, doi:10.1093/database/bax008 (2017).
9.	Gamez, R. M. et al. Banana (Musa acuminata) transcriptome profiling in response to rhizobacteria: Bacillus amyloliquefaciens Bs006 and Pseudomonas fluorescens Ps006. BMC Genomics 20, 378, doi:10.1186/s12864-019-5763-5 (2019).
10.	Altschul, S. F., Gish, W., Miller, W., Myers, E. W. & Lipman, D. J. Basic local alignment search tool. J Mol Biol 215, 403-410, doi:10.1016/S0022-2836(05)80360-2 (1990).
11.	Ashburner, M. et al. Gene ontology: tool for the unification of biology. The Gene Ontology Consortium. Nat Genet 25, 25-29, doi:10.1038/75556 (2000).
12.	Haas, B. & Papanicolaou, A. TransDecoder (Find Coding Regions Within Transcripts), <https://github.com/TransDecoder/TransDecoder/wiki> (2020).
13.	Yang, M., Derbyshire, M. K., Yamashita, R. A. & Marchler-Bauer, A. NCBI's Conserved Domain Database and Tools for Protein Domain Analysis. Curr Protoc Bioinformatics 69, e90, doi:10.1002/cpbi.90 (2020).
  

# Public Domain notice

National Center for Biotechnology Information.

This software is a "United States Government Work" under the terms of the United States
Copyright Act. It was written as part of the authors' official duties as United States
Government employees and thus cannot be copyrighted. This software is freely available
to the public for use. The National Library of Medicine and the U.S. Government have not
 placed any restriction on its use or reproduction.

Although all reasonable efforts have been taken to ensure the accuracy and reliability
of the software and data, the NLM and the U.S. Government do not and cannot warrant the
performance or results that may be obtained by using this software or data. The NLM and
the U.S. Government disclaim all warranties, express or implied, including warranties
of performance, merchantability or fitness for any particular purpose.

Please cite NCBI in any work or product based on this material.
