# fast-style-s2i

## Usage (Local)

```
$ make
$ s2i build . fast-style-s2i fast-style
$ docker run fast-style
```

## Usage (OpenShift)

```
oc create -f https://raw.githubusercontent.com/RobGeada/fast-style-s2i/master/template.json
oc new-app --template=fast-style
```
