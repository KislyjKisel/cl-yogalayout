(asdf:defsystem #:cl-yogalayout
  :depends-on ("cl-autowrap/libffi"
               "float-features")
  :serial t
  :components ((:module c-src
                :pathname "yoga/yoga"
                :components ((:static-file "Yoga.h")))
               (:module autowrap-spec
                :pathname "spec"
                :components ((:static-file "Yoga.x86_64-pc-linux-gnu.spec")))
               (:module src
                :pathname "src"
                :components ((:file "package")
                             (:file "autowrap")
                             (:file "wrapped"))))
  :in-order-to ((asdf:test-op (asdf:test-op "cl-yogalayout/tests"))))

(defsystem "cl-yogalayout/tests"
  :depends-on ("cl-yogalayout"
               "parachute")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :perform (test-op (op c) (symbol-call :parachute :test :yogalayout/tests)))
