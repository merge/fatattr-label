# fatattr_label
Linux example tool to change a __mounted__ FAT filesystem partition's
label while it is being used. Want a USB Stick's name to be writable?
Then this might be for you.

### What's different from `fatlabel`?
[dosfstools](https://github.com/dosfstools/dosfstools)' `fatlabel` program writes
this label too, so what's the difference? Well, it only write the label when the
partition is __unmounted__ or while created. `fatattr_label` simply makes the label
writeable while the partition is being used.

### How to build

		./autogen.sh
		make


### How to use
Run `./fatattr_label` without parameters to see how to use it. This should
look like so


		Change label:
		   fatattr_label [mountpoint] [label]
		Show label:
		   fatattr_label [mountpoint]

		An example for listing available filesystems and their
		mountpoints would be:

		   df --output=source,fstype,target | grep -E 'msdos|fat'


`vfat`, `msdos` and `fat` types are supported. You can of course `make install`
it.

### Linux support
This tool is using the following ioctl interface that is *not* part of mainline
Linux as of now:

        #define VFAT_IOCTL_SET_LABEL _IOW('r', 0x14, __u32)


FAT12, FAT16 and FAT32 are supported, on 32bit and 64bit systems. You need to
apply the provided patch and build your kernel. The patch is included in this
source repository and applies to the latest Linux release.

I promised not to publish this quite yet. If you are overly interested in
having support for this now, feel free to [contact me](mailto:martink@posteo.de).
