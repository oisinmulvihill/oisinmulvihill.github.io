# Oisin Mulvihill Dot Com

The Github Pages repository for me personal site https://www.oisinmulvihill.com or if I've broken the DNS again https://oisinmulvihill.github.io.

## Development

My just-good-enough-hack to run Jekyll locally to aid development.

### Build initial image

<pre>
export JEKYLL_VERSION=3.8

# create an instance to start and download plugins. I'll save the changes.
docker run --name=om-jekyll  \
  --volume="$PWD:/srv/jekyll" \
  -p 4000 \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll build


$ docker ps -a
CONTAINER ID        IMAGE                COMMAND                  CREATED             STATUS                     PORTS               NAMES
69b99b673d54        jekyll/builder:3.8   "/usr/jekyll/bin/ent…"   12 minutes ago      Exited (0) 4 minutes ago                       om-jekyll

oisin@tarsis [oisinmulvihill.github.io]
$ docker commit 69b99b673d54  jekyll/builder:3.8-oisin

</pre>

### Run with all dependancies installed

<pre>

export JEKYLL_VERSION=3.8

docker run --rm  \
  --volume="$PWD:/srv/jekyll" \
  -p 4000:4000 \
  -it jekyll/builder:$JEKYLL_VERSION-oisin \
  jekyll serve --watch --incremental

</pre>

