<!-- PROJECT LOGO -->
<br />
<p align="center">

  <h1 align="center">Bspwm tools</h1>

  <p align="center">
    A collection of tools and scripts used to control bspwm
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about">About</a>
      <ul>
        <li><a href="#flag-menu">Flag menu</a></li>
        <li><a href="#ordered-hide">Ordered hide</a></li>
        <li><a href="#presel">Presel</a></li>
        <li><a href="#unhide-menu">Unhide menu</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></i>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact and social media</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About

This project gathers a few useful scripts I've written for controlling different aspects of [bspwm](https://github.com/baskerville/bspwm). Some of these scripts are works in progress. This repository is continuously being updated as I improve my workflow. 

Below are the scripts currently in the repository, along with a short description. A few usage examples can be found under <a href="#usage">usage</a>.

### Flag menu


### Ordered hide


### Presel


### Unhide menu

<!-- GETTING STARTED -->
## Getting Started
So far, all tools in this repository are simple shell scripts. Install and use as you would any shell scripts.

### Prerequisites
There are some obvious dependencies, like [bspwm](https://github.com/baskerville/bspwm) and bspc. Then, a few of the scripts have additional dependencies. Those are listed below:

* [dmenu]() (can be replaced by rofi by editing the script(s)) (required by `bspc-flag-menu` and `bspc-unhide-menu`) 
* [jq]() (required by `bspc-presel`)
* [bc]() (required by `bspc-presel`)
* [xwininfo]() (required by `bspc-unhide-menu`)

### Installation
Either simply copy the scripts you want to use into somewhere in your path, or use the `install.sh` script. Here's the steps required for the second option:

1. Install dependencies.
2. Clone this repository
   ```sh
   git clone https://github.com/palmdrop/bspwm-tools.git
   ```
3. Run the install script
   ```sh
   source bspwm-tools/install.sh
   ```

The scripts will be copied to `/usr/local/bin`. If we ever want to uninstall any of the scripts, remove them from this directory, or run the `uninstall.sh` script. 

<!-- USAGE EXAMPLES -->
## Usage
Most of the scripts are fairly simple to use, especially if you're already familiar with bspwm and bspc. Each script can be run with `script-name help` in order to display it's usage, or you can just read below:

TODO continue writing usage functions



<!-- CONTRIBUTING -->
## Contributing

<!-- CONTACT -->
## Contact and social media
:mailbox_with_mail: [Email](mailto:anton@exlex.se) (the most reliable way of reaching me)

:camera: [Instagram](https://www.instagram.com/palmdrop/) (where I showcase a lot of my work)

:computer: [Blog](https://palmdrop.github.io/) (where I occasionally write posts about my process)

 
