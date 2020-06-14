Oisin Mulvihill's internet island
=================================

Local Development
-----------------

Help me render locally before actually committing and uploading::

  # From a checkout of git@github.com:oisinmulvihill/oisinmulvihill.github.io.git
  #
  # (Re)Render as needed while I make changes. Go to http://localhost:4000 to see results.
  #
  docker run --rm -p 4000:4000  --volume="$PWD:/srv/jekyll"  -it jekyll/jekyll:3.8 jekyll serve
