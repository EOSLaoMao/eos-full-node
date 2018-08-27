docker run -ti --detach --name full-node \
       -v `pwd`:/etc/nodeos -v /tmp/nodeos-data:/data \
       -p 8889:8888 -p 9878:9876 \
       eoslaomao/eos:1.2.2 \
       /opt/eosio/bin/nodeos --data-dir=/data \
                             --config-dir=/etc/nodeos \
                             --genesis-json=/etc/nodeos/genesis.json \
                             --p2p-listen-endpoint=127.0.0.1:65432
