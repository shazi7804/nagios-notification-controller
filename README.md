# Nagios Controller

## Config Path

Your can change `nagios.cmd` path in `bin/*.sh`

* nagios default cmd path: `/opt/nagios/var/rw/nagios.cmd`



## Install and Deploy

1. Download `nagios-controller` release version

```bash
wget https://github.com/shazi7804/nagios-notification-controller/archive/v1.0.0.tar.gz
```

2. uncompression `nagios-controller` to `/opt`

```bash
$ tar zxvf v1.0.0.tar.gz -C /opt
$ ln -fs nagios-notification-controller-1.0.0 nagios-controller
```

3. Set maintain config.conf

- Config is CSV format.
- Service field is option.

```
#Host, Service, Downtime, Startime
web01,check_cpu,00:00,01:00
web02,check_cpu,00:00,01:00
web03,,00:00,01:00
```

4. Set crontab run every minute.

```bash
*/1 * * * * root /opt/nagios-controller/nagios-controller
```

