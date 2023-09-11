#!/bin/sh

install-catalog --add /etc/sgml/sgml-docbook-dtd-4.5.cat /usr/share/sgml/docbook/sgml-dtd-4.5/catalog
install-catalog --add /etc/sgml/sgml-docbook-dtd-4.5.cat /etc/sgml/sgml-docbook.cat

cat >> /usr/share/sgml/docbook/sgml-dtd-4.5/catalog << "EOF"
  -- Begin Single Major Version catalog changes --

PUBLIC "-//OASIS//DTD DocBook V4.4//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.3//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.2//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.1//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.0//EN" "docbook.dtd"

  -- End Single Major Version catalog changes --
EOF
