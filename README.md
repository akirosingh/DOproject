


<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
<!-- badges: start -->
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/akirosingh/Diversity-Outbred-Malaria-Project/master?urlpath=rstudio)
<!-- badges: end -->

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/akirosingh/Diversity-Outbred-Malaria-Project">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Diversity Outbred Malaria Project</h3>
 
  <p align="center">
    Here lies all the work I'm doing on Diversity Outbred mice and malaria infection. 
    <br />
    <a href="https://github.com/akirosingh/Diversity-Outbred-Malaria-Project"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/issues">Report Bug</a>
    ·
    <a href="https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/issues">Request Feature</a>
  </p>
</p>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <ul>
        <li><a href="#description">Abstract</a></li>
      </ul>
    </li>
    <li><a href="#file-structure">File Structure</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Diversity Outbred Project

[Insert paper link and pretty image]

<!-- DESCRIPTION-->
## Description

Approximately 500 diversity outbred mice were infected with *Plasmodium chabaudi* AJ. On a daily basis 5 days after infection, bodyweight (grams), temperature (celsius), Red Blood Cell Count (millions/uL of Blood), Parasitemia were calculated.

### File structure

```
.
├── Diversity-Outbred-Malaria-Project.Rproj
├── Dockerfile
├── LICENSE
├── Makefile
├── R
│   ├── figures
│   │   ├── fig1.R
│   │   ├── fig2.R
│   │   ├── fig3.R
│   │   ├── fig4.R
│   │   ├── fig5.R
│   │   ├── fig5_new.R
│   │   └── supfigures
│   │       ├── TODO.R
│   │       ├── char_figures.R
│   │       └── tolerance_plot.R
│   ├── phenotypes.Rmd
│   └── setup.Rmd
├── README.md
├── data
│   ├── prepared_data
│   │   ├── dataic.rds
│   │   ├── grouped.rds
│   │   ├── phenotypes.csv
│   │   └── phenotypes.rds
│   └── raw_data
│       ├── array_id.csv
│       ├── char_review.xlsx
│       ├── covar.csv
│       ├── markers.csv
│       ├── metadata.csv
│       ├── rawdata.csv
│       ├── sample_index.csv
│       └── ~$axiom8_samples.xlsx
└── images
    ├── lab.jpeg                      #Schneider Lab
    └── logo.png                      #Placeholder image
```

<!-- DEPENDENCIES -->
## Dependencies
Does not require R or RStudio, but `make` & `docker`.

Execute in Terminal:

``` bash
git clone https://github.com/aaronpeikert/reproducible-research.git
cd reproducible-research
make build
make all DOCKER=TRUE
```

**Note: Windows user need to manually edit the `Makefile` and set
current\_path to the current directory and use `make all DOCKER=TRUE
WINDOWS=TRUE`. We hope that future releases of Docker for Windows will
not require that workaround.**

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/issues) for a list of proposed features (and known issues).

<!-- Resources -->
## Resources

https://kbroman.org/qtl2/assets/vignettes/user_guide.html

