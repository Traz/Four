### Purpose

I'm digging (again) in Rails & Ruby just for the fun :)
So this is a small Rails Application build step by step (see notes & mémos on my [Traz notes](http://traz.github.io)) for exploring the latest libraries.

The Rails app will cover a small project managing, on Windows with Ruby 2.0 / Rails 4 / Bootstrap 3.

### History

Each tag come with a step, so :

- 0.1.0 : 
  - Rails 4 beta 
  - SQLite3 for Ruby 2
  - Thin / Haml / PRY for Rails
  - Bootstrap 3 prerelease with node/lessc integration
  - Simple Form 3beta for Rails 4

- 0.1.1 :
  - Sorcery : authentication, signup and login in rails 4
  - Simple form : installation and usage

- 0.1.2 : 
  - datePicker for bootstrap 3

- 0.1.3 :
  - pagination with kaminari adapted for BS3
  - some BS3 and js effects (auto hide, modal confirmation)

- 0.1.4 :
  - a versionned wiki with vestal_versions
  - integration of gem better\_errors

- 0.1.5 :
  - carrierwave installation

### Usage

    git clone https://github.com/Traz/Four.git
    git tag -l (list tags)
    git checkout 0.1 (for getting the right step : pick always the last sub version : 0.1.1 insteed of 0.1.0 ie).