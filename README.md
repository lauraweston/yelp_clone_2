# Yelp clone

Ruby version 2.3.1

### Installation
- clone git repo
- gem install bundler
- bundle install

### Set up:
Store facebook API keys in ```set_fb_keys.sh``` , e.g.:
```
export FACEBOOK_APP_ID=[insert api id here]
export FACEBOOK_APP_SECRET=[insert app secret here]
```

### Database:
- Install postgres
- ```bin/rake db:create```
- ```bin/rake db:migrate```

### Testing
- ```rspec```
