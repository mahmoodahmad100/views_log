# Views Log
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)

### Description
The aim of the project is to get some statistics about visits to the website based on the log file. it can show the total visits and the unique visits.

### Technical Reasoning
The app is built on Ruby and it implements best practices like applying `SOLID` principles and `OOP` & `OOD` apart from that the `Strategy` design pattern is used due to having switch cases (many if for example ... it's implemented in the Counter part).

### Trade-offs
if I was to spend additional time on the project I would do the following:
* ~~Use Docker~~
* ~~Use Kubernetes~~
* Make the `Writer` class (lib/writer.rb) more scalable as it's currently coupled to 2 options (unique & total)
* Handle unforeseen circumferences, ex: what if the log file content is in different format ?
### Getting started:

(1) Open the terminal and navigate to the project directory and run `bundle install`

(2) copy the log file (you can use this one `spec/fixtures/webserver.log`) to `logs` directory

(3) copy `.env.example` and rename the copied file to `.env` and you can change all the details from there  
### Usage:

```
bin/parser.rb --views=total|unique path_to_log_file.log
```

There is an optional option: `--views` option in which it has 2 values `total` or `unique`, default is `total`.

**Here is how we do it with the total views:**

```
bin/parser.rb ./logs/webserver.log
```

`or`

```
bin/parser.rb --views=total ./logs/webserver.log
```

**Here is how we do it with the unique views:**

```
bin/parser.rb --views=unique ./logs/webserver.log
```

### Testing & Development:

* You can run the tests by running `bundle exec rspec .`

* You can run RuboCop (linter) by running `bundle exec rubocop .`