(define-module (guix-janelia packages emacs-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system emacs)
  #:use-module (gnu packages emacs-xyz))

(define-public emacs-dirvish
  (package
    (name "emacs-dirvish")
    (version "1.9.23")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/alexluigit/dirvish")
                    (commit "af5a099bf167729448a9b834ff9b2ec618617519")))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0s0rkpfpkx3nafahy0b96gjfsl5h1hccrx4iwqzsafm5v8q4yphr"))))
    (build-system emacs-build-system)
    (propagated-inputs (list emacs-transient))
    (arguments
     '(#:include '("^[^/]+.el$" "^[^/]+.el.in$"
                   "^dir$"
                   "^[^/]+.info$"
                   "^[^/]+.texi$"
                   "^[^/]+.texinfo$"
                   "^doc/dir$"
                   "^doc/[^/]+.info$"
                   "^doc/[^/]+.texi$"
                   "^doc/[^/]+.texinfo$"
                   "^extensions/[^/]+.el$")
       #:exclude '("^.dir-locals.el$" "^test.el$" "^tests.el$"
                   "^[^/]+-test.el$" "^[^/]+-tests.el$")
       #:phases
       (modify-phases %standard-phases
         ;; Move the extension files to the top level, which is included in
         ;; the EMACSLOADPATH.
         (add-after 'unpack 'move-extension-files
           (lambda _
             (let ((el-files (find-files "./extensions" ".*\\.el$")))
               (for-each (lambda (f)
                           (rename-file f (basename f)))
                         el-files)))))))
    (home-page "https://github.com/alexluigit/dirvish")
    (synopsis "Emacs file manager based on dired mode")
    (description
     "This package is an improved version of the Emacs inbuilt package Dired.
It provides multiple window layouts, always available file preview, isolated
sessions, and a composable user interface.")
    (license license:gpl3+)))
