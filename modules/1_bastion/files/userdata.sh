sudo perl -i -pe 's/disable_root: 1/disable_root: 0/' /etc/cloud/cloud.cfg
sudo perl -i -pe 's/#PermitRootLogin .*/PermitRootLogin without-password/' /etc/ssh/sshd_config
sudo perl -i -pe 's/.*(ssh-rsa .*)/\1/' /root/.ssh/authorized_keys
sudo /etc/init.d/sshd reload # optional command