# Python3.7 env with Ubuntu16.04 in Docker

## How to build

### 1. git clone this repository

In any direcotry

```
$ git clone https://github.com/goppy510/docker_python3.7.git
```

### 2. move direcotry

```
$ cd docker_python3.7
```

### 3. docker-compose build

```
$ sudo /usr/local/bin/docker-compose build
```

or

```
$ sudo docker-compose build
```

### 4. docker-compose up in background

```
$ sudo /usr/local/bin/docker-compose up -d
```

## How to use

### example: confirm python version

please omit python command

```
$ sudo sh run.sh --version
```

### example: display "hello"

example source path

```
src/test.py
```

execute scripte

```
$ sudo sh run.sh src/test.py
```
