# lc-locale

Typesafe `Locale` specification via locale + language.
Not a complete enumeration by any means, but your favorite country & language is just a pull request away!


## Usage

```swift
let toronto = Locale.canada(language: .english)
let quebec = Locale.canada(language: .french)

let cuba = Locale.cuba()
let officialCubanLanguage = cuba.language // .spanish

```
