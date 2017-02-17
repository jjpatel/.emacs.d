(require 'magit)
(require 'evil-magit)
(require 'dash)

(magit-auto-revert-mode -1) ; We already use global-auto-revert-mode
(evil-set-initial-state 'magit-mode 'emacs)
(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)

(global-git-commit-mode)
(add-hook 'git-commit-mode-hook 'flyspell-mode)
(add-hook 'git-commit-mode-hook (lambda () (toggle-save-place 0)))
(setq vc-follow-symlinks t)

;; Disable tabbar-mode in magit popups
(add-hook 'magit-popup-mode-hook
 (lambda ()
   (when (bound-and-true-p tabbar-mode)
     (tabbar-local-mode))))

(defun magit-mode-daemon-bury-or-quit ()
  "When quitting magit-mode, delete the frame if we're connecting from an
emacsclient, there are no other file buffers, and we're in the main magit
buffer. Otherwise, just bury the buffer."
  (interactive)
  (let ((buffers (-remove
                  (lambda (b) (string-match "\\*.+" (buffer-name b)))
                  (buffer-list))))
    (if (and
         (daemonp)
         (= (length buffers) 0)
         (string-prefix-p "*magit:" (buffer-name (current-buffer))))
        (delete-frame)
      (magit-mode-bury-buffer))))

(general-define-key
 :keymaps 'magit-mode-map
 "q" 'magit-mode-daemon-bury-or-quit)

(general-define-key
 :states '(magit normal visual)
 :keymaps 'magit-mode-map
 "C-k" nil
 "C-<tab>" (general-simulate-keys "^ <tab>")
 "C-S-<tab>" 'magit-section-cycle-diffs
 "S-<up>" (lambda () (interactive) (evil-previous-line 10))
 "S-<down>" (lambda () (interactive) (evil-next-line 10))
 "S-<left>" (lambda () (interactive) (evil-backward-char 10))
 "S-<right>" (lambda () (interactive) (evil-forward-char 10)))

(provide 'config-magit)
