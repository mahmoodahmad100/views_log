# Views Log
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)

## Description
The aim of the project is to get some statistics about visits to the website based on the log file. it can show the total visits and the unique visits.

#### Quick short video:
<div align="center">
  <a target="_blank" href="https://www.youtube.com/watch?v=LOcvpZDPfYI"><img src="https://img.youtube.com/vi/LOcvpZDPfYI/maxresdefault.jpg" alt="Laragine quick intro!"></a>
</div>

## Technical Reasoning
The app is built on Ruby and it implements best practices like applying `SOLID` principles and `OOP` & `OOD` apart from that the `Strategy` design pattern is used due to having switch cases (many if for example ... it's implemented in the Counter part).

## Trade-offs
if I was to spend additional time on the project I would do the following:
* ~~Use Docker~~
* ~~Use Kubernetes~~
* Make the `Writer` class (lib/writer.rb) more scalable as it's currently coupled to 2 options (unique & total)
* Handle unforeseen circumferences, ex: what if the log file content is in different format ?
## Getting started:
you have 3 options to get started, and before choosing the appropriate option, you have to do the following:

* navigate to the project directory
* copy the log file (you can use this one `spec/fixtures/webserver.log`) to `logs` directory

for the first 2 options, you need to do the following as well:

* copy `.env.example` and rename the copied file to `.env` and you can change all the details from there

### (1) Kubernetes:

**Usage:**

```
kubectl apply -f=deployment.yaml
```

### (2) Docker:

**Usage:**

```
docker compose up
```

### (3) Local Installation:

* Open the terminal and run `bundle install`

**Usage:**

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

## Testing & Development:

* You can run the tests by running `bundle exec rspec .`

* You can run RuboCop (linter) by running `bundle exec rubocop .`