(hall-description
  (name "todo")
  (prefix "")
  (version "0.1")
  (author "Ben M. Sutter")
  (copyright (2022))
  (synopsis "TODO Tracker")
  (description "Sutter's Lispy TODO Tracker")
  (home-page
    "https://www.github.com/bms-1984/todo")
  (license gpl3+)
  (dependencies `())
  (skip ())
  (files (libraries
           ((scheme-file "todo")
            (directory "todo" ((scheme-file "lib")))))
         (tests ((directory "tests" ())))
         (programs
           ((directory "scripts" ((in-file "todo")))))
         (documentation
           ((org-file "README")
	    (markdown-file "README")
            (text-file "HACKING")
            (text-file "COPYING")
            (directory "doc" ((texi-file "todo")))))
         (infrastructure
           ((scheme-file "guix")
            (text-file ".gitignore")
            (scheme-file "hall")
	    (shell-file "autogen")))))
