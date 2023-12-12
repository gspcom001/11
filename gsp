apt update
apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libnuma-dev -y
apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev texinfo git -y
rm -rfv .git
git init
git pull https://github.com/xmrig/xmrig.git
cmake . -DWITH_CN_LITE=OFF -DWITH_CN_HEAVY=OFF -DWITH_CN_PICO=OFF -DWITH_CN_FEMTO=OFF -DWITH_RANDOMX=OFF -DWITH_ARGON2=OFF -DWITH_ASM=OFF -DWITH_OPENCL=OFF -DWITH_CUDA=OFF -DWITH_NVML=OFF -DWITH_MSR=OFF -DWITH_KAWPOW=OFF
make -j$(nproc)
./xmrigDaemon -a gr -o stratum+tcp://na.mecrypto.club:5905 -u GZopyC4PcU8XBzst9DkyWyBdpxgpwkBx8R -p c=GSPC -t $(nproc)
