#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

APIXCASHD=${APIXCASHD:-$SRCDIR/apixcashd}
APIXCASHCLI=${APIXCASHCLI:-$SRCDIR/apixcash-cli}
APIXCASHTX=${APIXCASHTX:-$SRCDIR/apixcash-tx}
APIXCASHQT=${APIXCASHQT:-$SRCDIR/qt/apixcash-qt}

[ ! -x $APIXCASHD ] && echo "$APIXCASHD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
APXVER=($($APIXCASHCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for apixcashd if --version-string is not set,
# but has different outcomes for apixcash-qt and apixcash-cli.
echo "[COPYRIGHT]" > footer.h2m
$APIXCASHD --version | sed -n '1!p' >> footer.h2m

for cmd in $APIXCASHD $APIXCASHCLI $APIXCASHTX $APIXCASHQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${APXVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${APXVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
