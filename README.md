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
        <li><a href="#auto-unhide">Auto unhide</a></li>
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
    <li><a href="#contact-and-social-media">Contact and social media</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About
This project gathers a few useful scripts I've written for controlling different aspects of [bspwm](https://github.com/baskerville/bspwm). Some of these scripts are works in progress. This repository is continuously being updated as I improve my workflow. 

Below are the scripts currently in the repository, along with a short description. A few usage examples can be found under <a href="#usage">usage</a>.

### Flag menu
*bspc-flag-menu*

I small menu (using dmenu) for toggling node flags. The menu prompt also displays the currently set flags for the focused window, which is useful.

### Ordered hide
*bspc-ordered-hide*

A script that keeps track of all the hidden nodes of all desktops, and unhides them in the reverse order they were hidden. A temporary directory is created at `tmp/hidden` to store the window pids. 

### Presel
*bspc-presel*

A smart preselection script. Instead of having to use one keybinding to set a preselection direction and another to set the preselection ratio, this script can be used to set both. or example, make a preselection using `bspc-presel west 0.1` and a preselection will be made. Run the same command again to decrease the size of the preselection with 0.1 units, or run `bspc-presel north 0.1` to increase the size. Once a preselection is made, its orientation can not be changed until it's canceled (at this point). 

### Unhide menu
*bspc-unhide-menu*

Sometimes you do not want to unhide the most recently hidden window. This script opens a menu (dmenu) where you can pick any hidden window on the current desktop, and unhide it. A flag can be passed to enable unhiding a window on any desktop.

### Auto unhide
*bspc-auto-unhide*

It's easy to forget hidden nodes on otherwise empty desktops. This script automatically unhides hidden nodes if the last visible node on the desktop is removed or transferred. 

This script is dependent on `bspc-ordered-hide`.

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
Either simply copy the scripts you want to use into somewhere in your path, or use the `install.sh` script. Here are the steps required for the second option:

1. Install dependencies.
2. Clone this repository
   ```sh
   git clone https://github.com/palmdrop/bspwm-tools.git
   ```
3. Enter the repository
   ```sh
   cd bspwm-tools
   ```
4. Run the install script
   ```sh
   source install.sh
   ```

The scripts will be copied to `/usr/local/bin`. If we ever want to uninstall any of the scripts, remove them from this directory, or run the `uninstall.sh` script.

<!-- USAGE EXAMPLES -->
## Usage
Most of the scripts are fairly simple to use, especially if you're already familiar with bspwm and bspc. Each script can be run with `script-name help` to display its usage. If you have any questions, feel free to contact me.

`bspc-auto-unhide` listens for events continuously, and could be launched in your `bspwmrc` like this:

```sh
bspc-auto-unhide &
```

<!-- CONTRIBUTING -->
## Contributing
Any suggestions on how to improve any of the scripts are welcomed. Make a fork and a pull request or just contact me using any of the channels below. 

<!-- CONTACT -->
## Contact and social media
:mailbox_with_mail: [Email](mailto:anton@exlex.se) (the most reliable way of reaching me)

:camera: [Instagram](https://www.instagram.com/palmdrop/) (where I showcase a lot of my work)

:computer: [Blog](https://palmdrop.github.io/) (where I occasionally write posts about my process)
