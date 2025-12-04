# Changelog

## [Unreleased]

### New

### Changed

### Fixed


## [v2.1]

### New

- new accessories: towel

### Changed

### Fixed

- bounding box problem with different bill shapes

## [v2.0]

### New

- New options `randomhead` and `randomaccessories`. Basically the same as  `\randomhead` and `\randomaccessories`, but no longer require `\shuffleducks`

### Changed

- removed ConTeXt/plain TeX support. I'm very grateful to @JairoAdelRio for contributing these modules, however after accidentally breaking these modules in 2021 (and not hearing any complains from users) I decided to stop supporting these module in favour of making maintaining the package easier and having more freedom in the code used in the package.
- replaced self-baked hooks with latex hooks: `\NewHook{tikzducks/background}`, `\NewHook{tikzducks/body}`, `\NewHook{tikzducks/clothing}`, `\NewHook{tikzducks/hair}`, `\NewHook{tikzducks/hat}` and `\NewHook{tikzducks/foreground}`

## [v1.10]

### Changed

- updated lists of items used in `\randuck`, `\randomhead` and  `\randomaccessories` 

## [v1.9]

### New

- sombrero hat (many thanks to CarLaTeX for contributing the hat)
- megaphone (see #37, many thanks to @maieul for the idea!)

### Changed

- switched from `patterns` to `patterns.meta` library for magic hat for more flexibility

## [v1.8]

### New

- added DEPENDS.txt file

## [v1.7]

### New

- banana and stick with leaf (kindly contributed by @NuzzleTOO)

## [v1.6]

### New

- scarf
- booble hat
- broom
- strawbroom

### Changed

- support for pdftex
- `\randuck` now accepts an optional argument, e.g. `\randuck[scale=0.7]`

## [v1.5]

### New

- TikZDucks is now also available as ConTeXt User Module (thanks a lot to @JairoAdelRio)

## [v1.4]

### New

- sailor hat

### Changed

- adding hooks to allow the user to add things to various layers of the ducks
- fixed problem with line scaling for usage with different units

## [v1.3]

### New

- added new example ducks to https://github.com/samcarter/tikzducks, e.g. sad duck, Duck da Vinci, lt3 duck, back duck, Roman duck (created by Ulrike Fischer), or the Yankee Duck

### Changed

- updating the syntax for TikZ circles and ellipses
- switching to l3build

## [v1.2]

### New

- Áo dài as new clothing
- conical hat
- overleaf duck
- added new example ducks to https://github.com/samcarter/tikzducks, e.g. Pythagoras, the Vietnam duck or the Geisha duck

### Changed

- moved collection of example ducks from the package documentation to https://github.com/samcarter/tikzducks
- modified random duck generation to use the new XeLaTeX primitive `\randomseed` (if available)
- fixed bounding box of laughing duck

## [v1.1]

### New

- Added a picture mode variant
- New accessories: bow tie, dinner jacket, handbag, umbrella, cocktail, Devil duck, Viking duck
- Additional examples in the show case section of the documentation

## [v1.0]

### New

- crystal ball
- cheese
- helmet
- shovel
- pickaxe

### Changed

- changed location of github repository to https://github.com/samcarter/tikzducks
- improved documentation

## [v0.7]

### New

- wing
- laugh­ing duck
- par­rot bill
- stetho­scope
- harlequin
- scout neck­er­chief
- snow­duck
- in­vis­i­ble op­tion
- straw hat
- vam­pire teeth
- mid­dle part­ing hairstyle

## [v0.6]

### New

- King and Queen crowns
- crozier
- Darth Vader mask
- horsetail
- mullet and mohican hair styles
- basket
- Easter basket
- square glasses
- sheep
- buttons
- added tail coordinate

### Changed

- included wrapper for a tikzlibrary "ducks"
- allowed spaces in keyword
- improved scaling of rounded corners
- improved random seed for e-(u)pTeX

## [v0.5]

### New

- ran­duck, a ran­dom duck gen­er­a­tor
- pos­si­bil­ity to name the ducks
- New ac­ces­sories: su­per­hero, bunny ears, neck­lace, milk­shake, wine­glass, peaked cap, prison duck, top hat, thought and speech bub­bles, torch, beard

## [v0.4]

### New

- foot­ball ducks (by Carla Maggi)
- var­i­ous ducks in the show­case sec­tion
- crown
- beret
- baguette
- hockey
- pizza
- cake
- lightsaber
- grad­u­ate hat
- witch
- sign­post
- su­per­hero cape
- chef hat
- rolling pin

### Fixed

- size of bound­ing boxes
- fixed prob­lem with scal­ing of lines

## [v0.3]

### New

- Santa Clause hat
- cricket bat
- base­ball cap
- (par­tial) sup­port to reuse paths and co­or­di­nates

### Changed

- ex­panded doc­u­men­ta­tion

### Fixed

- fix to sup­port `\se­lect­col­or­model{gray}`

## [v0.2]

### New 

- A lit­tle fun pack­age for us­ing rub­ber ducks in tikz

------

[Unreleased]: https://github.com/samcarter/tikzlings/compare/v2.1...HEAD
[v2.1]: https://github.com/samcarter/tikzducks/compare/v2.0...v2.1
[v2.0]: https://github.com/samcarter/tikzducks/compare/v1.10...v2.0
[v1.10]: https://github.com/samcarter/tikzducks/compare/v1.9...v1.10
[v1.9]: https://github.com/samcarter/tikzducks/compare/v1.8...v1.9
[v1.8]: https://github.com/samcarter/tikzducks/compare/v1.7...v1.8
[v1.7]: https://github.com/samcarter/tikzducks/compare/v1.6...v1.7
[v1.6]: https://github.com/samcarter/tikzlings/compare/v1.5...v1.6
[v1.5]: https://github.com/samcarter/tikzlings/compare/v1.4...v1.5
[v1.4]: https://github.com/samcarter/tikzlings/compare/v1.3...v1.4
[v1.3]: https://github.com/samcarter/tikzlings/compare/v1.2...v1.3
[v1.2]: https://github.com/samcarter/tikzlings/compare/v1.1...v1.2
[v1.1]: https://github.com/samcarter/tikzlings/compare/v1.0...v1.1
[v1.0]: https://github.com/samcarter/tikzlings/compare/v0.9...v1.0
[v0.9]: https://github.com/samcarter/tikzlings/compare/v0.8...v0.9
[v0.8]: https://github.com/samcarter/tikzlings/compare/v0.7...v0.8
[v0.7]: https://github.com/samcarter/tikzlings/compare/v0.6...v0.7
[v0.6]: https://github.com/samcarter/tikzlings/compare/v0.5...v0.6
[v0.5]: https://github.com/samcarter/tikzlings/compare/v0.4...v0.5
[v0.4]: https://github.com/samcarter/tikzlings/compare/v0.3...v0.4
[v0.3]: https://github.com/samcarter/tikzlings/compare/v0.2...v0.3
[v0.2]: https://github.com/samcarter/tikzlings/compare/v0.0...v0.2

