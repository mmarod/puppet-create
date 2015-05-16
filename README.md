# Create

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with Create](#setup)
    * [What Create affects](#what-Create-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with Create](#beginning-with-Create)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)
7. [Development - Guide for contributing to the module](#development)

## Overview

The Create module realizes resources defined in Hiera data by using create_resources.

## Module Description

The Create module realizes resources defined in Hiera data by using create_resources.

## Setup

### What Create affects

Resources will be created on the system.

### Setup requirements

* Puppet-3.0.0 or later

### Beginning with Create

Include '::create::(type)' in your manifests and create hiera data with a key 'create_(type)'
to create resources of 'type'.

## Usage

include '::create::users'

create_users:
  joe:
    managehome: true
    shell: /bin/bash

## Reference

### Classes

#### Public Classes

* [create::crons](#create-crons): Create cron resources
* [create::execs](#create-execs): Create exec resources
* [create::files](#create-files): Create file resources
* [create::groups](#create-groups): Create group resources
* [create::hosts](#create-hosts): Create host resources
* [create::nagios_commands](#create-nagios-commands): Create nagios_command resources
* [create::nagios_hosts](#create-nagios-hosts): Create nagios_host resources
* [create::nagios_services](#create-nagios-services): Create nagios_service resources
* [create::packages](#create-packages): Create package resources
* [create::services](#create-services): Create service resources
* [create::ssh_authorized_keys](#create-ssh-authorzied-keys): Create ssh_authorized_key resources
* [create::sshkeys](#create-sshkeys): Create sshkey resources
* [create::users](#create-users): Create user resources
* [create::yumrepos](#create-yumrepos): Create yumrepo resources

#### `create`

### Parameters

#### Hiera Keys

`create_crons`
`create_execs`
`create_files`
`create_groups`
`create_hosts`
`create_nagios_commands`
`create_nagios_hosts`
`create_nagios_services`
`create_packages`
`create_services`
`create_ssh_authorized_keys`
`create_sshkeys`
`create_users`
`create_yumrepos`
