`watchwhile`

no parameters

barebones script to do stuff like the watch utlities in the module ecosystems,
but this just uses a basic loop instead of needing `npm` or `pip`. Working in mixed
up environments means I don't always have one or the other.

**todo**

I would add paramters to this but it's not worth it. Copy it and modify it as needed.

Later on maybe a target script instead like

```
watchwhile ./src/*.cpp do-my-script.sh
```

not sure if `inotifywatch` takes a pattern as its param.
