# ShowEnv
Launch a terminal to show environment variables that are set when your desktop environment starts.

# Building, packaging and installation

ShowEnv uses the autotools system developed by the FSF for packaging the required files for distribution. To begin, generate the `./configure` script by typing:

```shell
$ autoreconf --install
```
Then, run the `./configure` script with `/usr` as the prefix. Do note that you can use a different prefix if your distribution does not follow the typical directory hierarchy system used by most distributions.

```shell
$ ./configure --prefix=/usr
```

Now, you can install the files to a directory, which you can then compress into an archive for redistribution.

```shell
$ make DESTDIR=pkg install # ./pkg is the directory to install the files to
$ cd ./pkg && tar -zcvf ../showenv.tar.gz # compress the contents of pkg into showenv.tar.gz
```
