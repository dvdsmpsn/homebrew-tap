# @dvdsmpsn's legacy version of Atlassian Homebrew Tap

This repository contains a collection of [Homebrew](http://mxcl.github.com/homebrew/) (aka, Brew) "formulae" for Atlassian. Brew is a simple package manager for OS X that's based on Git.

Traditionally, Brew packages are managed centrally at <https://github.com/mxcl/homebrew>. To update packages, a package developer has to send pull requests to update their packages to new versions. Recently, however, Brew added a feature called [Tap](https://github.com/mxcl/homebrew/wiki/brew-tap) which makes it possible to install packages from remote Git repositories. This Git repository is Atlassian's Homebrew Tap.

## Why?

With Atlassian Plugin SDK 5.0.0, they've moved to Maven 3.2.1. That's nice, but what if you need to continue support for a legacy version of Confluence or JIRA? If you've installed Atlassian Plugin SDK 5.x, then you're screwed. 

This version is for the legacy users. It works nicely with Confluence 4.x.

**Update:** With Atlassian SDK currently at 6.2.x, I've added support for v6.1.0 & v5.0.x

## Usage

First, add this tap to your Brew:

    brew tap dvdsmpsn/tap

Next, draft from the tap:

    brew install dvdsmpsn/tap/<formula>

Third, enjoy your new brew.

Need to swap between versions?

    brew uninstall dvdsmpsn/tap/<formula-x>
    brew install dvdsmpsn/tap/<formula-y>


### Atlassian SDK 6.1

	brew install dvdsmpsn/tap/atlassian-plugin-sdk-61

This will install Atlassiain SDK 6.1.0 



### Atlassian SDK 5.0

	brew install dvdsmpsn/tap/atlassian-plugin-sdk-50

This will install Atlassiain SDK 5.0.4 


### Atlassian SDK 4.2

    brew install dvdsmpsn/tap/atlassian-plugin-sdk-42

This will install **Atlassian Plugin SDK 4.2.x** running off Maven 2.1.0	


### Maven 3.2.5

	brew install dvdsmpsn/tap/maven325

This will install maven 3.2.5

## Contributing Formulae

Submit a pull request (just make sure you follow the [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook)) or create an issue.
