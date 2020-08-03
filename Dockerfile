FROM continuumio/miniconda3:4.8.2
MAINTAINER Pablo Escobar <pablo.escobarlopez@unibas.ch>

# add conda channels
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

# conda-forge installations
RUN conda install --yes -c conda-forge biopython=1.77
RUN conda install --yes -c conda-forge pandas==1.1.0
RUN conda install --yes -c conda-forge unzip

# bioconda installations
RUN conda install --yes -c bioconda picard==2.23.3

ENV ARLEQUIN_VERSION=3522
# download "arlecore" binary to /usr/local/bin
RUN wget -O /var/tmp/arlecore_linux.zip -nc http://www.cmpg.unibe.ch/software/arlequin35/linux/arlecore_linux.zip && \
    unzip -j /var/tmp/arlecore_linux.zip arlecore_linux/arlecore${ARLEQUIN_VERSION}_64bit -d /usr/local/bin/ && \
    ln -s /usr/local/bin/arlecore${ARLEQUIN_VERSION}_64bit /usr/local/bin/arlecore && \
    chmod +x /usr/local/bin/arlecore${ARLEQUIN_VERSION}_64bit

# download "arlsumstat" binary to /usr/local/bin
RUN wget -O /var/tmp/arlsumstat_linux.zip -nc http://www.cmpg.unibe.ch/software/arlequin35/linux/arlsumstat_linux.zip && \
    unzip -j /var/tmp/arlsumstat_linux.zip arlsumstat_linux/arlsumstat${ARLEQUIN_VERSION}_64bit -d /usr/local/bin/ && \
    ln -s /usr/local/bin/arlsumstat${ARLEQUIN_VERSION}_64bit /usr/local/bin/arlsumstat && \
    chmod +x /usr/local/bin/arlsumstat${ARLEQUIN_VERSION}_64bit
