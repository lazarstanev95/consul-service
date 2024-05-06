# Use the official Consul Docker image
FROM consul:1.11.0

# Copy custom configuration file into the container
COPY config.json ./

# Expose ports for Consul client and server communications
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp

# Command to start Consul agent in server mode
CMD ["agent", "-server", "-ui", "--bootstrap-expect=1", "-client=0.0.0.0", "-data-dir=/consul/data"]
