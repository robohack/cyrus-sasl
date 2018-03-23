#!/bin/sh

argv0dir=$(dirname $0)

#
# XXX ??? --with-configdir=$PREFIX/etc/sasl2
#
# Hmmm.... how to avoid libtool braindamage???
#
# N.B.:  DO NOT add  --with-staticsasl unless using --enable-shared (which we don't want)
LDSTATIC="-static"
# XXX ideally we want static-linked programs, but libtool, being brain-damaged,
# wants "-all-static" to do that, however if we pass LDFLAGS="-all-static" then
# configure will bork out because it uses LDFLAGS directly.
#LDSTATICFLAGS="-static"
#
# XXX Unfortunately there doesn't seem any way to pass more flags to stupid libtool
#
/usr/bin/env -i INSTALL_DATA="install -c -o root -g wheel -m 444" INSTALL_PROGRAM="install -c -o root -g wheel -m 555" INSTALL_GAME="install -c -o root -g wheel -m 555" INSTALL_GAME_DATA="install -c -o root -g wheel -m 444" INSTALL_SCRIPT="install -c -o root -g wheel -m 555" MAKE="gmake" CONFIG_SHELL=/bin/sh lt_cv_sys_max_cmd_len=262144 ac_cv_sys_max_cmd_len=262144 LIBTOOL="/usr/pkg/bin/libtool" LDSTATIC="${LDSTATIC}" LDFLAGS="${LDSTATICFLAGS}" LINKER_RPATH_FLAG="-R" COMPILER_RPATH_FLAG="-Wl,-R" M4=/usr/bin/m4 /bin/sh ${argv0dir}/configure --with-plugindir=/usr/local/lib/sasl2 --disable-staticdlopen --enable-shared --enable-static --disable-anon --disable-checkapop --disable-cram --disable-digest --disable-gssapi --disable-krb4 --disable-login --disable-ntlm --disable-otp --disable-plain --disable-sql --disable-srp --disable-srp-setpass --with-dblib=none --without-openssl --without-pam --without-saslauthd --with-dblib=ndbm --with-dbpath=/etc/sasldb --enable-anon --enable-cram --enable-otp --enable-plain --enable-digest --with-rc4 --with-openssl= --with-saslauthd=/var/run/saslauthd --with-authdaemond=/var/authdaemon --enable-checkapop --with-devrandom=/dev/urandom --enable-static --prefix=/usr/local --disable-dependency-tracking --mandir=/usr/local/share/man


# Local Variables:
# eval: (make-local-variable 'compile-command)
# compile-command: (let ((fn (file-name-nondirectory (buffer-file-name)))) (concat "mkdir -p build; cd build && sh ../" fn))
# End:
