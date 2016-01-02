for i in $(systemctl | egrep 'openstack|neutron' | grep -v losetup | awk '{print $1}'); do cat << EOF > /etc/sensu/conf.d/check-$i.json; done
{
  "checks": {
     "$i": {
      "command": "systemctl status $i",
      "standalone": true,
      "interval": 10,
      "handler": "pager"
    }
  }
}
EOF