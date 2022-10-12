(use-modules
  (guix packages)
  ((guix licenses) #:prefix license:)
  (guix download)
  (guix gexp)
  (guix build-system gnu)
  (gnu packages)
  (gnu packages autotools)
  (gnu packages guile)
  (gnu packages guile-xyz)
  (gnu packages pkg-config)
  (gnu packages texinfo))

(package
  (name "guile-todo")
  (version "0.1")
  (source (local-file "./guile-todo-0.1.tar.gz"))
  (build-system gnu-build-system)
  (arguments `())
  (native-inputs
    `(("autoconf" ,autoconf)
      ("automake" ,automake)
      ("pkg-config" ,pkg-config)
      ("texinfo" ,texinfo)))
  (inputs `(("guile" ,guile-3.0)))
  (propagated-inputs `())
  (synopsis "")
  (description "")
  (home-page
    "https://www.github.com/bms-1984/guile-todo")
  (license license:gpl3+))

