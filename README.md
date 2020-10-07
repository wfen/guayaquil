# guayaquil

The guayaquil project leverages an open-source tooling/test harness ([Maelstrom](https://jepsen-io/maelstrom)) from the distributed systems experts at [Jepsen](https://jepsen.io/). My goal is to deeply study the Raft algorithm for replicated state machine consensus, and, following the Raft paper, implement my own linearizable key-value distributed datastore. The Jepsen test harness simulates the network between nodes, and the requests made by clients, facilitating the verification of my distributed system. Specifically, it uses the Knossos consistency checker to verify that the simulated cluster's behavior is linearizable. In this environment, "network" messages are sent and received as JSON via stdin and stdout, allowing me to focus on concurrency and correctness.

Kyle Kingsbury of Jepsen provides some preparatory reading about [consistency models(https://jepsen.io/consistency). His company has [analyzed many distributed systems](https://jepsen.io/analyses) and worked with their customers to understand and resolve any observed consistency anonmalies. I also encourage you to explore his highly creative [talks](https://jepsen.io/talks) and dig deeper by reading his [blog](https://aphyr.com/).

In addition to Jepsen's [Knossos](https://github.com/jepsen-io/knossos) linearizability checker that is leveraged by their [Maelstrom](https://jepsen-io/maelstrom) test suite, another widely deployed tool for testing for linearizability is [Porcupine](https://github.com/anishathalye/porcupine).

---

Bundled inside this repository is a snapshot build of the Maelstrom clojure code from early October 2020. This snapshot works with Jepsen 0.1.19. I have been successfully running using the Java 8 version supplied by Apple in macOS Catalina. I had similar results when run on Red Hat Enterprise Linux 8.2.
