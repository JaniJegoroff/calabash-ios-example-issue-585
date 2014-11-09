calabash-ios-example-issue-585
==============================

Simple example project to reproduce calabash-ios issue [#585](https://github.com/calabash/calabash-ios/issues/585)

Environment
==========
`calabash-ios 0.11.4`

`run_loop 1.1.0`

`Xcode 6.1`

`iPhone 6 8.1 simulator`

Modifications to original LPSimpleExample
==========

Small changes to LPAppDelegate and LPThirdViewController (changes marked with comment `// Jani`)

Added NotificationScreenViewController

Steps to reproduce
==========

1. Setup and build **calabash-ios-server** from **development** branch
2. Build **LPSimpleExample** project for **iPhone 6**
3. Execute `bundle`
4. Execute `RESET_BETWEEN_SCENARIOS=1 DEBUG=1 DEBUG_HTTP=1 DEVICE_TARGET='iPhone 6 (8.1 Simulator)' cucumber`

Screencast
==========
[Screencast](http://www.screencast.com/t/5I6VzNQ0pS)
