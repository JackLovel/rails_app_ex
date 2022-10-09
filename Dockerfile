FROM ruby:3.2-rc-slim

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    less \
    git \
    libvips42 \
    sqlite3 \ 
    libsqlite3-dev \ 
    nodejs \  
    vim  
    
RUN EDITOR=vim bin/rails credentials:edit'

ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3 \
  RAILS_ENV=production

RUN gem update --system && gem install bundler

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle config frozen true \
 && bundle config jobs 4 \
 && bundle config deployment true \
 && bundle config without 'development test' \
 && bundle install

COPY . .

# Precompile assets
# SECRET_KEY_BASE or RAILS_MASTER_KEY is required in production, but we don't
# want real secrets in the image or image history. The real secret is passed in
# at run time
# ARG SECRET_KEY_BASE=fakekeyforassets
RUN bin/rails assets:clobber && bundle exec rails assets:precompile


ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
