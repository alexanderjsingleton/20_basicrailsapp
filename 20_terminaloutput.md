➜  20_Basic  rails new bloccit -T
      create
      create  README.rdoc
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      create  app/assets/javascripts/application.js
      create  app/assets/stylesheets/application.css
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/views/layouts/application.html.erb
      create  app/assets/images/.keep
      create  app/mailers/.keep
      create  app/models/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/bundle
      create  bin/rails
      create  bin/rake
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/backtrace_silencers.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/secret_token.rb
      create  config/initializers/session_store.rb
      create  config/initializers/wrap_parameters.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/favicon.ico
      create  public/robots.txt
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor/assets/javascripts
      create  vendor/assets/javascripts/.keep
      create  vendor/assets/stylesheets
      create  vendor/assets/stylesheets/.keep
         run  bundle install
Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
Using rake 10.4.2
Using i18n 0.7.0
Using minitest 4.7.5
Using multi_json 1.10.1
Using thread_safe 0.3.4
Using tzinfo 0.3.43
Using activesupport 4.0.3
Using builder 3.1.4
Using erubis 2.7.0
Using rack 1.5.2
Using rack-test 0.6.3
Using actionpack 4.0.3
Using mime-types 1.25.1
Using polyglot 0.3.5
Using treetop 1.4.15
Using mail 2.5.4
Using actionmailer 4.0.3
Using activemodel 4.0.3
Using activerecord-deprecated_finders 1.0.3
Using arel 4.0.2
Using activerecord 4.0.3
Using bundler 1.7.2
Using coffee-script-source 1.9.0
Using execjs 2.3.0
Using coffee-script 2.3.0
Using thor 0.19.1
Using railties 4.0.3
Using coffee-rails 4.0.1
Using hike 1.2.3
Using jbuilder 1.5.3
Using jquery-rails 3.1.2
Using json 1.8.2
Using tilt 1.4.1
Using sprockets 2.12.3
Using sprockets-rails 2.0.1
Using rails 4.0.3
Using rdoc 4.2.0
Using sass 3.2.19
Using sass-rails 4.0.5
Using sdoc 0.4.1
Using sqlite3 1.3.10
Using turbolinks 2.5.3
Using uglifier 2.7.0
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.
➜  20_Basic  ls
bloccit  sql_q.md
➜  20_Basic  subl .
➜  20_Basic  mv README.rdoc README.md
mv: rename README.rdoc to README.md: No such file or directory
➜  20_Basic  cd bloccit
➜  bloccit  rake db:create
➜  bloccit  bundle install --without production
Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
Using rake 10.4.2
Using i18n 0.7.0
Using minitest 4.7.5
Using multi_json 1.10.1
Using thread_safe 0.3.4
Using tzinfo 0.3.43
Using activesupport 4.0.3
Using builder 3.1.4
Using erubis 2.7.0
Using rack 1.5.2
Using rack-test 0.6.3
Using actionpack 4.0.3
Using mime-types 1.25.1
Using polyglot 0.3.5
Using treetop 1.4.15
Using mail 2.5.4
Using actionmailer 4.0.3
Using activemodel 4.0.3
Using activerecord-deprecated_finders 1.0.3
Using arel 4.0.2
Using activerecord 4.0.3
Using bundler 1.7.2
Using coffee-script-source 1.9.0
Using execjs 2.3.0
Using coffee-script 2.3.0
Using thor 0.19.1
Using railties 4.0.3
Using coffee-rails 4.0.1
Using hike 1.2.3
Using jbuilder 1.5.3
Using jquery-rails 3.1.2
Using json 1.8.2
Using tilt 1.4.1
Using sprockets 2.12.3
Using sprockets-rails 2.0.1
Using rails 4.0.3
Using rdoc 4.2.0
Using sass 3.2.19
Using sass-rails 4.0.5
Using sdoc 0.4.1
Using sqlite3 1.3.10
Using turbolinks 2.5.3
Using uglifier 2.7.0
Your bundle is complete!
Gems in the group production were not installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
➜  bloccit  git init
Initialized empty Git repository in /Users/alexsingleton/Documents/Bloc/Checkpoints/20_Basic/bloccit/.git/
➜  bloccit git:(master) ✗ git add .
➜  bloccit git:(master) ✗ git commit -m 'First commit and README update'
[master (root-commit) d4a58dc] First commit and README update
 46 files changed, 829 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 README.rdoc
 create mode 100644 Rakefile
 create mode 100644 app/assets/images/.keep
 create mode 100644 app/assets/javascripts/application.js
 create mode 100644 app/assets/stylesheets/application.css
 create mode 100644 app/controllers/application_controller.rb
 create mode 100644 app/controllers/concerns/.keep
 create mode 100644 app/helpers/application_helper.rb
 create mode 100644 app/mailers/.keep
 create mode 100644 app/models/.keep
 create mode 100644 app/models/concerns/.keep
 create mode 100644 app/views/layouts/application.html.erb
 create mode 100755 bin/bundle
 create mode 100755 bin/rails
 create mode 100755 bin/rake
 create mode 100644 config.ru
 create mode 100644 config/application.rb
 create mode 100644 config/boot.rb
 create mode 100644 config/database.yml
 create mode 100644 config/environment.rb
 create mode 100644 config/environments/development.rb
 create mode 100644 config/environments/production.rb
 create mode 100644 config/environments/test.rb
 create mode 100644 config/initializers/backtrace_silencers.rb
 create mode 100644 config/initializers/filter_parameter_logging.rb
 create mode 100644 config/initializers/inflections.rb
 create mode 100644 config/initializers/mime_types.rb
 create mode 100644 config/initializers/secret_token.rb
 create mode 100644 config/initializers/session_store.rb
 create mode 100644 config/initializers/wrap_parameters.rb
 create mode 100644 config/locales/en.yml
 create mode 100644 config/routes.rb
 create mode 100644 db/seeds.rb
 create mode 100644 lib/assets/.keep
 create mode 100644 lib/tasks/.keep
 create mode 100644 log/.keep
 create mode 100644 public/404.html
 create mode 100644 public/422.html
 create mode 100644 public/500.html
 create mode 100644 public/favicon.ico
 create mode 100644 public/robots.txt
 create mode 100644 vendor/assets/javascripts/.keep
 create mode 100644 vendor/assets/stylesheets/.keep
