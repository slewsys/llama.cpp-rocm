# Build and install llama.cpp for HIP/ROCm

These scripts are intended to be run on Fedora 43. They build and
install the **llama.cpp** LLM inference suite with support for
[AMD ROCm](https://www.amd.com/en/products/software/rocm.html)
on
[Strix Halo](https://www.amd.com/en/blogs/2025/amd-ryzen-ai-max-395-processor-breakthrough-ai-.html).
`llama-server`, `llama-cli`, et al. and their shared libraries are
installed (properly) under */usr/local*.

Scripts for building ROCm-aware versions of **UCX** and **OpenMPI**
are included, though, currently, building of **ROCm** from source is not
supported.

[asdf](https://asdf-vm.com/)
version manager is installed as needed to provide a local Python and
golang. Shell init files (e.g., *~/.bashrc*, *~/.bash_profile*) are
**not** modified. To benefit from `asdf`, add its install directory
(*${HOME}/bin*) and shims path (*${HOME}/.asdf/shims*) to the shell
init files, e.g.:

```
: ${ASDF_DATA_DIR:="${HOME}/.asdf"}

export PATH=${ASDF_DATA_DIR}/shims:${PATH}:${HOME}/bin
```
