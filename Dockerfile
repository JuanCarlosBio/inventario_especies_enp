# Start from an official Ubuntu image
FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/miniconda3/bin:$PATH"

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    ca-certificates \
    libglib2.0-0 \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Download and install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /root/miniconda.sh && \
    bash /root/miniconda.sh -b -u -p /root/miniconda3 && \
    rm -rf /root/miniconda.sh

# Copy conda environment file into the container
COPY . /app

# Activate Conda and create the environment from YAML
RUN conda env create -f /app/conda_env.yml && conda clean -a -y

# Set the default environment
ENV CONDA_DEFAULT_ENV=myenv
SHELL ["conda", "run", "-n", "inventario_especies_gc", "/bin/bash", "-c"]

# Verify environment
RUN conda info --envs

# Install additional dependencies (if needed)
RUN pip install --upgrade pip

# Init conda
RUN conda init
RUN source /root/.bashrc

## Running Snakefile
WORKDIR /app/
RUN activate inventario_especies_gc
RUN snakemake -c 1

# Set default command
#CMD ["/bin/bash"]
CMD ["/bin/bash"]
