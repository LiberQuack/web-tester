# nvm-browsers
It's a docker container from node:4.1.0 with chrome and Xvfb out-of-box, targeting Continuous Integration with [Wercker](http://wercker.com/)

## Usage
It's usage primarily dependes if you have an `Polymer app` or if you have a `Polymer seed element`, keep reading

### I have an entire PolymeraApp to test
If you downloaded polymer-starter-kit or used a generator `yo polymer` basically all you need to do is to include a `wercker.yml` file in the root path of your project containing the configuration bellow

```lang
box: martinsthiago/polymer-tester

build:
  steps:
    - script:
        name: dependencies installation
        code: |
          npm install -s
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

### I have just a Polymer seed element to test
Same way, just include a `wercker.yml` in your project containing:
```
box: martinsthiago/polymer-tester

build:
  steps:
    - script:
        name: dependencies installation
        code: |
          bower install
    - script:
        name: tests execution
        code: |
          wct
```

## Roadmap
- Include other browsers as firefox, opera
- If possible include different versions of the same browser, example: chrome-45 chrome-46 chrome-47...

## Changelog
- 1.0.0 Build with chrome-45 working properly both for Polymer apps a seed elements
