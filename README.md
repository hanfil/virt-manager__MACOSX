# virt-manager__MACOSX
Installation of virt-manager on Mac OSX

Download the installation script and run it:
  sh ./virt-manager_install.sh
  
If you get problem connecting to server try this command:
  virt-manager -c qemu+ssh://root@10.0.0.1/system?socket=/var/run/libvirt/libvirt-sock
  
  Change root with the right username you want to connect with,
  and change 10.0.0.1 with the proper ip pointing to your server.
