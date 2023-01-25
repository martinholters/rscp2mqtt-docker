# Docker image for [RSCP2MQTT - Bridge between an E3/DC S10 device and an MQTT broker](https://github.com/pvtom/rscp2mqtt.git)

## Usage

Create a configuration file as decribed at
https://github.com/pvtom/rscp2mqtt#configuration--test and -- assuming it is stored at
`/path/to/your/rscp2mqtt.config`, invoke:
```
docker run --rm -v /path/to/your/rscp2mqtt.config:/opt/rscp2mqtt/.config martinholters/rscp2mqtt
```

That's it.
