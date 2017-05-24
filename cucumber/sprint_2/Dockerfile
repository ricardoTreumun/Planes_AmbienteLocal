# Base the image off of the latest pre-built rails image
FROM rails

# make and switch to the /app directory which will hold our app
RUN mkdir /cucumber-viajes
WORKDIR /cucumber-viajes

# move over the Gemfile and Gemfile.lock before the rest of the app so that we can cache the installed gems
ADD Gemfile /cucumber-viajes/Gemfile
ADD Gemfile.lock /cucumber-viajes/Gemfile.lock

# install all gems specified by the Gemfile
RUN bundle install

# add repository
RUN echo 'deb http://mozilla.debian.net/ jessie-backports firefox-esr' >> /etc/apt/sources.list

# install latest firefox
RUN apt-get update && \
apt-get install -y --force-yes --fix-missing -t jessie-backports \
firefox-esr \
xvfb

# install and extract geckodriver and extrac
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz && \
tar -xvzf geckodriver-v0.15.0-linux64.tar.gz

# set geckodriver as executable 
RUN chmod a+x geckodriver
RUN mv geckodriver /usr/bin/geckodriver

# copy over the rest of the rails app files
ADD . /cucumber-viajes

# enable xvfb-firefox script
RUN chmod a+x xvfb-firefox

#CMD execute cucumber
CMD ./xvfb-firefox
