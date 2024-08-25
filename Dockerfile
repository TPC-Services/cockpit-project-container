FROM fedora:41

# Install Cockpit and dependencies
RUN dnf -y update && \
    dnf install -y cockpit cockpit-dashboard cockpit-system cockpit-networkmanager && \
    dnf clean all

# Expose Cockpit port
EXPOSE 9090

# Run Cockpit in foreground
CMD ["/usr/libexec/cockpit-ws", "--no-tls", "--local-ssh"]
