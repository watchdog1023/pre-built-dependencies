FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN sudo apt update
RUN sudo apt-get install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev  libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libtbb-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip build-essential cmake cmake-curses-gui pkg-config libjpeg-dev libtiff5-dev libavcodec-dev libavformat-dev libswscale-dev libeigen3-dev libxvidcore-dev libx264-dev libgtk2.0-dev libv4l-dev v4l-utils libatlas-base-dev gfortran python2.7-dev python3-dev python3-numpy libavresample-dev libgphoto2-dev libopenexr-dev -y
RUN sudo apt install checkinstall libsfml-dev -y
