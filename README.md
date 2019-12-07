<h2 align="center">
  <img src="https://github.com/Dreamacro/clash/raw/master/docs/logo.png" alt="Clash" width="200">
  <br>Clash for OpenWrt <br>

</h2>

  <p align="center">
	A rule based custom proxy for Openwrt based on <a href="https://github.com/Dreamacro/clash" target="_blank">Clash</a>.
  </p>
  <p align="center">
	<a target="_blank" href="https://github.com/frainzy1477/clash/releases/tag/v0.16.5">
    <img src="https://img.shields.io/badge/clash-v0.16.5-orange.svg">
  </a>
  
  </p>
  
## Usage

- Download and install clash ipk for openwrt [Download Clash ipk](https://github.com/frainzy1477/clash/releases/tag/v0.16.5) .

- cd /tmp

- opkg install clash_0.16.5_x86_64.ipk



## Features

- HTTP/HTTPS and SOCKS protocol
- Surge like configuration
- GeoIP rule support
- Support Vmess/Shadowsocks/Socks5
- Support for Netfilter TCP redirect
- Support Shadowsocks-V2ray-plugin
- Support Shadowsocks-Obfs-plugin
- Support Custom Rule
- Support fake-ip
- logs and traffic API support websocket
- support custom hosts (NOTE: if a host pointed to a local IP but pass through a proxy by rule, it won't use DIRECT)
- support customizing bind-address when allow-lan is true 
- trace adapters when dialing 
- allow arbitrary order in proxy group 
- add read clash version API
- add dns fallback filters 
- v2ray-plugin support disable mux
- proxy group use correctly last speed test record
- experimental support snell
- fakeip small-probability missing record

## License

Clash for OpenWrt is released under the MIT License - see detailed [LICENSE](https://github.com/frainzy1477/clash/blob/rm/LICENSE) .

