;;; packages.el --- makohoek-email layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Mattijs Korpershoek
;;
;; Author: Mattijs Korpershoek <mattijs.korpershoek@gmail.com>
;; URL: https://github.com/makohoek/dotfiles
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:
(defconst makohoek-email-packages '(notmuch))

;; notmuch is owned by the notmuch layer
(defun makohoek-email/post-init-notmuch()
  (use-package notmuch
    :defer t
    :config

    ;; message buffer will be killed after sending a message
    (setq message-kill-buffer-on-exit t)

    (setq user-mail-address "mattijs.korpershoek@gmail.com"
          user-full-name "Mattijs Korpershoek")

    ;; default config when sending mail
    (setq send-mail-function 'message-send-mail-with-sendmail
          message-send-mail-function 'message-send-mail-with-sendmail
          smtpmail-debug-info nil
          mail-setup-hook nil
          sendmail-program "/usr/bin/msmtp")

    ;; for MacOS, change msmtp path
    (when (string-equal system-type "darwin")
      (setq sendmail-program "/usr/local/bin/msmtp"))

    ;; load (optional) work email config
    (load "~/.spacemacs-layers/makohoek-work/config.el" 't)))
