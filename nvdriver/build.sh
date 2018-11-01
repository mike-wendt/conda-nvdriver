# Grab driver
wget http://us.download.nvidia.com/tesla/396.44/NVIDIA-Linux-x86_64-396.44.run

# Install driver
sh ./NVIDIA*run --no-kernel-module --no-nvidia-modprobe --no-x-check -a -s

# Copy libraries to conda env
cp /usr/lib/x86_64-linux-gnu/lib*cuda* $PREFIX/lib/
cp /usr/lib/x86_64-linux-gnu/lib*nvidia* $PREFIX/lib/
mkdir -p $PREFIX/lib/tls/
cp /usr/lib/x86_64-linux-gnu/tls/lib*nvidia* $PREFIX/lib/tls/

# Clean up
rm -f NVIDIA*run
