docker run -ti --detach --name full-node \
       -v `pwd`:/etc/nodeos -v /tmp/nodeos-data:/data \
       -p 8888:8888 -p 9876:9876 \
       lemonswang/eos:mainnet-1.0.5 \
       /opt/eosio/bin/nodeos --data-dir=/data \
                             --config-dir=/etc/nodeos \
                             --genesis-json=/etc/nodeos/genesis.json \
                             --p2p-listen-endpoint=127.0.0.1:65432
