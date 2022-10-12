;; Copyright 2022 Ben M. Sutter
;;#lib.scm was last modified on October 05, 2022 at 03:53 PM EDT by bms#

;; This file is part of Todo.

;; Todo is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; Todo is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with Todo.  If not, see <https://www.gnu.org/licenses/>.

(define-module (todo lib)
  #:export (*store*)
  #:export (*home*)
  #:export (*config*))

(define *home* (getenv "HOME"))
(define *config* (string-append (getenv-or-string "XDG_CONFIG_HOME" (string-append *home* "/.config/")) "todo/"))
(define *store* (string-append *config* "store/"))

(define (getenv-or-string var str)
  (let ((env (getenv var)))
    (if env env str)))
