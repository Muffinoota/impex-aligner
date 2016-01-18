# IMPEX-Aligner package

[Atom package](https://atom.io/packages/impex-aligner)

> Based off of Freyskeyd's excellent atom-alignment package  ([Freyskeyd/atom-alignment](https://github.com/Freyskeyd/atom-alignment.git))

## Usage

A semi-colon vertical aligner for hybris IMPEX files.

Select a region of an impex, right click, and select "Align IMPEX"

# THIS
```impex
INSERT_UPDATE fooComponent;uid[unique=true];name;content;
;pageName;Other page name stuff;$fooResource/foo1.html
;aDifferentPageName;name of something;$fooResource/foo2.html
;yetAnotherPageName;information;$fooResource/foo3.html
```
# BECOMES THIS
```impex
INSERT_UPDATE fooComponent ; uid[unique=true]   ; name                  ; content ;
                           ; pageName           ; Other page name stuff ; $fooResource/foo1.html
                           ; aDifferentPageName ; name of something     ; $fooResource/foo2.html
                           ; yetAnotherPageName ; information           ; $fooResource/foo3.html
```

## Also I made a GIF of the alignment.
#### (After alignment you can fold the code too!)

![](https://i.gyazo.com/eb50e4f7f22271a89c3b3e2db7288907.gif)

### License

MIT © [Andre Lerche](https://github.com/papermoon1978)

MIT © [Simon Paitrault](http://www.freyskeyd.fr)
