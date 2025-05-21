(define-module (guix-janelia packages qp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages qt)
  )

(define-public qpc
  (package
    (name "qpc")
    (version "7.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/QuantumLeaps/qpc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1g8imcpyr9vd8c7c5vjmgs1crn5g2j9390sfa2kdvq9s6a9bq11b"))))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("." "share/qpc"
           #:exclude-regexp ("3rd_party"
                             ".gitignore"
                             ".gitmodules"
                             "examples")))
      #:modules '(((guix build gnu-build-system) #:prefix gnu:)
                  (guix build copy-build-system)
                  (guix build utils)
                  (ice-9 match))))
    (native-search-paths
     (list (search-path-specification
            (variable "QPC")
            (files '("share/qpc")))))
    (propagated-inputs (list coreutils gcc-toolchain gnu-make))
    (home-page "https://www.state-machine.com/qpc/")
    (synopsis "Real-time framework in C for building embedded software as systems of asynchronous event-driven active objects")
    (description "This package contains a real-time framework in C for building embedded systems based on active objects and hierarchical state machines.")
    (license license:gpl3+)))

(define-public qm
  (package
    (name "qm")
    (version "5.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/QuantumLeaps/qm/releases/download/v" version "/qm_" version "-linux64.zip"))
       (sha256
        (base32 "1jic00wfyy9if9r4z9zr4hxghm824wcfl16hii9zd6phbgw4kkmj"))))
    (build-system copy-build-system)
    ;; (arguments
    ;;  (list
    ;;   #:install-plan
    ;;   #~'(("." "share/qpc"
    ;;        #:exclude-regexp ("3rd_party"
    ;;                          ".gitignore"
    ;;                          ".gitmodules"
    ;;                          "examples")))
    ;;   #:modules '(((guix build gnu-build-system) #:prefix gnu:)
    ;;               (guix build copy-build-system)
    ;;               (guix build utils)
    ;;               (ice-9 match))))
    ;; (native-search-paths
    ;;  (list (search-path-specification
    ;;         (variable "QPC")
    ;;         (files '("share/qpc")))))
    (native-inputs
     (list unzip))
    (inputs (list coreutils gcc gcc-toolchain qtbase))
    (home-page "https://www.state-machine.com/qm/")
    (synopsis "")
    (description "")
    (license license:gpl3+)))
qm
