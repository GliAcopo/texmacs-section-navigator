
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Section navigator for GNU TeXmacs: a tree of the sections of the current
;; document in the left side tools (View > Section navigator).
;;
;; Developed with the assistance of Claude Opus 5.5 (Anthropic).
;;
;; Copyright (C) 2026 Jacopo Rizzuto
;; This software is released under the GNU General Public License version 3
;; or any later version; see the LICENSE file in the repository.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(plugin-configure section-navigator
  (:require #t))

;; a TeXmacs built with the navigator (text/text-navigator.scm) does not need
;; the plugin, which then stays out of the way
(if (not (url-exists? (url-append "$TEXMACS_PATH" "progs/text/text-navigator.scm")))
    (resolve-module '(section-navigator section-navigator)))
