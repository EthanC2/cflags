# CFLAGS
*cflags* (C flags) is a collection of C compiler flag (option) collections. By abstracting flags into files and leveraging GCC's ability to
[read compiler flags from a file](https://gcc.gnu.org/onlinedocs/gcc/Overall-Options.html), you can easily manage and standardize compiler options across applications.
Flag collections are stored in suffixless ASCII text files under `/usr/share/cflags`.

The flag used in collections are compilations of recommendations from various sources, such as Red Hat's [recommended compiler and linked flags for GCC](https://developers.redhat.com/blog/2018/03/21/compiler-and-linker-flags-gcc)
