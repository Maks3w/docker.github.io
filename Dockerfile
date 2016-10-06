FROM starefossen/github-pages:onbuild

ONBUILD RUN git clone https://www.github.com/docker/docker.github.io docs

ONBUILD WORKDIR docs

ONBUILD RUN git checkout v1.9

ONBUILD COPY . /usr/src/app

CMD jekyll serve -d /_site --watch -H 0.0.0.0 -P 4000
