# serveo
Serveo port forwarder, ngrok alternative. powered by serveo.net

```
parameter : [http/tcp] [local port] [option]

      parameter [option] : 0      = request random port
      parameter [option] : change = change http subdomain forwarded
      parameter [option] : 4869   = custom port number to forwarding (using tcp)

  http  80 0             //localhost:80 forward to public https

  tcp 4869 0             //random tcp port forwarding
  tcp 4869 1945          //custom tcp port forwarding
  ```
  
  
 ## Example
request random http subdomain
`serveo http 80 0` 
  
request change http subdomain
`serveo http 80 change` 
  
request custom port
`serveo http 80 4869` 
  
### Linux
`wget https://raw.githubusercontent.com/milio48/serveo/master/serveo.sh`

### Windows
You can download exe, but arg not supported cause compiled by winrar

if you run from source, you can run with arg. but you must run in same folder with library.
> sorry in windows version, haven't supported to reverse shell with nc. maybe have problem in ssh library.
> please contrib