<table>
<colgroup>
<col style="width: 13%" />
<col style="width: 42%" />
<col style="width: 44%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Tool</th>
<th style="text-align: center;">How to install?</th>
<th style="text-align: center;">How to learn?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;"><!-- the backslash means newline --> <em>Windows only:</em><br />
Chocolately</td>
<td style="text-align: center;">Visit <a href="https://chocolatey.org/courses/installation/installing?method=installing-chocolatey">chocolatey.org</a>.</td>
<td style="text-align: center;">Chocolately installs software for you, it is installed and called from the terminal/command prompt.<br />
To open the comand prompt, press Windows+X and then click on “Command Prompt” or “Command Prompt (Admin).”</td>
</tr>
<tr class="even">
<td style="text-align: center;"><em>OS X only:</em><br />
Homebrew</td>
<td style="text-align: center;">Visit <a href="https://brew.sh">brew.sh</a>.</td>
<td style="text-align: center;">Homebrew installs software for you. It is installed and called from the terminal/command prompt.<br />
To open the terminal press Command + Space to open Spotlight and then type “Terminal” and double click on the top search result.</td>
</tr>
<tr class="odd">
<td style="text-align: center;">R</td>
<td style="text-align: center;"><strong>Windows:</strong><br />
Use Chocolately (from the terminal).<br />
<code>choco install -y r.project</code><br />
<br />
<strong>OS X:</strong><br />
Use Homebrew.<br />
<code>brew install r</code><br />
</td>
<td style="text-align: center;">Read: <a href="https://r4ds.had.co.nz">R for Data Science</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Rstudio</td>
<td style="text-align: center;"><strong>Windows:</strong><br />
Use Chocolately (from the terminal).<br />
<code>choco install -y r.studio</code><br />
<br />
<strong>OS X:</strong><br />
Use Homebrew (from the terminal).<br />
<code>brew cask install rstudio</code></td>
<td style="text-align: center;">Skim the <a href="https://www.rstudio.org/links/ide_cheat_sheet">cheatsheet</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">rmarkdown</td>
<td style="text-align: center;">Within Rstudio, type into the R-console:<br />
<code>install.packages(&quot;rmarkdown&quot;)</code></td>
<td style="text-align: center;">Read the <a href="https://www.rstudio.org/links/r_markdown_cheat_sheet">cheatsheet</a>. Skim <a href="https://bookdown.org/yihui/rmarkdown/">R Markdown: The Definitive Guide</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Git</td>
<td style="text-align: center;"><strong>Windows:</strong><br />
Use Chocolately (from the terminal).<br />
<code>choco install -y git</code><br />
<br />
<strong>OS X:</strong><br />
Git gets installed with Homebrew.<br />
Nothing to do.</td>
<td style="text-align: center;">Read <a href="https://happygitwithr.com/git-basics.html">Part IV Git fundamentals</a> And skim the rest of <a href="https://happygitwithr.com">Happy Git and Gitub for the useR</a>.</td>
</tr>
<tr class="odd">
<td style="text-align: center;">GitHub</td>
<td style="text-align: center;">Create an account on: <a href="https://github.com/join">github.com</a><br />
And apply for <a href="https://education.github.com/benefits">Student/Researcher Benefits</a></td>
<td style="text-align: center;">Read <a href="https://happygitwithr.com/connect-intro.html">Part II Connect Git, GitHub, RStudio</a> And <a href="https://happygitwithr.com">III Early GitHub Wins</a>.</td>
</tr>
<tr class="even">
<td style="text-align: center;">Make</td>
<td style="text-align: center;"><strong>Windows:</strong><br />
Use chocolately.<br />
<code>choco install -y make</code><br />
<br />
<strong>OS X:</strong><br />
Make is preinstalled on OS X.<br />
Nothing to do.</td>
<td style="text-align: center;">Read <a href="https://kbroman.org/minimal_make/">Minimal Make</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Docker</td>
<td style="text-align: center;"><strong>Windows:</strong><br />
Use chocolately.<br />
<code>choco install -y docker-desktop</code><br />
<br />
<strong>OS X:</strong><br />
Use Homebrew (from the terminal).<br />
<code>brew cask install docker</code><br />
<br />
<strong>Linux:</strong><br />
Follow steps described in: <a href="https://docs.docker.com/engine/install/linux-postinstall/">Post-installation steps for Linux</a></td>
<td style="text-align: center;">Read <a href="https://doi.org/10.32614/RJ-2017-065">An Introduction to Rocker: Docker Containers for R</a>.</td>
</tr>
</tbody>
</table>


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Adam Kirosingh - adamsk@stanford.edu

Project Link: [https://github.com/akirosingh/Diversity-Outbred-Malaria-Project](https://github.com/akirosingh/Diversity-Outbred-Malaria-Project)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
Thanks to Prasanna Jagannathan and my committee David Schneider, Taia Wang, Catherine Blish, and Bali Pulendran. Also special thanks to Brice Gaudilliere, Virginia D. Winn for consultation on experimental design.
Thanks to my coauthors Avni Gupta, Victoria Chevee

Thank you Karl Broman for paving the way with your work on reproducible research and qtl mapping in R.
<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/akirosingh/Diversity-Outbred-Malaria-Project.svg?style=for-the-badge
[contributors-url]: https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/akirosingh/Diversity-Outbred-Malaria-Project.svg?style=for-the-badge
[forks-url]: https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/network/members
[stars-shield]: https://img.shields.io/github/stars/akirosingh/Diversity-Outbred-Malaria-Project.svg?style=for-the-badge
[stars-url]: https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/stargazers
[issues-shield]: https://img.shields.io/github/issues/akirosingh/Diversity-Outbred-Malaria-Project.svg?style=for-the-badge
[issues-url]: https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/issues
[license-shield]: https://img.shields.io/github/license/akirosingh/Diversity-Outbred-Malaria-Project.svg?style=for-the-badge
[license-url]: https://github.com/akirosingh/Diversity-Outbred-Malaria-Project/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/adam-kirosingh-b98a3a80/
[product-screenshot]: images/lab.jpeg
