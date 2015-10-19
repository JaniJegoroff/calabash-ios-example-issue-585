## Calabash iOS Issue 585

Simple example project to reproduce Calabash iOS issue
**Intermittent timeouts performing gestures in Xcode 6.1 targeting iOS
8.1 simulators**
[#585](https://github.com/calabash/calabash-ios/issues/585)


### Modifications to original LPSimpleExample

Small changes to LPAppDelegate and LPThirdViewController - changes marked
with comment `// Jani`.

Added NotificationScreenViewController

### Reproduce

[Screencast](http://www.screencast.com/t/5I6VzNQ0pS)

```
$ make app
$ bundle exec cucumber
```

