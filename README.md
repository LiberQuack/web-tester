# WEB-TESTER

_This project has been renamed from `martinsthiago/polymer-tester`_

It's a docker image from `ubuntu:16.10` with `node:6.9.1`, `bower`, `git`, `chrome` and `Xvfb` targeting continuous integration with [Wercker](http://wercker.com/)

### How does it work?

We run Xvfb (fake screen) in background, so you can run gui applications inside the container

### Usage
Basically all you need to do is to include a `wercker.yml` file in the root path of your project containing your configuration. For example

```yaml
box: martinsthiago/web-tester

build:
  steps:
    - script:
        name: dependencies installation
        code: |
          npm install -g gulp-cli
          npm install
          bower install

    - script:
        name: tests execution
        code: |
          gulp test

    - script:
        name: build execution
        code: |
          gulp
```



## Install Recipes
This image tries to provide as little as possible for running tests on chrome, depending on your workflow you may want to install other things like

| Program          | Command                                 |
|------------------|-----------------------------------------|
| **Java Jre 8**   | apt install -y openjdk-8-jre-headless   |
| **Firefox**      | apt install -y firefox                  |
| **Vnc**          | apt install -y x11vnc                   |

## Why project was renamed?

This project has been renamed from `polymer-tester` -> `web-tester` because now it is more concise and agnostic, so with little setup we can run almost any front-end test instead of polymer tests only

## Changelog
- v2.0.0 Removed java, wct, gulp / Changed image to ubuntu:16.10 / Renamed project / up chrome 54 / up node 6.9.1
- v1.0.0 Build with chrome-45 working properly both for Polymer apps a seed elements