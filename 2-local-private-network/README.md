## Setting Up the Besu Network

### Pre-requisites

Before you begin, ensure you have the following installed:

- [Hyperledger Besu](https://besu.hyperledger.org/private-networks/get-started/install/binary-distribution)
- [Prometheus (optional)](https://prometheus.io/download/)

The `Sample_Network` folder is preconfigured for local execution. To start the network, follow these steps:

1. Navigate to the scripts folder:

```bash
cd scripts
```

2. Set execution permissions for the scripts:

```bash
chmod +x start_node1.sh && chmod +x start_node2.sh && chmod +x start_node3.sh
```

3. Start the first node:

```bash
./start_node1.sh
```

4. Open a new terminal and start the second node:

```bash
./start_node2.sh
```

5. Open another terminal and start the third node:

```bash
./start_node3.sh
```

### Monitoring the Network

To monitor the network using Prometheus, follow these steps:

1. Navigate to the scripts folder:

```bash
cd scripts
```

2. Install prometheus:

```bash
brew install prometheus
```

3. Start Prometheus:

```bash
./start_prometheus.sh
```

4. Open a browser and navigate to `http://localhost:9090` to access the Prometheus dashboard. More infomation on setting up Prometheus can be found in the [Hyperledger Besu documentation](https://besu.hyperledger.org/development/public-networks/how-to/monitor/metrics#view-prometheus-graphical-interface).

To know more about the network setup, refer to the [Hyperledger Besu documentation](https://besu.hyperledger.org/private-networks/tutorials/clique).
