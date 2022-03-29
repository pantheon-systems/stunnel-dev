Stunnel dev
-----------

[![Unsupported](https://img.shields.io/badge/Pantheon-Unsupported-yellow?logo=pantheon&color=FFDC28)](https://pantheon.io/docs/oss-support-levels#unsupported)

Install https://github.com/schisamo/vagrant-omnibus using:

```
vagrant plugin install vagrant-omnibus
```

```
vagrant up
vagrant ssh
```

Then, in the VM:

```
journalctl -o short-monotonic -p7 -f --full
/bin/stunnel /etc/stunnel/server.conf
systemctl start nginx
systemctl daemon-reload; systemctl stop stunnel.socket; systemctl stop stunnel.service; systemctl start stunnel.socket; curl localhost:9999
```

Stunnel unmodified is `/bin/stunnel`, the compiled version lands in `/usr/local/bin/stunnel`.

Compiling stunnel:

```
cd /vagrant/src/stunnel-5.01
./configure
make
sudo make install
```

