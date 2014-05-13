Stunnel dev
-----------

```
vagrant up
vagrant ssh
```

Then, in the VM:

```
/bin/stunnel /etc/stunnel/server.conf
systemctl start nginx
systemctl daemon-reload; systemctl stop stunnel.socket; systemctl stop stunnel.service; systemctl start stunnel.socket; curl localhost:9999
```

Stunnel unmodified is /bin/stunnel, the compiled version lands in /usr/local/bin/stunnel.

Compiling stunnel:

```
cd /vagrant/src/stunnel-5.01/src
./configure
make
sudo make install
```