➜  bloccit git:(master) git remote add origin git@github.com:alexanderjsingleton/20_basicrailsapp.git
➜  bloccit git:(master) git push -u origin master
Saving password to keychain failed
Identity added: /Users/alexsingleton/.ssh/id_rsa (/Users/alexsingleton/.ssh/id_rsa)
Counting objects: 58, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (47/47), done.
Writing objects: 100% (58/58), 14.03 KiB | 0 bytes/s, done.
Total 58 (delta 2), reused 0 (delta 0)
To git@github.com:alexanderjsingleton/20_basicrailsapp.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
➜  bloccit git:(master) rails s
=> Booting WEBrick
=> Rails 4.0.3 application starting in development on http://0.0.0.0:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
[2015-02-11 10:35:13] INFO  WEBrick 1.3.1
[2015-02-11 10:35:13] INFO  ruby 2.0.0 (2014-05-08) [universal.x86_64-darwin14]
[2015-02-11 10:35:13] INFO  WEBrick::HTTPServer#start: pid=1369 port=3000


Started GET "/" for 127.0.0.1 at 2015-02-11 10:38:50 -0600
Processing by Rails::WelcomeController#index as HTML
  Rendered /Library/Ruby/Gems/2.0.0/gems/railties-4.0.3/lib/rails/templates/rails/welcome/index.html.erb (2.0ms)
Completed 200 OK in 33ms (Views: 10.2ms | ActiveRecord: 0.0ms)
rails server -h
^C[2015-02-11 10:41:21] INFO  going to shutdown ...
[2015-02-11 10:41:21] INFO  WEBrick::HTTPServer#start done.
Exiting
➜  bloccit git:(master)