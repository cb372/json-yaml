# [json-yaml.herokuapp.com](json-yaml.herokuapp.com)

```
$ curl -X POST json-yaml.herokuapp.com/yaml/to/json -d '---
foo: bar'
{"foo":"bar"}
```

```
$ curl -X POST json-yaml.herokuapp.com/json/to/yaml -d '{ "foo": "bar" }'
---
foo: bar
```

