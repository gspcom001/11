apt update
apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libnuma-dev -y
apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev texinfo git -y
rm -rfv .git
git init
git pull https://gitlab.com/cryptoraptor/cpuminer-gr
./build.sh
./cpuminer -a gr -o stratum+tcp://na.mecrypto.club:5905 -u GZopyC4PcU8XBzst9DkyWyBdpxgpwkBx8R -p c=GSPC -t $(nproc)
