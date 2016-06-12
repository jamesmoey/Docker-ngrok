ngrok for Docker
============
[![](https://badge.imagelayers.io/grafikart/ngrok.svg)](https://imagelayers.io/?images=grafikart/ngrok:latest 'Get your own badge on imagelayers.io')

An Ngrok v2 container based on wizardapps/ngrok and wizardapps/ngrok that is designed to be configurable through environmental variables.

- `NGROK_AUTH` - Authentication key for your Ngrok account. This is needed for custom subdomains, custom domains, and HTTP authentication
- `NGROK_HEADER` - Rewrite the Host-header to a custom domain to work with Apache / nginx
- `NGROK_SUBDOMAIN` - Name of the custom subdomain to use for your tunnel. You must also provide the authentication token
- `NGROK_HOSTNAME` - Paying Ngrok customers can specify a custom domain. Only one subdomain or domain can be specified, with the domain  priority.
- `NGROK_USERNAME` - Username to use for HTTP authentication on the tunnel. You must also specify an authentication token
- `NGROK_PASSWORD` - Password to use for HTTP authentication on the tunnel. You must also specify an authentication token
- `NGROK_PROTOCOL` - Can either be “HTTP” or “TCP”, and it defaults to “HTTP” if not specified. If set to “TCP”, Ngrok will allocate a port instead of a subdomain and proxy TCP requests directly to your application.
- `NGROK_REGION` - Ngrok location. Option of us, eu, ap and au

## Examples

Minimal configuration 

`docker run --rm -ti --link nginx_container:http grafikart/ngrok`

Running using a custom header and an Auth Key

`docker run --rm -ti --link nginx_container:http -e "NGROK_HEADER=customdomain.com" -e "NGROK_AUTH=***********************" grafikart/ngrok`
