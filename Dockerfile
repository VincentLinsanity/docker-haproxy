FROM haproxy:1.6
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY server.pem /usr/local/etc/haproxy/server.pem
 
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
