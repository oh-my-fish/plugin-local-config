<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>


# local-config

Local configuration plugin for [Oh My Fish][omf-link].

Support per-user, per-host and per-platform custom configuration files.


## Install

```fish
$ omf install local-config
```


## Usage

Upon installation or loading, local-config automatically loads custom configuration files for the current user, host and platform. It'll even generate them if they're missing!

Use these for any custom configuration that should only run for a specific machine, operating system or user:

```
$OMF_CONFIG/users/strongbad.fish
$OMF_CONFIG/hosts/lappy486.fish
$OMF_CONFIG/platforms/Linux.fish
```

Additionally, you can add per-user, per-host and per-platform functions and completions:

```
$OMF_CONFIG/users/strongbad/functions/beleted.fish
$OMF_CONFIG/hosts/lappy486/completions/beleted.fish
```


# License

[MIT][mit] © [Justin Hileman][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/bobthecow
[contributors]:   https://github.com/oh-my-fish/plugin-local-config/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
