(setq tabbar-use-images nil)

(require 'tabbar)
(tabbar-mode 1)

(add-to-list 'configure-frame-functions
  (lambda ()
    (set-face-attribute 'tabbar-default nil :background "#202328" :foreground "#202328" :box '(:line-width 1 :color "#202328" :style nil) :font custom-font-face)
    (set-face-attribute 'tabbar-unselected nil :background "#202328" :foreground "#606060" :box '(:line-width 5 :color "#202328" :style nil))
    (set-face-attribute 'tabbar-selected nil :background "#272b33" :foreground "white" :box '(:line-width 5 :color "#272b33" :style nil))
    (set-face-attribute 'tabbar-modified nil :background "#202328" :foreground "#606060" :underline "#505050" :box '(:line-width 5 :color "#202328" :style nil))
    (set-face-attribute 'tabbar-selected-modified nil :background "#272b33" :foreground "white" :underline "#909090" :box '(:line-width 5 :color "#272b33" :style nil))
    (set-face-attribute 'tabbar-highlight nil :background "white" :foreground "black" :underline nil :box '(:line-width 5 :color "white" :style nil))
    (set-face-attribute 'tabbar-button nil :box '(:line-width 1 :color "#202328" :style nil))
    (set-face-attribute 'tabbar-separator nil :background "#202328" :height 0.6)
    (tabbar-forward-tab) ; Force redraw to fix colors
    (tabbar-backward-tab)))

(global-set-key (kbd "C-<prior>") 'tabbar-backward-tab)
(global-set-key (kbd "C-<next>") 'tabbar-forward-tab)

;; Tabbar visual tweaks
;; https://gist.github.com/3demax/1264635
(setq tabbar-separator (quote (0.5)))
(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB. That is, a string used to represent it on the tab bar."
  (let ((label  (if tabbar--buffer-show-groups
                    (format "[%s]  " (tabbar-tab-tabset tab))
                  (format "%s  " (tabbar-tab-value tab)))))
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
                                (tabbar-current-tabset)))))))))

;; Tabbar-Ruler projectile groups
;; https://github.com/mattfidler/tabbar-ruler.el
(defvar tabbar-projectile-tabbar-buffer-group-calc nil)
(defun tabbar-projectile-tabbar-buffer-groups ()
  "Return the list of group names BUFFER belongs to.
    Return only one group for each buffer."
  (if tabbar-projectile-tabbar-buffer-group-calc
      (symbol-value 'tabbar-projectile-tabbar-buffer-group-calc)
    (set (make-local-variable 'tabbar-projectile-tabbar-buffer-group-calc)
         (cond
          ((or (get-buffer-process (current-buffer)) (memq major-mode '(comint-mode compilation-mode))) '("Term"))
          ((string-equal "*" (substring (buffer-name) 0 1)) '("Emacs"))
          ((condition-case err (projectile-project-root) (error nil)) (list (projectile-project-name)))
          ((memq major-mode '(org-mode calendar-mode diary-mode)) '("Org"))
          ((memq major-mode '(dired-mode)) '("Dir"))
          (t '("User"))))
    (symbol-value 'tabbar-projectile-tabbar-buffer-group-calc)))
(setq tabbar-buffer-groups-function 'tabbar-projectile-tabbar-buffer-groups)

(provide 'config-tabbar)