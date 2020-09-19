;;; custom-theme-common.el
;;; Created with ThemeCreator, https://github.com/mswift42/themecreator.

(defmacro custom-theme-set-common (name colors &rest body)
  `(let* ,colors
     ,@body
     (custom-theme-set-faces
      ,name
      `(default ((,class (:background ,bg1 :foreground ,fg1))))
      `(font-lock-builtin-face ((,class (:foreground ,builtin))))
      `(font-lock-comment-face ((,class (:foreground ,bg4))))
      `(font-lock-negation-char-face ((,class (:foreground ,const))))
      `(font-lock-reference-face ((,class (:foreground ,const))))
      `(font-lock-constant-face ((,class (:foreground ,const :weight bold))))
      `(font-lock-doc-face ((,class (:foreground ,bg4))))
      `(font-lock-function-name-face ((,class (:foreground ,func))))
      `(font-lock-keyword-face ((,class (:foreground ,keyword))))
      `(font-lock-string-face ((,class (:foreground ,str))))
      `(font-lock-type-face ((,class (:foreground ,type :weight bold))))
      `(font-lock-variable-name-face ((,class (:foreground ,var))))
      `(font-lock-preprocessor-face ((,class (:foreground ,cyan :weight bold))))
      `(font-lock-match-face ((,class (:foreground ,var :background ,success))))
      `(font-lock-warning-face ((,class (:foreground ,error :background ,bg1))))
      `(cursor ((,class (:background ,fg5))))
      `(default-italic ((,class (:italic t))))
      `(error ((,class (:foreground ,error))))
      `(fringe ((t (:foreground ,bg1 :background ,bg1))))
      `(header-line ((,class (:background ,bg6 :font ,local-menu-font-face))))
      `(tab-line ((,class (:background ,bg6 :font ,local-menu-font-face))))
      `(highlight ((,class (:foreground ,fg1 :background ,bg5))))
      `(hl-line ((,class (:foreground ,fg1 :background ,match))))
      `(link ((,class (:foreground ,const :underline t))))
      `(linum ((,class (:foreground ,bg4 :background ,bg1))))
      `(line-number ((,class (:foreground ,bg4 :background ,bg1))))
      `(line-number-current-line ((,class (:foreground ,bg4 :background ,bg1))))
      `(match ((,class (:foreground ,fg1 :background ,match))))
      `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
      `(region ((,class (:foreground ,fg1 :background ,bg3))))
      `(success ((,class (:foreground ,info))))
      `(vertical-border ((,class (:foreground ,border))))
      `(warning ((,class (:foreground ,warning))))
      `(isearch ((,class (:bold nil :foreground ,fg1 :background ,success2))))
      `(show-paren-match-face ((,class (:foreground ,fg1 :background ,success2))))
      `(show-paren-mismatch-face ((,class (:foreground ,fg1 :background ,error))))
      `(mode-line ((,class (:foreground ,fg2 :background ,bg6 :box (:line-width 1 :color ,ml-border) :font ,local-menu-font-face))))
      `(mode-line-buffer-id ((,class (:foreground ,type :bold t))))
      `(mode-line-emphasis ((,class (:foreground ,fg1))))
      `(mode-line-highlight ((,class (:foreground ,keyword :box nil))))
      `(mode-line-inactive ((,class (:foreground ,fg4 :background ,bg6 :box (:line-width 1 :color ,ml-border) :font ,local-menu-font-face))))
      `(powerline-active1 ((,class (:background ,bg2))))
      `(powerline-active2 ((,class (:background ,bg2))))
      `(powerline-inactive1 ((,class (:foreground ,fg1 :background ,bg2))))
      `(powerline-inactive2 ((,class (:foreground ,fg1 :background ,bg2))))
      `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
      `(anzu-replace-to ((,class (:foreground ,warning))))
      `(c-annotation-face ((,class (:foreground ,cyan :weight bold))))
      `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
      `(company-preview ((,class (:background ,bg1 :foreground ,var))))
      `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
      `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
      `(company-scrollbar-bg ((,class (:background ,bg6))))
      `(company-scrollbar-fg ((,class (:background ,bg4))))
      `(company-template-fist-eld ((,class (:inherit region))))
      `(company-tooltip ((,class (:foreground ,fg2 :background ,bg6 :bold nil))))
      `(company-tooltip-annotation ((,class (:foreground ,type))))
      `(company-tooltip-annotation-selection ((,class (:foreground ,type))))
      `(company-tooltip-common ((,class (:foreground ,success))))
      `(company-tooltip-common-selection ((,class (:foreground ,success))))
      `(company-tooltip-mouse ((,class (:inherit bg5))))
      `(company-tooltip-search ((,class (:foreground ,success))))
      `(company-tooltip-search-selection ((,class (:foreground ,success))))
      `(company-tooltip-selection ((,class (:foreground ,fg1 :background ,bg3))))
      `(css-property ((,class (:foreground ,tag))))
      `(css-selector ((,class (:foreground ,keyword))))
      `(dired-directory ((,class (:foreground ,blue :bold t))))
      `(dired-symlink ((,class (:foreground ,success))))
      `(doom-neotree-hidden-file-face ((,class (:foreground ,bg5 :background ,bg6))))
      `(doom-modeline-bar ((,class (:foreground ,fg1 :background ,bg5))))
      `(ensime-errline-highlight ((,class (:underline (:color ,error :style line)))))
      `(ensime-implicit-highlight ((,class (:underline nil))))
      `(ensime-warnline-highlight ((,class (:underline (:color ,warning :style line)))))
      `(evil-ex-info ((,class (:foreground ,warning))))
      `(evil-ex-substitute-replacement ((,class (:foreground ,warning))))
      `(ffap ((,class (:foreground ,fg4))))
      `(fl-inconsistent-face ((,class (:foreground ,fg1))))
      `(fl-mismatched-face ((,class (:foreground ,error))))
      `(flycheck-error ((,class (:underline ,error))))
      `(flycheck-error-list-highlight ((,class (:foreground ,fg5 :background ,error2))))
      `(flycheck-info ((,class (:underline ,info))))
      `(flycheck-warning ((,class (:underline ,warning))))
      `(cider-error-highlight-face ((,class (:underline (:color ,error :style wave)))))
      `(cider-warning-highlight-face ((,class (:underline (:color ,warning :style wave)))))
      `(clojure-keyword-face ((,class (:foreground ,keyword))))
      `(font-latex-bold-face ((,class (:foreground ,type))))
      `(font-latex-italic-face ((,class (:foreground ,var :italic t))))
      `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
      `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
      `(font-latex-string-face ((,class (:foreground ,str))))
      `(gnus-header-content ((,class (:foreground ,keyword))))
      `(gnus-header-from ((,class (:foreground ,var))))
      `(gnus-header-name ((,class (:foreground ,type))))
      `(gnus-header-subject ((,class (:foreground ,func :bold t))))
      `(highlight-indent-guides-character-face ((,class (:foreground ,bg2))))
      `(helm-bookmark-w3m ((,class (:foreground ,type))))
      `(helm-buffer-directory ((,class (:foreground ,builtin :background nil))))
      `(helm-buffer-file ((,class (:foreground ,fg1 :background nil))))
      `(helm-buffer-not-saved ((,class (:foreground ,builtin :background nil))))
      `(helm-buffer-process ((,class (:foreground ,builtin :background nil))))
      `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background nil))))
      `(helm-buffer-size ((,class (:foreground ,builtin :background nil))))
      `(helm-candidate-number ((,class (:foreground ,fg1 :background nil))))
      `(helm-ff-backup-file ((,class (:foreground ,fg1 :background ,bg1))))
      `(helm-ff-directory ((,class (:foreground ,blue :background ,bg1 :weight bold))))
      `(helm-ff-dotted-directory ((,class (:foreground ,blue :background ,bg1 :weight bold))))
      `(helm-ff-dotted-symlink-directory ((,class (:foreground ,blue :background ,bg1 :weight bold))))
      `(helm-ff-executable ((,class (:foreground ,info :background ,bg1 :weight normal))))
      `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
      `(helm-ff-file-extension ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
      `(helm-ff-invalid-symlink ((,class (:foreground ,warning :background ,bg1 :weight bold))))
      `(helm-ff-prefix ((,class (:foreground ,builtin :background ,bg1 :weight normal))))
      `(helm-ff-symlink ((,class (:foreground ,tag :background ,bg1 :weight bold))))
      `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
      `(helm-grep-file ((,class (:foreground ,fg4 :background ,bg1))))
      `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
      `(helm-grep-lineno ((,class (:foreground nil :background nil :inherit line-number))))
      `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
      `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
      `(helm-header ((,class (:foreground ,fg2 :background nil :underline nil :box nil))))
      `(helm-match ((,class (:foreground ,success :underline nil))))
      `(helm-moccur-buffer ((,class (:foreground ,func :background nil))))
      `(helm-selection ((,class (:foreground nil :background ,match :underline nil))))
      `(helm-selection-line ((,class (:background ,match))))
      `(helm-separator ((,class (:foreground ,type :background nil))))
      `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
      `(helm-source-header ((,class (:foreground ,keyword :background nil :underline nil :weight bold))))
      `(helm-swoop-line-number-face ((,class (:foreground ,bg4 :background ,bg4))))
      `(helm-swoop-target-line-face ((,class (:foreground ,fg1 :background ,bg3))))
      `(helm-swoop-target-line-block-face ((,class (:foreground ,fg1 :background ,bg3))))
      `(helm-swoop-target-word-face ((,class (:foreground ,var :background ,success2))))
      `(helm-time-zone-current ((,class (:foreground ,builtin :background nil))))
      `(helm-time-zone-home ((,class (:foreground ,type :background nil))))
      `(helm-visible-mark ((,class (:foreground ,fg1 :background ,bg3))))
      `(helm-xref-file-name ((,class (:foreground ,info))))
      `(hydra-face-red ((,class (:foreground ,warning))))
      `(icompletep-determined ((,class :foreground ,builtin)))
      `(ido-first-match ((,class (:foreground ,keyword))))
      `(ido-only-match ((,class (:foreground ,success))))
      `(ido-subdir ((,class (:foreground ,builtin))))
      `(ido-vertical-first-match-face ((,class (:foreground ,success))))
      `(ido-vertical-match-face ((,class (:foreground ,success))))
      `(ido-vertical-only-match-face ((,class (:foreground ,success))))
      `(info-quoted-name ((,class (:foreground ,builtin))))
      `(info-string ((,class (:foreground ,str))))
      `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
      `(jde-java-font-lock-modifier-face ((t (:foreground ,fg2))))
      `(jde-java-font-lock-number-face ((t (:foreground ,var))))
      `(jde-java-font-lock-package-face ((t (:foreground ,var))))
      `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
      `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
      `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
      `(js2-error ((,class (:underline ,error))))
      `(js2-external-variable ((,class (:foreground ,type))))
      `(js2-function-param ((,class (:foreground ,const))))
      `(js2-instance-member ((,class (:foreground ,fg1))))
      `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
      `(js2-jsdoc-html-tag-name ((,class (:foreground ,var))))
      `(js2-jsdoc-value ((,class (:foreground ,str))))
      `(js2-private-function-call ((,class (:foreground ,const))))
      `(js2-private-member ((,class (:foreground ,fg1))))
      `(js2-private-member ((,class (:foreground ,fg3))))
      `(js2-warning ((,class (:underline ,warning))))
      `(js3-error-face ((,class (:underline ,error))))
      `(js3-external-variable-face ((,class (:foreground ,var))))
      `(js3-function-param-face ((,class (:foreground ,fg2))))
      `(js3-instance-member-face ((,class (:foreground ,const))))
      `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
      `(js3-warning-face ((,class (:underline ,warning))))
      `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
      `(litable-result-face ((,class (:foreground ,success))))
      `(lsp-face-highlight-read ((,class (:foreground ,fg1 :background ,match))))
      `(lsp-face-highlight-write ((,class (:foreground ,fg1 :background ,match))))
      `(lsp-face-highlight-textual ((,class (:foreground ,fg1 :background ,match))))
      `(magit-blame-heading ((,class (:foreground ,fg3 :background ,bg3 :box (:line-width 1 :color ,bg4)))))
      `(magit-branch ((,class (:foreground ,const :weight bold))))
      `(magit-branch-current ((,class :foreground ,success)))
      `(magit-branch-local ((,class :foreground ,success)))
      `(magit-branch-remote ((,class :foreground ,builtin)))
      `(magit-diff-context-highlight ((,class (:background ,bg2 :foreground ,fg3))))
      `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
      `(magit-diff-file-heading ((,class (:foreground ,fg1 :background ,bg1))))
      `(magit-diff-hunk-heading ((,class (:background ,bg2))))
      `(magit-diff-hunk-heading-highlight ((,class (:background ,bg3))))
      `(magit-diffstat-added ((,class (:foreground ,info))))
      `(magit-diffstat-removed ((,class (:foreground ,error))))
      `(magit-hash ((,class (:foreground ,type :bold t))))
      `(magit-head ((,class (:foreground ,success))))
      `(magit-hunk-heading ((,class (:background ,bg2))))
      `(magit-hunk-heading-highlight ((,class (:background ,bg2))))
      `(magit-item-highlight ((,class :background ,bg3)))
      `(magit-log-author ((,class (:foreground ,blue))))
      `(magit-log-date ((,class (:foreground ,yellow))))
      `(magit-process-ng ((,class (:foreground ,error :weight bold))))
      `(magit-process-ok ((,class (:foreground ,func :weight bold))))
      `(magit-reflog-amend ((,class (:foreground ,yellow))))
      `(magit-reflog-checkout ((,class (:foreground ,cyan))))
      `(magit-reflog-cherry-pick ((,class (:foreground ,info))))
      `(magit-reflog-commit ((,class (:foreground ,green))))
      `(magit-reflog-merge ((,class (:foreground ,green))))
      `(magit-reflog-other ((,class (:foreground ,builtin))))
      `(magit-reflog-rebase ((,class (:foreground ,magenta))))
      `(magit-reflog-remote ((,class (:foreground ,builtin))))
      `(magit-reflog-reset ((,class (:foreground ,red))))
      `(magit-section-heading ((,class (:foreground ,keyword :weight bold))))
      `(magit-section-highlight ((,class (:background ,match))))
      `(magit-sequence-head ((,class (:foreground ,fg1))))
      `(magit-sequence-stop ((,class (:foreground ,fg1))))
      `(markdown-link-face ((,class (:foreground ,tag))))
      `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
      `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
      `(mu4e-header-marks-face ((,class (:foreground ,type))))
      `(mu4e-view-url-number-face ((,class (:foreground ,type))))
      `(neo-banner-face ((,class (:foregorund ,info :background ,bg6))))
      `(neo-dir-link-face ((,class (:foreground ,tag :background ,bg6))))
      `(neo-expand-btn-face ((,class (:foreground ,fg5 :background ,bg6 :bold t))))
      `(neo-file-link-face ((,class (:foreground ,bg7 :background ,bg6))))
      `(neo-header-face ((,class (:foreground ,fg4 :background ,bg6))))
      `(neo-root-dir-face ((,class (:foreground ,tag :background ,bg6))))
      `(treemacs-directory-face ((,class (:foreground ,cyan))))
      `(treemacs-root-face ((,class (:foreground ,fg1 :bold t :height 1.2))))
      `(treemacs-git-modified-face ((,class (:foreground ,green))))
      `(treemacs-git-renamed-face ((,class (:foreground ,green))))
      `(treemacs-git-added-face ((,class (:foreground ,green))))
      `(treemacs-git-conflict-face ((,class (:foreground ,red))))
      `(treemacs-git-untracked-face ((,class (:foreground ,yellow))))
      `(nxml-attribute-local-name ((,class (:foreground ,tag))))
      `(nxml-element-local-name ((,class (:foreground ,tag))))
      `(nxml-tag-delimiter ((,class (:foreground ,tag))))
      `(nxml-tag-slash ((,class (:foreground ,tag))))
      `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
      `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
      `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
      `(org-agenda-done ((,class (:foreground ,bg4))))
      `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
      `(org-block ((,class (:foreground ,fg3))))
      `(org-code ((,class (:foreground ,fg2))))
      `(org-date ((,class (:underline t :foreground ,var) )))
      `(org-document-info ((,class (:foreground ,fg1))))
      `(org-document-info-keyword ((,class (:foreground ,builtin))))
      `(org-document-info-keyword ((,class (:foreground ,func))))
      `(org-document-title ((,class (:foreground ,fg1))))
      `(org-done ((,class (:foreground ,info))))
      `(org-ellipsis ((,class (:foreground ,builtin))))
      `(org-footnote  ((,class (:underline t :foreground ,fg4))))
      `(org-hide ((,class (:foreground ,bg1))))
      `(org-level-1 ((,class (:foreground ,type :bold t))))
      `(org-level-2 ((,class (:foreground ,success :bold t))))
      `(org-level-3 ((,class (:foreground ,keyword :bold t))))
      `(org-level-4 ((,class (:foreground ,fg1 :bold t))))
      `(org-level-5 ((,class (:foreground ,fg1 :bold t))))
      `(org-level-6 ((,class (:foreground ,fg1 :bold t))))
      `(org-link ((,class (:underline t :foreground ,tag))))
      `(org-quote ((,class (:inherit org-block :slant italic))))
      `(org-scheduled ((,class (:foreground ,type))))
      `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
      `(org-sexp-date ((,class (:foreground ,fg4))))
      `(org-special-keyword ((,class (:foreground ,builtin))))
      `(org-todo ((,class (:foreground ,warning))))
      `(org-verbatim ((,class (:foreground ,fg4))))
      `(org-verse ((,class (:inherit org-block :slant italic))))
      `(org-warning ((,class (:underline t :foreground ,error))))
      `(popup-face ((,class (:foreground ,fg2 :background ,bg6))))
      `(popup-menu-selection-face ((,class (:foreground ,fg1 :background ,bg3))))
      `(popup-scroll-bar-background-face ((,class (:background ,bg6))))
      `(popup-scroll-bar-foreground-face ((,class (:background ,bg4))))
      `(popup-summary ((,class (:foreground ,fg2))))
      `(popup-tip-face ((,class (:foreground ,fg1 :background ,bg3))))
      `(rainbow-delimiters-depth-1-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-2-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-3-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-4-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-5-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-6-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-7-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-8-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-depth-9-face ((,class :foreground ,delim)))
      `(rainbow-delimiters-unmatched-face ((,class :foreground ,error)))
      `(scala-font-lock:var-face ((,class (:foreground ,var))))
      `(sh-quoted-exec ((,class (:foreground ,builtin))))
      `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
      `(centaur-tabs-default ((,class (:background ,bg6 :foreground ,bg3 :box (:line-width 1 :color ,bg6 :style nil) :font ,local-menu-font-face))))
      `(centaur-tabs-modified ((,class (:background ,bg6 :foreground ,bg3 :underline ,bg3 :box (:line-width 5 :color ,bg6 :style nil)  :font ,local-menu-font-face))))
      `(centaur-tabs-selected ((,class (:background ,bg1 :foreground ,fg5 :underline ,delim :box (:line-width 5 :color ,bg1 :style nil) :font ,local-menu-font-face))))
      `(centaur-tabs-selected-modified ((,class (:background ,bg1 :foreground ,fg5 :underline ,bg5 :box (:line-width 5 :color ,bg1 :style nil) :font ,local-menu-font-face))))
      `(centaur-tabs-unselected-modified ((,class (:background ,bg6 :foreground ,bg3 :underline ,bg5 :box (:line-width 5 :color ,bg6 :style nil) :font ,local-menu-font-face))))
      `(centaur-tabs-unselected ((t (:background ,bg6 :foreground ,bg3 :underline ,bg6 :box (:line-width 5 :color ,bg6 :style nil) :font ,local-menu-font-face))))
      `(centaur-tabs-active-bar-face ((,class (:background ,delim))))
      `(term ((,class (:foreground ,fg1 :background ,bg1))))
      `(term-color-black ((,class (:foreground ,bg3 :background ,bg1))))
      `(term-color-blue ((,class (:foreground ,blue :background ,bg1))))
      `(term-color-cyan ((,class (:foreground ,cyan :background ,bg1))))
      `(term-color-green ((,class (:foreground ,green :background ,bg1))))
      `(term-color-magenta ((,class (:foreground ,magenta :background ,bg1))))
      `(term-color-red ((,class (:foreground ,red :background ,bg1))))
      `(term-color-white ((,class (:foreground ,fg1 :background ,bg1))))
      `(term-color-yellow ((,class (:foreground ,yellow :background ,bg1))))
      `(tooltip ((,class (:foreground ,fg1 :background ,bg3))))
      `(trailing-whitespace ((,class (:foreground nil :background ,error))))
      `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
      `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
      `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
      `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
      `(web-mode-block-delimiter-face ((,class (:foreground ,fg1))))
      `(web-mode-builtin-face ((,class (:foregrund ,fg1))))
      `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
      `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
      `(web-mode-current-element-highlight-face ((,class (:background ,match))))
      `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
      `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
      `(web-mode-html-attr-name-face ((,class (:foreground ,tag))))
      `(web-mode-html-attr-value-face ((,class (:foreground ,str))))
      `(web-mode-html-tag-face ((,class (:foreground ,tag))))
      `(web-mode-keyword-face ((,class (:foreground ,keyword))))
      `(web-mode-string-face ((,class (:foreground ,str))))
      `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
      `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
      `(which-key-key-face ((,class (:foreground ,fg1))))
      `(which-key-separator-face ((,class (:foreground ,type))))
      `(git-gutter:modified ((,class (:foreground ,match))))
      `(git-gutter:added ((,class (:foreground ,success2))))
      `(git-gutter:deleted ((,class (:foreground ,builtin))))
      `(which-key-special-key-face ((,class (:foreground ,fg1 :underline t)))))
     (custom-theme-set-variables
      ,name
      `(custom-theme-color-fg1 ,fg1 t)
      `(custom-theme-color-fg2 ,fg2 t)
      `(custom-theme-color-fg3 ,fg3 t)
      `(custom-theme-color-fg4 ,fg4 t)
      `(custom-theme-color-fg5 ,fg5 t)
      `(custom-theme-color-fg6 ,fg6 t)
      `(custom-theme-color-bg1 ,bg1 t)
      `(custom-theme-color-bg2 ,bg2 t)
      `(custom-theme-color-bg3 ,bg3 t)
      `(custom-theme-color-bg4 ,bg4 t)
      `(custom-theme-color-bg5 ,bg5 t)
      `(custom-theme-color-bg6 ,bg6 t)
      `(custom-theme-color-bg7 ,bg7 t)
      `(custom-theme-color-red ,red t)
      `(custom-theme-color-green ,green t)
      `(custom-theme-color-yellow ,yellow t)
      `(custom-theme-color-blue ,blue t)
      `(custom-theme-color-magenta ,magenta t)
      `(custom-theme-color-cyan ,cyan t)
      `(custom-theme-color-builtin ,builtin t)
      `(custom-theme-color-keyword ,keyword t)
      `(custom-theme-color-const ,const t)
      `(custom-theme-color-func ,func t)
      `(custom-theme-color-str ,str t)
      `(custom-theme-color-type ,type t)
      `(custom-theme-color-var ,var t)
      `(custom-theme-color-tag ,tag t)
      `(custom-theme-color-border ,border t)
      `(custom-theme-color-match ,match t)
      `(custom-theme-color-success ,success t)
      `(custom-theme-color-success2 ,success2 t)
      `(custom-theme-color-info ,info t)
      `(custom-theme-color-error ,error t)
      `(custom-theme-color-error2 ,error2 t)
      `(custom-theme-color-warning ,warning t)
      `(custom-theme-color-delim ,delim t)
      `(custom-theme-color-ml-border ,ml-border t)
      `(company-quickhelp-color-foreground ,fg1)
      `(company-quickhelp-color-background ,bg6)
      `(beacon-color ,success))))

(provide 'custom-theme-common)
