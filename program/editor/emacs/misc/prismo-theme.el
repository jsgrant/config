;; ---------------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                                                         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Localtoast-theme.el -- A Light, Pretty-In-Pink Theme For Errmac         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Copyright (C) 2015/2017, Joshua S. Grant <src@jsgrant.io>                ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                                                             ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This Source Code Form is subject to the terms of the Mozilla Public      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; License, v. 2.0. If a copy of the MPL was not distributed with this     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; file, You can obtain one at http://mozilla.org/MPL/2.0/.               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                                                         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ---------------------------------------------------------------------------------------------------------------------------------------------

(deftheme localtoast
"A Light, Pretty-In-Pink Theme For Errmac; Made in/to
compliment the associative GNOME & Awesome Themes.")

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'localtoast
   `(cursor ((,class (:background "#A6A6A6"))))
   `(border-color ((,class (:background "#EDEDED"))))
   `(default ((,class (:background "#EDEDED" :foreground "#2E3436"))))
   `(fringe ((,class (:background "#E6E6E6"))))
   `(mode-line ((,class (:background "#000000" :foreground "white"))))
   `(mode-line-inactive ((,class (:background "#E5E5E5" :foreground "#C6C6C6"))))
   `(header-line ((,class (:foreground "#CCCCCC" :background "black"))))

   `(minibuffer-prompt ((,class (:foreground "#A87CCC" :bold t))))
   `(region ((,class (:foreground unspecified :background "#C2D5E9"))))
   `(dired-header ((,class (:bold t :foreground "#0084C8"))))
   `(widget-button ((,class (:bold t :foreground "#0084C8"))))

   `(powerline-active1 ((,class (:foreground "white" :background "black"))))
   `(powerline-active2 ((,class (:foreground "white" :background "black"))))
   `(powerline-inactive1 ((,class (:foreground "white" :background "white"))))
   `(powerline-inactive2 ((,class (:foreground "white" :background "white"))))

   `(success ((,class (:bold t :foreground "#4E9A06"))))
   `(warning ((,class (:foreground "#CE5C00"))))
   `(error ((,class (:foreground "#B50000"))))

   `(font-lock-builtin-face ((,class (:foreground "#000000" :bold t))))
   `(font-lock-constant-face ((,class (:foreground "#F5666D"))))
   `(font-lock-comment-face ((,class (:foreground "#8b8b8b"))))
   `(font-lock-function-name-face ((,class (:foreground "#F7529C" :bold t))))
   `(font-lock-keyword-face ((,class (:foreground "#000000" :bold t))))
   `(font-lock-doc-face ((,class (:foreground "#7F7F7F" :bold t))))
   `(font-lock-string-face ((,class (:foreground "#FF7394" :bold t))))
   `(font-lock-type-face ((,class (:foreground "#A8799C" :bold t))))
   `(font-lock-variable-name-face ((,class (:foreground "#0084C8" :bold t))))
   `(font-lock-warning-face ((,class (:foreground "#F5666D" :bold t))))

   `(link ((,class (:underline t :foreground "#0066CC"))))
   `(link-visited ((,class (:underline t :foreground "#6799CC"))))
   `(highlight ((,class (:foreground "white" :background "#4A90D9"))))
   `(isearch ((,class (:foreground "white" :background "#77A4DD"))))

   `(erc-action-face ((,class (:foreground "#F5666D"))))
   `(erc-button ((,class (:foreground "#A8799C"))))
   `(erc-current-nick-face ((,class (:bold t :foreground "#FF7092"))))
   `(erc-error-face ((,class (:foreground "#F5666D" :bold t))))
   `(erc-input-face ((,class (:foreground "black"))))
   `(erc-keyword-face ((,class (:foreground "#F5666D"))))
   `(erc-my-nick-face ((,class (:bold t :foreground "#FF8CA7"))))
   `(erc-nick-default-face ((,class (:bold t :foreground "#0084C8"))))
   `(erc-notice-face ((,class (:foreground "#0084C8"))))
   `(erc-prompt-face ((,class (:foreground "black"))))
   `(erc-timestamp-face ((,class (:foreground ,"#4CB64A"))))

   `(magit-log-sha1 ((,class (:foreground "#FF7092"))))
   `(magit-log-head-label-local ((,class (:foreground "#4F78B5"))))
   `(magit-log-head-label-remote ((,class (:foreground ,"#4CB64A"))))
   `(magit-branch ((,class (:bold t :foreground "#0084C8"))))
   `(magit-section-title ((,class (:bold t :foreground "#00578E"))))
   `(magit-item-highlight ((,class (:background "#FEFFBF"))))
   `(magit-diff-add ((,class (:bold t :foreground "#4CB64A"))))
   `(magit-diff-del ((,class (:bold nil :foreground "#F5666D"))))

   `(gnus-group-mail-1-empty ((,class (:foreground "#00578E"))))
   `(gnus-group-mail-1 ((,class (:bold t :foreground "#4F78B5"))))
   `(gnus-group-mail-3-empty ((,class (:foreground "#00578E"))))
   `(gnus-group-mail-3 ((,class (:bold t :foreground "#9CBB43"))))
   `(gnus-group-news-3-empty ((,class (:foreground "#00578E"))))
   `(gnus-group-news-3 ((,class (:bold t :foreground "#9CBB43"))))
   `(gnus-header-name ((,class (:bold t :foreground "#0084C8"))))
   `(gnus-header-subject ((,class (:bold t :foreground "#FF7092"))))
   `(gnus-header-content ((,class (:foreground "#FF7092"))))
   `(gnus-button ((,class (:bold t :foreground "#00578E"))))
   `(gnus-cite-1 ((,class (:foreground "#00578E"))))
   `(gnus-cite-2 ((,class (:foreground "#0084C8"))))

   `(diff-added ((,class (:bold t :foreground "#4E9A06"))))
   `(diff-removed ((,class (:bold t :foreground "#F5666D"))))))

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; localtoast-theme.el  ends here
