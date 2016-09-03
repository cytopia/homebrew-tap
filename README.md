# homebrew-tap

[cytopia](https://github.com/cytopia)'s custom homebrew's


## Formulas

### awesome-ci

* [https://github.com/cytopia/awesome-ci](https://github.com/cytopia/awesome-ci)
* Lot's of tools for git, file and static source code analysis.

```shell
$ brew install cytopia/tap/awesome-ci
```

### ffscreencast

* [https://github.com/cytopia/ffscreencast](https://github.com/cytopia/ffscreencast)
* ffscreencast is a shell wrapper for ffmpeg that allows fool-proof screen recording via the command line. It will auto-detect all available monitors, cameras and microphones and is able to interactively or manually choose the desired recording device(s). Additionally ffscreencast will let you overlay the camera stream on top of the desktop session.

```shell
$ brew install cytopia/tap/ffscreencast
```

### mysqldump-secure

 * [https://github.com/cytopia/mysqldump-secure](https://github.com/cytopia/mysqldump-secure)
 * [https://mysqldump-secure.org/](https://mysqldump-secure.org/)
 * Mysqldump-secure is a POSIX compliant wrapper script for mysqldump with many features and very strong security in mind. It will backup every available database (which is readable by the specified user) as a separate file with the possibility to opt out via blacklisting. Dumped databases can optionally be piped directly to gzip or openssl in order to compress and/or encrypt the backup. Encryption is done before the file is written to disk to avoid possible race conditions (See documentation for more info about security measurements).

```shell
$ brew install cytopia/tap/mysqldump-secure
```



## General
### How do I install these formulae?

```shell
brew install cytopia/tap/<formula>
```
or
```shell
brew tap cytopia/tap
brew install <formula>
```

### Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme).


