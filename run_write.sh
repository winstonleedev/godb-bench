#!/usr/bin/env bash
#set -x
export GOMAXPROCS=128
export LD_LIBRARY_PATH=/usr/local/lib

/usr/bin/time -v godb-bench --kv badger --valsz 16384 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv rocksdb --valsz 16384 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv bolt --valsz 16384 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv leveldb --valsz 16384 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv lmdb --valsz 16384 --keys_mil 1 --dir data >> time.log

# /usr/bin/time -v godb-bench --kv badger --valsz 1024 --keys_mil 1 --dir data
# /usr/bin/time -v godb-bench --kv badger --valsz 16384 --keys_mil 1 --dir data