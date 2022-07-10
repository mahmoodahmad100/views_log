# Views Log
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)

### Description
The aim of the project is to get some statistics about visits to the website based on the log file. it can show the total visits and the unique visits.

### Technical Reasoning
The app is built on Ruby and it implements best practices like applying `SOLID` principles and `OOP` & `OOD` apart from that the `Strategy` design pattern is used due to having switch cases (many if for example ... it's implemented in the Counter part).

### Trade-offs
if I was to spend additional time on the project I would do the following:
* Dockerize the project
* Make the `Writer` class (lib/writer.rb) more scalable as it's currently coupled to 2 options (unique & total)
* Handle unforeseen circumferences, ex: what if the log file content is in different format ?
### Getting started:

Open the terminal and navigate to the project directory and run `bundle install`

### Usage:

```
bin/parser.rb --views=total|unique path_to_log_file.log
```

There is an optional option: `--views` option in which it has 2 values `total` or `unique`, default is `total`.

**Here is how we do it with the total views:**
```
bin/parser.rb webserver.log
```

`or`

```
bin/parser.rb --views=total webserver.log
```

**Here is how we do it with the unique views:**
```
bin/parser.rb --views=unique webserver.log
```

### Testing & Development:
* You can run the tests by running `bundle exec rspec .`

* You can run RuboCop (linter) by running `bundle exec rubocop .`