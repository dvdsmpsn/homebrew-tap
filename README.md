# @dvdsmpsn's legacy version of Atlassian Homebrew Tap

This repository contains a collection of [Homebrew](http://mxcl.github.com/homebrew/) (aka, Brew) "formulae" for Atlassian. Brew is a simple package manager for OS X that's based on Git.

Traditionally, Brew packages are managed centrally at <https://github.com/mxcl/homebrew>. To update packages, a package developer has to send pull requests to update their packages to new versions. Recently, however, Brew added a feature called [Tap](https://github.com/mxcl/homebrew/wiki/brew-tap) which makes it possible to install packages from remote Git repositories. This Git repository is Atlassian's Homebrew Tap.

## Why?

With Atlassian Plugin SDK 5.0.0, they've moved to Maven 3.2.1. That's nice, but what if you need to continue support for a legacy version of Confluence or JIRA? If you've installed Atlassian Plugin SDK 5.x, then you're screwed. 

This version is for the legacy users. It works nicely with Confluence 4.x.

## Usage

First, add this tap to your Brew:

    brew tap dvdsmpsn/tap

Next, draft from the tap:

    brew install dvdsmpsn/tap/<formula>

Third, enjoy your new brew.

e.g.

    brew install dvdsmpsn/tap/atlassian-plugin-sdk-42

This will install **Atlassian Plugin SDK 4.2.x** running off Maven 2.1.0	

## Contributing Formulae

If you're an Atlassian, go to town -- just make sure you follow the [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook).