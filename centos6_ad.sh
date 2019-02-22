yum -y install adcli sssd authconfig pam_krb5 samba4-common
authconfig --enablekrb5 --krb5kdc=fd3s.srv.world --krb5adminserver=fd3s.srv.world --krb5realm=FD3S.SRV.WORLD --enablesssd --enablesssdauth --update
adcli join CCDC.COM
cp ./sssd.conf /etc/sssd/sssd.conf
chmod 600 /etc/sssd/sssd.conf
echo "session     optional      pam_mkhomedir.so skel=/etc/skel umask=077" >> /etc/pam.d/system-auth
/etc/rc.d/init.d/sssd start
