# TikZducks

[![GitHub](https://img.shields.io/github/license/samcarter/tikzducks.svg?color=blue)](http://www.latex-project.org/lppl.txt)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/samcarter/tikzducks.svg?label=current%20version)](https://github.com/samcarter/tikzducks/releases/latest)
[![CTAN](https://img.shields.io/ctan/v/tikzducks.svg)](https://ctan.org/pkg/tikzducks)

This is a little LaTeX package for ducks to be used in TikZ pictures. The project is a continuation of the TeX.Stackexchange.com answer [How can we draw a duck](https://tex.stackexchange.com/a/347458/36296)

A big thank you to all the people who contributed with code, ideas or feedback to the package! Without this package would not exist!

## Usage

A short example to demonstrate the use of the TikZducks:

```latex
\documentclass{standalone}
\usepackage{tikzducks}

\begin{document}
	
\begin{tikzpicture}
	\duck[
		% add options here, e.g.
		lightsaber
	]
\end{tikzpicture}	
	
\end{document}
```

An exhaustive list of possible options can be found in [package documentation](./documentation.pdf)

## Examples

Below are some examples of ducks created with the TikZducks package. Click on the images to see their source code.

In case you would like to share some of your ducks with the community, I would be happy to accept pull requests or simply open an issue in the bug tracking system.

<!--
<a href="./duckpond/.tex"><img src="./duckpond/.svg" alt=" Duck" height="64"></a>
-->

### Duckifications

<a href="./duckpond/Arthur.tex"><img src="./duckpond/Arthur.svg" alt="Arthur Quack" title="Arthur Quack" height="64"></a>
<a href="./duckpond/Hilbert.tex"><img src="./duckpond/Hilbert.svg" alt="Hilbert Duck" title="Hilbert Duck" height="64"></a>
<a href="./duckpond/Knuth.tex"><img src="./duckpond/Knuth.svg" alt="Duck E. Knuth" title="Duck E. Knuth" height="64"></a>
<a href="./duckpond/PaulinoVanDuck.tex"><img src="./duckpond/PaulinoVanDuck.svg" alt="Prof. Paulino van Duck" title="Prof. Paulino van Duck" height="64"></a>
<a href="./duckpond/QueenDuck.tex"><img src="./duckpond/QueenDuck.svg" alt="Queen Duck" title="Queen duck" height="64"></a>
<a href="./duckpond/DuckInBlack.tex"><img src="./duckpond/DuckInBlack.svg" alt="Duck in Black" title="Duck in Black" height="64"></a>
<a href="./duckpond/JamesDuck.tex"><img src="./duckpond/JamesDuck.svg" alt="JamesDuck and Q(ack)" title="James Duck and Q(ack)" height="64"></a>
<a href="./duckpond/MaryDuckings.tex"><img src="./duckpond/MaryDuckings.svg" alt="Mary Duckings" title="Mary Duckings" height="64"></a>
<a href="./duckpond/MayTheQuackBeWithYou.tex"><img src="./duckpond/MayTheQuackBeWithYou.svg" alt="May the Quack be with you" title="May the Quack be with you" height="64"></a>
<a href="./duckpond/Peppone.tex"><img src="./duckpond/Peppone.svg" alt="Peppone" title="Peppone" height="64"></a>
<a href="./duckpond/PrincessDuck.tex"><img src="./duckpond/PrincessDuck.svg" alt="Princess Duck" title="Princess Duck" height="64"></a>
<a href="./duckpond/SuperDuckBrothers.tex"><img src="./duckpond/SuperDuckBrothers.svg" alt="Super Duck Brothers" title="Super Duck Brothers" height="64"></a>
<a href="./duckpond/QuackLongAndProsper.tex"><img src="./duckpond/QuackLongAndProsper.svg" alt="Quack long and prosper" title="Quack long and prosper" height="64"></a>
<a href="./duckpond/StarDucks.tex"><img src="./duckpond/StarDucks.svg" alt="Star Ducks" title="Star Ducks" height="64"></a>
<a href="./duckpond/DuckWho.tex"><img src="./duckpond/DuckWho.svg" alt="Duck Who" title="Duck Who" height="64"></a>
<a href="./duckpond/Phantom.tex"><img src="./duckpond/Phantom.svg" alt="Phantom of the duckpond" title="Phantom of the duckpond" height="64"></a>

### Ducks in History

<a href="./duckpond/Ceasar.tex"><img src="./duckpond/Ceasar.svg" alt="Gajus Quackus Ceasar" title="Gajus Quackus Ceasar" height="64"></a>
<a href="./duckpond/RomanDuck.tex"><img src="./duckpond/RomanDuck.svg" alt="Roman Duck" title="Roman Duck" height="64"></a>
<a href="./duckpond/Viking.tex"><img src="./duckpond/Viking.svg" alt="Viking Duck" title="Viking Duck" height="64"></a>
<a href="./duckpond/Pythagoras.tex"><img src="./duckpond/Pythagoras.svg" alt="Pythagoras" title="Pythagoras" height="64"></a>
<a href="./duckpond/Geisha.tex"><img src="./duckpond/Geisha.svg" alt="Geisha Duck" title="Geisha Duck" height="64"></a>
<a href="./duckpond/Vietnam.tex"><img src="./duckpond/Vietnam.svg" alt="Vietnam Duck" title="Vietnam Duck" height="64"></a>
<a href="./duckpond/Knight.tex"><img src="./duckpond/Knight.svg" alt="Knight Duck" title="Knight Duck" height="64"></a>
<a href="./duckpond/Shakespeare.tex"><img src="./duckpond/Shakespeare.svg" alt="Shakespeare Duck" title="Shakespeare Duck" height="64"></a>

### Ducks in Art

<a href="./duckpond/MonaDuck.tex"><img src="./duckpond/MonaDuck.png" alt="Mona Duck" title="Mona Duck" height="64"></a>
<a href="./duckpond/GirlWithPearlEarring.tex"><img src="./duckpond/GirlWithPearlEarring.svg" alt="Duck with pearl earring" title="Duck with pearl earring" height="64"></a>
<a href="./duckpond/PopArt.tex"><img src="./duckpond/PopArt.svg" alt="Pop ArtArt" title="Pop Art" height="64"></a>
<a href="./duckpond/Leonardo.tex"><img src="./duckpond/Leonardo.svg" alt="Duck da Vinci" title="Duck da Vinci" height="64"></a>
<!--<a href="./duckpond/Monet.pdf"><img src="./duckpond/Monet.png" alt="Monets duck pond" title="Monets duck pond" height="64"></a>-->
<a href="./duckpond/Soup.tex"><img src="./duckpond/Soup.png" alt="Duck Soup" title="Douck Soup" height="64"></a>
<a href="./duckpond/Frida.tex"><img src="./duckpond/Frida.png" alt="Frida Quacko" title="Frida Quacko" height="64"></a>

### TeX.SE users (and relatives)

<a href="./duckpond/CarLaTeX.tex"><img src="./duckpond/CarLaTeX.svg" alt="CarLaTeX" title="CarLaTeX" height="64"></a>
<a href="./duckpond/Ulrike.tex"><img src="./duckpond/Ulrike.svg" alt="Ulrike Fischer" title="Ulrike Fischer" height="64"></a>
<a href="./duckpond/Gert.tex"><img src="./duckpond/Gert.svg" alt="Gert Fischer" title="Gert Fischer" height="64"></a>
<a href="./duckpond/Paulo.tex"><img src="./duckpond/Paulo.svg" alt="Paulo" title="Paulo" height="64"></a>
<a href="./duckpond/Manooooh.tex"><img src="./duckpond/Manooooh.svg" alt="Manooooh" title="Manooooh" height="64"></a>
<a href="./duckpond/Samcarter.tex"><img src="./duckpond/Samcarter.svg" alt="samcarter" title="samcarter" height="64"></a>

### Professions and Occupation

<a href="./duckpond/AirDuck.tex"><img src="./duckpond/AirDuck.svg" alt="AirDuck" title="AirDuck" height="64"></a>
<a href="./duckpond/AstroDuck.tex"><img src="./duckpond/AstroDuck.svg" alt="Astro Duck" title="Astro Duck" height="64"></a>
<a href="./duckpond/Chef.tex"><img src="./duckpond/Chef.svg" alt="Chef Duck" title="Chef Duck" height="64"></a>
<a href="./duckpond/ClergyDucks.tex"><img src="./duckpond/ClergyDucks.svg" alt="Clergy Ducks" title="Clergy Ducks" height="64"></a>
<a href="./duckpond/DuckMD.tex"><img src="./duckpond/DuckMD.svg" alt="Duck, MD" title="Duck, MD" height="64"></a>
<a href="./duckpond/DuckScout.tex"><img src="./duckpond/DuckScout.svg" alt="Duck Scout" title="Duck Scout" height="64"></a>
<a href="./duckpond/QueensSwanUpper.tex"><img src="./duckpond/QueensSwanUpper.svg" title="Queens Swan Upper" alt="Queens Swan Upper" height="64"></a>
<!--<a href="./duckpond/Surfer.svg"><img src="./duckpond/Surfer.svg" alt="Surfer Duck" title="Surfer Duck" height="64"></a>-->
<a href="./duckpond/Ghost.tex"><img src="./duckpond/Ghost.svg" alt="Ghost  Duck" title="Ghost  Duck" height="64"></a>
<a href="./duckpond/Harlequin.tex"><img src="./duckpond/Harlequin.svg" alt="Harlequin Duck" title="Harlequin Duck" height="64"></a>
<a href="./duckpond/Jailbird.tex"><img src="./duckpond/Jailbird.svg" alt="Jail Bird" title="Jail Bird" height="64"></a>
<a href="./duckpond/Chainsaw.tex"><img src="./duckpond/Chainsaw.svg" alt="Chainsaw Duck" title="Chainsaw Duck" height="64"></a>
<a href="./duckpond/Devil.tex"><img src="./duckpond/Devil.svg" alt="Devil Duck" title="Devil Duck" height="64"></a>
<a href="./duckpond/Ninja.tex"><img src="./duckpond/Ninja.svg" alt="Ninja Ducks" title="Ninja Ducks" height="64"></a>
<a href="./duckpond/PartyDuck.tex"><img src="./duckpond/PartyDuck.png" alt="Party Duck" title="Party Duck" height="64"></a>
<a href="./duckpond/Vampire.tex"><img src="./duckpond/Vampire.svg" alt="Vampire Duck" title="Vampire Duck" height="64"></a>
<a href="./duckpond/Snowduck.tex"><img src="./duckpond/Snowduck.svg" alt="Snowduck" title="Snowduck" height="64"></a>
<a href="./duckpond/OfficeDuck.tex"><img src="./duckpond/OfficeDuck.svg" alt="Office Duck" title="Office Duck" height="64"></a>
<a href="./duckpond/SailorDuck.tex"><img src="./duckpond/SailorDuck.svg" alt="Sailor Duck" title="Sailor Duck" height="64"></a>
<a href="./duckpond/DuckHug.tex"><img src="./duckpond/DuckHug.svg" alt="Duck Hug" title="Duck Hug" height="64"></a>

### Animals and Beings

<a href="./duckpond/AraraDuck.tex"><img src="./duckpond/AraraDuck.png" alt="Arara Duck" title="Arara Duck" height="64"></a>
<a href="./duckpond/BeeDuck.tex"><img src="./duckpond/BeeDuck.svg" alt="Bee Duck" title="Bee Duck" height="64"></a>
<a href="./duckpond/Bunny.tex"><img src="./duckpond/Bunny.svg" alt="Bunny Duck" title="Bunny Duck" height="64"></a>
<a href="./duckpond/Donkey.tex"><img src="./duckpond/Donkey.svg" alt="Donkey Duck" title="Donkey Duck" height="64"></a>
<a href="./duckpond/Horse.tex"><img src="./duckpond/Horse.svg" alt="Horse Duck" title="Horse Duck" height="64"></a>
<a href="./duckpond/Pig.tex"><img src="./duckpond/Pig.svg" alt="Pig Duck" title="Pig Duck" height="64"></a>
<a href="./duckpond/Sheep.tex"><img src="./duckpond/Sheep.svg" alt="Sheep Duck" title="Sheep Duck" height="64"></a>
<a href="./duckpond/Zebra2.tex"><img src="./duckpond/Zebra2.png" alt="Zebra Duck" title="Zebra Duck" height="64"></a>

### More ducks

<a href="./duckpond/3Dduck.tex"><img src="./duckpond/3Dduck.png" alt="3D Duck" title="3D Duck" height="64"></a>
<a href="./duckpond/Back.tex"><img src="./duckpond/Back.svg" alt="Backside" title="Backside" height="64"></a>
<a href="./duckpond/Churyumov-Gerasimenko.tex"><img src="./duckpond/Churyumov-Gerasimenko.png" alt="67P/Churyumov–Gerasimenko" title="67P/Churyumov–Gerasimenko" height="64"></a>
<a href="./duckpond/Brazil.tex"><img src="./duckpond/Brazil.png" alt="Brazil Duck" title="Brazil Duck" height="64"></a>
<a href="./duckpond/FrenchDuck.tex"><img src="./duckpond/FrenchDuck.svg" alt="French Duck" title="French Duck" height="64"></a>
<a href="./duckpond/YankeeDuck.tex"><img src="./duckpond/YankeeDuck.png" alt="Yankee Duck" title="Yankee Duck" height="64"></a>
<a href="./duckpond/Facemask.tex"><img src="./duckpond/Facemask.svg" alt="Face Mask Duck" title="Face Mask Duck" height="64"></a>
<!--<a href="./duckpond/Chess.tex"><img src="./duckpond/Chess.svg" alt="Chess" title="Chess" height="128"></a>
<a href="./duckpond/Vikings.tex"><img src="./duckpond/Vikings.svg" alt="Vikings" title="Vikings" height="128"></a>
<a href="./duckpond/GreatWall.tex"><img src="./duckpond/GreatWall.png" alt="Great Wall" title="Great Wall" height="128"></a>
<a href="./duckpond/Ferragosto.svg"><img src="./duckpond/Ferragosto.png" alt="Ferragosto" title="Ferragosto" height="128"></a>


<a href="./duckpond/Pacduck.tex"><img src="./duckpond/Pacduck.png" alt="Pacduck" title="Pacduck" height="64"></a>-->


## TikZducks movies

There are several videos featuring the TikZducks, kindly contributed by Ulrike and Gert Fischer, Carla Maggi, Paulo Cereda and Marmot - many thanks to you all!

<a href="https://vimeo.com/246256860"><img src="https://user-images.githubusercontent.com/8226363/43651585-1281b074-9743-11e8-97f5-bf70617738a5.png" alt="The great TikZducks Christmas Extravaganza 2017" title="The great TikZducks Christmas Extravaganza 2017" height="128"></a>
<a href="https://vimeo.com/254643482"><img src="https://user-images.githubusercontent.com/8226363/43651587-12c92daa-9743-11e8-83b5-7fd3a3ac19a3.png" alt="International Pizza Day" title="International Pizza Day" height="128"></a>
<a href="https://vimeo.com/252719006"><img src="https://user-images.githubusercontent.com/8226363/43651589-12e84334-9743-11e8-9621-d5e6e53a0ca8.png" alt="Happy Groundhog Day" title="Happy Groundhog Day" height="128"></a>
<a href="https://vimeo.com/270727100"><img src="https://user-images.githubusercontent.com/8226363/43651586-12a6c008-9743-11e8-99d2-5a66e7f5f1ee.png" alt="Aquarela with TikZducks" title="Aquarela with TikZducks" height="128"></a>
<a href="https://vimeo.com/295353434"><img src="https://user-images.githubusercontent.com/43832342/47496794-37d18600-d858-11e8-9e6e-777ffee1acdc.png" alt="Saint Crispin's Day" title="Saint Crispin's Day" height="128"></a>
<a href="https://vimeo.com/284348495"><img src="https://user-images.githubusercontent.com/43832342/47496795-37d18600-d858-11e8-8c0c-20ea2d0a23cd.png" alt="James Bond" title="James Bond" height="128"></a>
<a href="https://vimeo.com/305374856"><img src="https://user-images.githubusercontent.com/43832342/49704004-3cd27500-fc0d-11e8-9002-319a8e71aca7.png" alt="The great TikZlings Christmas Extravaganza 2018" title="The great TikZlings Christmas Extravaganza 2018" height="128"></a>
<a href="https://vimeo.com/337320777"><img src="https://user-images.githubusercontent.com/43832342/61394501-84b42b80-a8c3-11e9-9540-c9c80e6b3b34.png" alt="Welcome to Bayreuth" title="Welcome to Bayreuth" height="128"></a>
<a href="https://vimeo.com/380684973"><img src="https://user-images.githubusercontent.com/43832342/71256276-8382a100-2330-11ea-8996-e87132c6ad29.png" alt="The great TikZlings Christmas Extravaganza 2019" title="The great TikZlings Christmas Extravaganza 2019" height="128"></a>
<a href="https://vimeo.com/492532561"><img src="https://user-images.githubusercontent.com/43832342/102637280-0c0b6b80-4156-11eb-8031-c67c20b474f4.png" alt="The great TikZlings Christmas Extravaganza 2020" title="The great TikZlings Christmas Extravaganza 2020" height="128"></a>

The source code for some of the movies is available from [TikZlings@github](https://github.com/TikZlings/).
