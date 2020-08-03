# scicore-stph-pipeline-01

This container includes the following apps from [BioConda](https://bioconda.github.io/index.html)
and [CONDA-FORGE](https://conda-forge.org/)

```
biopython=1.77
pandas==1.1.0
picard==2.23.3
```

It also provides [Arlequin ver 3.5.2.2](http://www.cmpg.unibe.ch/software/arlequin35/)

## Downloading the container with Singularity (latest)

   `$> singularity pull "pipeline_stph_01.sif" docker://pescobar/scicore-stph-pipeline-01:latest`

## Downloading the container with Singularity (specific version)

   `$> singularity pull "pipeline_stph_0.0.1.sif" docker://pescobar/scicore-stph-pipeline-01:0.0.1`

## Using the container with singularity

   `$> singularity exec pipeline_stph_0.0.1.sif picard --help`

## Interactive shell inside the container with singularity

   `$> singularity shell pipeline_stph_0.0.1.sif`
