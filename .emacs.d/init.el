
;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

; ----------------
; key bind
; ----------------
;; C-h
(global-set-key "\C-h" 'delete-backward-char)

;; window operation
(global-set-key "\C-t" 'other-window)

; ----
; preferences
; ----
; 括弧を自動で補完する
(electric-pair-mode 1)
;; tabにスペース４つを利用
(setq-default tab-width 4 indent-tabs-mode nil)
;; デフォルトの起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; 列の番号
(column-number-mode t)
;; 行番号の表示
(global-linum-mode t)
;; 1行ごとの改ページ
(setq scroll-conservatively 1)


