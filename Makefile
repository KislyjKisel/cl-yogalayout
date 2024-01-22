LISP ?= sbcl
SYSNAME = cl-yogalayout
SYSNAME_TESTS = cl-yogalayout/tests

ENV = LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):./yoga/build/

LISP_START = $(LISP) \
	--noinform --lose-on-corruption --end-runtime-options \
	--eval '(asdf:load-asd (merge-pathnames "$(SYSNAME).asd" (uiop:getcwd)))' \
	--eval '(asdf:load-system :$(SYSNAME))' \
	--eval '(asdf:load-system :$(SYSNAME_TESTS))'

.PHONY: repl repl_ alive-lsp build-lib tests

repl:
	$(ENV) rlwrap $(LISP_START)

repl_:
	$(ENV) $(LISP_START)

alive-lsp:
	$(ENV) $(LISP_START) \
		--eval '(setf *print-circle* t)' \
		--eval '(ql:quickload "bordeaux-threads")' \
		--eval '(ql:quickload "usocket")' \
		--eval '(ql:quickload "cl-json")' \
		--eval '(ql:quickload "flexi-streams")' \
		--eval '(asdf:load-system :alive-lsp)' \
		--eval '(alive/server:start)'

build-lib:
	cmake -S yoga/yoga -B yoga/build -DCMAKE_BUILD_TYPE=Release
	cmake --build yoga/build
	c++ -shared -o yoga/build/libyoga.so -Wl,--whole-archive yoga/build/libyogacore.a -Wl,--no-whole-archive -lstdc++

test: SYSNAME=$(SYSNAME_TESTS)
test:
	$(ENV) $(LISP_START) \
		--eval '(parachute:test-toplevel '\''(yogalayout/tests::node-child))'
