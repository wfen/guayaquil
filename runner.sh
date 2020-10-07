#lein run test --bin <executable> --nodes n1 --time-limit 10 --rate 0 --log-stderr
java -jar maelstrom/maelstrom.jar test --bin app/raft --nodes n1 --time-limit 10 --rate=0 --log-stderr
