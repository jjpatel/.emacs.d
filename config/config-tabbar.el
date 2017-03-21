(use-package tabbar
  :ensure t
  :init
  (setq tabbar-use-images nil)
  (add-hook 'after-save-hook #'tabbar-update-modified)
  :config
  (unless (daemonp) (tabbar-mode 1))
  (add-to-list 'configure-frame-functions #'tabbar-update-modified)

  ;; Sort tabs by name
  ;; https://emacswiki.org/emacs/TabBarMode#toc7
  (defun tabbar-add-tab (tabset object &optional append_ignored)
    "Add to TABSET a tab with value OBJECT if there isn't one there yet.
    If the tab is added, it is added at the beginning of the tab list,
    unless the optional argument APPEND is non-nil, in which case it is
    added at the end."
    (let ((tabs (tabbar-tabs tabset)))
      (if (tabbar-get-tab object tabset)
          tabs
        (let ((tab (tabbar-make-tab object tabset)))
          (tabbar-set-template tabset nil)
          (set tabset (sort (cons tab tabs)
                            (lambda (a b) (string< (buffer-name (car a)) (buffer-name (car b))))))))))

  ;; Visual tweaks
  ;; https://gist.github.com/3demax/1264635
  ;; (setq tabbar-separator (quote (0.5)))
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

  ;; Tabbar Ruler projectile groups
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
            ((memq major-mode '(dired-mode)) '("Dir"))
            ((string-equal "*" (substring (buffer-name) 0 1)) '("Emacs"))
            ((memq major-mode '(org-mode calendar-mode diary-mode)) '("Org"))
            ((condition-case err (projectile-project-root) (error nil)) (list (projectile-project-name)))
            (t '("User"))))
      (symbol-value 'tabbar-projectile-tabbar-buffer-group-calc)))
  (setq tabbar-buffer-groups-function 'tabbar-projectile-tabbar-buffer-groups)

  (global-set-key (kbd "C-<prior>") 'tabbar-backward-tab)
  (global-set-key (kbd "C-<next>") 'tabbar-forward-tab)

  ;; Disable default tabbar keybindings
  (general-define-key
   :keymaps 'tabbar-mode-map
   :prefix "C-c"
   "C-<up>" nil
   "C-<down>" nil
   "C-<left>" nil
   "C-<right>" nil
   "C-<prior>" nil
   "C-<next>" nil
   "C-<home>" nil
   "C-<f10>" nil))

(defun tabbar-update-modified ()
  "Switching tabs seems to be the only way to force an update to the modified
state. 'tabbar-display-update' doesn't work."
  (when (bound-and-true-p tabbar-mode)
    (tabbar-forward-tab)
    (tabbar-backward-tab)))

(defun tabbar-select-tab-by-number (n)
  "Switch to the nth tab in the current tabset."
  (interactive)
  (let* ((tabset (tabbar-current-tabset))
         (tabs (tabbar-tabs tabset)))
    (when (<= n (length tabs))
      (tabbar-click-on-tab (nth (- n 1) tabs)))))

(defun tabbar-local-disable ()
  "Disable tabbar-mode if it's currently enabled."
  (interactive)
  (when (bound-and-true-p tabbar-mode)
    (tabbar-local-mode)))

(provide 'config-tabbar)
