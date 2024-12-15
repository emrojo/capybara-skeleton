FROM ruby:3.4.0-rc1-bookworm
RUN mkdir /code
COPY . /code
WORKDIR /code
RUN apt update
RUN apt install
RUN bundle install

# Install Chrome for being able to run tests
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt update
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN rm ./google-chrome-stable_current_amd64.deb

RUN bundle exec rspec
CMD bundle exec rspec
