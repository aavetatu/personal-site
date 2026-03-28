## Install docker 

## Build and run service locally

    $ docker build --tag web .
    $ docker run --rm -p 3000:3000 web:latest
    $ curl -I localhost:3000
    HTTP/1.1 200 OK
    Vary: rsc, next-router-state-tree, next-router-prefetch, next-router-segment-prefetch, Accept-Encoding
    link: </_next/static/media/47df9ba1c7236d3b-s.p.7bbb93ea.woff2>; rel=preload; as="font"; crossorigin=""; type="font/woff2", </_next/static/media/c825fd02acae0153-s.p.1692d83b.woff2>; rel=preload; as="font"; crossorigin=""; type="font/woff2"
    Cache-Control: no-store, must-revalidate
    X-Powered-By: Next.js
    Content-Type: text/html; charset=utf-8
    Date: Sat, 28 Mar 2026 14:42:59 GMT
    Connection: keep-alive
    Keep-Alive: timeout=5

## Install docker-compose

## Build service with docker compose

    docker compose up --build
    $ curl -I localhost:3000
    HTTP/1.1 200 OK
    Vary: rsc, next-router-state-tree, next-router-prefetch, next-router-segment-prefetch, Accept-Encoding
    link: </_next/static/media/47df9ba1c7236d3b-s.p.7bbb93ea.woff2>; rel=preload; as="font"; crossorigin=""; type="font/woff2", </_next/static/media/c825fd02acae0153-s.p.1692d83b.woff2>; rel=preload; as="font"; crossorigin=""; type="font/woff2"
    Cache-Control: no-store, must-revalidate
    X-Powered-By: Next.js
    Content-Type: text/html; charset=utf-8
    Date: Sat, 28 Mar 2026 17:06:34 GMT
    Connection: keep-alive
    Keep-Alive: timeout=5
