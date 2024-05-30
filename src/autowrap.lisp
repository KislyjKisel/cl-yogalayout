(in-package #:%yogalayout)

(cffi:define-foreign-library yogalayout
    (:unix (:default "libyoga")))

(cffi:use-foreign-library yogalayout)

(autowrap:c-include
    '(cl-yogalayout c-src "Yoga.h")
    :spec-path '(cl-yogalayout autowrap-spec)
    :sysincludes (cl:list (cl:namestring (asdf:system-relative-pathname 'cl-yogalayout "yoga/")))
    :exclude-sources ("/usr/include/" "/usr/lib64/clang/[^/]*/include/.*")
    :include-sources ("stdint.h" "bits/types.h" "sys/types.h" "bits/stdint" "machine/_types.h" "stddef.h")
    :symbol-regex (("^YG_(.*)" () "\\1")
                   ("^YG(.*)" () "\\1"))
    :symbol-exceptions ()
    :exclude-definitions ("^_[A-Z]"
                          "__gnuc_va_list"
                          "va_list"
                          "max_align_t"))
