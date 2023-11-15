# jetson-ffmpeg-conda-package-builder

> [!IMPORTANT]  
> **The `jetson-ffmpeg` channel is currently untested, and may not work.**

This repo contains scripts and documentation related to the **untested** [`jetson-ffmpeg`](https://anaconda.org/jetson-ffmpeg) conda channel. This channel provides [`conda-forge`]()-compatible builds of ffmpeg, with the additional `<..>_nvmpi` codecs to support hardware-accelerated encoding and decoding on NVIDIA Jetson systems, using the [`l4t-multimedia`](https://docs.nvidia.com/jetson/l4t-multimedia/) Jetpack-specific API. This repo only packages for conda the software developed in the following repos:
* [https://github.com/jocover/jetson-ffmpeg](https://github.com/jocover/jetson-ffmpeg)
* [https://github.com/Keylost/jetson-ffmpeg](https://github.com/Keylost/jetson-ffmpeg)
* [https://github.com/madsciencetist/jetson-ffmpeg](https://github.com/madsciencetist/jetson-ffmpeg)


## Install

> [!IMPORTANT]  
> **Do not install this packages on non-Jetson systems, as otherwise ffmpeg will fail due to the missing `l4t`-related libraries.**

> [!IMPORTANT]  
> **The packages in the ``jetson-ffmpeg` conda channel are meant to be used together with dependencies provided by `conda-forge`  channel.**

To use the packages contained in the [`jetson-ffmpeg`](https://anaconda.org/jetson-ffmpeg), just add the `jetson-ffmpeg` to the channel used to create your conda environent, with a higher priority w.r.t. `conda-forge`, and then install `ffmpeg=*=*jetsonffmpeg*` . For example, if you want to create an environent with `opencv` and ffmpeg with jetson support, run:
~~~
conda create -n opencvjetson -c jetson-ffmpeg -c conda-forge opencv ffmpeg=*=*jetsonffmpeg*
~~~

It is important to make sure that `jetson-ffmpeg` has higher priority w.r.t. to `conda-forge`, as the `ffmpeg` package contained in this channel is a drop-in replacement for the one provided by `conda-forge` .
