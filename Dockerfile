FROM ubuntu
RUN apt-get update && apt-get install -y util-linux systemd
COPY test.service /etc/systemd
CMD ["unshare", "--pid", "--fork", "--mount-proc", "/lib/systemd/systemd"]
