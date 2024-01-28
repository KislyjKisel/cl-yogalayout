(in-package #:yogalayout)

(defmacro reexport (&rest symbols)
  `(progn
    (import ',symbols)
    (export ',symbols)))

(reexport
  ;; <yoga/YGConfig.h>
  %yg:config-ref
  %yg:config-new
  %yg:config-free
  %yg:config-get-default
  %yg:config-set-use-web-defaults
  %yg:config-get-use-web-defaults
  %yg:config-set-point-scale-factor
  %yg:config-get-point-scale-factor
  %yg:config-get-errata
  %yg:logger
  %yg:config-set-logger
  %yg:config-set-context
  %yg:config-get-context
  %yg:clone-node-func
  %yg:config-set-experimental-feature-enabled
  %yg:config-is-experimental-feature-enabled
  %yg:config-set-clone-node-func
  %yg:config-set-print-tree-flag
  ;; <yoga/YGEnums.h>
  %yg:align
  %yg:+align-auto+
  %yg:+align-flex-start+
  %yg:+align-center+
  %yg:+align-flex-end+
  %yg:+align-stretch+
  %yg:+align-baseline+
  %yg:+align-space-between+
  %yg:+align-space-around+
  ; %yg:+align-space-evenly+
  %yg:dimension
  %yg:+dimension-width+
  %yg:+dimension-height+
  %yg:direction
  %yg:+direction-inherit+
  %yg:+direction-ltr+
  %yg:+direction-rtl+
  %yg:display
  %yg:+display-flex+
  %yg:+display-none+
  %yg:edge
  %yg:+edge-left+
  %yg:+edge-top+
  %yg:+edge-right+
  %yg:+edge-bottom+
  %yg:+edge-start+
  %yg:+edge-end+
  %yg:+edge-horizontal+
  %yg:+edge-vertical+
  %yg:+edge-all+
  %yg:+errata-none+
  %yg:+errata-stretch-flex-basis+
  %yg:+errata-all+
  %yg:+errata-classic+
  %yg:experimental-feature
  %yg:+experimental-feature-web-flex-basis+
  %yg:flex-direction
  %yg:+flex-direction-column+
  %yg:+flex-direction-column-reverse+
  %yg:+flex-direction-row+
  %yg:+flex-direction-row-reverse+
  %yg:gutter
  %yg:+gutter-column+
  %yg:+gutter-row+
  %yg:+gutter-all+
  %yg:justify
  %yg:+justify-flex-start+
  %yg:+justify-center+
  %yg:+justify-flex-end+
  %yg:+justify-space-between+
  %yg:+justify-space-around+
  %yg:+justify-space-evenly+
  %yg:log-level
  %yg:+log-level-error+
  %yg:+log-level-warn+
  %yg:+log-level-info+
  %yg:+log-level-debug+
  %yg:+log-level-verbose+
  %yg:+log-level-fatal+
  %yg:measure-mode
  %yg:+measure-mode-undefined+
  %yg:+measure-mode-exactly+
  %yg:+measure-mode-at-most+
  %yg:node-type
  %yg:+node-type-default+
  %yg:+node-type-text+
  %yg:overflow
  %yg:+overflow-visible+
  %yg:+overflow-hidden+
  %yg:+overflow-scroll+
  %yg:position-type
  %yg:+position-type-static+
  %yg:+position-type-relative+
  %yg:+position-type-absolute+
  %yg:+print-options-layout+
  %yg:+print-options-style+
  %yg:+print-options-children+
  %yg:unit
  %yg:+unit-undefined+
  %yg:+unit-point+
  %yg:+unit-percent+
  %yg:+unit-auto+
  %yg:wrap
  %yg:+wrap-no-wrap+
  %yg:+wrap-wrap+
  %yg:+wrap-wrap-reverse+
  ;; <yoga/YGNode.h>
  %yg:node-ref
  %yg:node-new
  %yg:node-new-with-config
  %yg:node-clone
  %yg:node-free
  %yg:node-free-recursive
  ; %yg:node-finalize
  %yg:node-reset
  %yg:node-calculate-layout
  %yg:node-get-has-new-layout
  %yg:node-set-has-new-layout
  %yg:node-is-dirty
  %yg:node-mark-dirty
  %yg:node-set-dirtied-func
  %yg:node-get-dirtied-func
  %yg:node-insert-child
  %yg:node-swap-child
  %yg:node-remove-child
  %yg:node-remove-all-children
  %yg:node-set-children
  %yg:node-get-child
  %yg:node-get-child-count
  %yg:node-get-owner
  %yg:node-get-parent
  %yg:node-set-config
  %yg:node-set-context
  %yg:node-get-context
  %yg:size
  %yg:measure-func
  %yg:node-set-measure-func
  %yg:node-has-measure-func
  %yg:baseline-func
  %yg:node-set-baseline-func
  %yg:node-has-baseline-func
  %yg:node-set-is-reference-baseline
  %yg:node-is-reference-baseline
  %yg:node-set-node-type
  %yg:node-get-node-type
  ; %yg:node-set-always-forms-containing-block
  ;; <yoga/YGNodeLayout.h>
  %yg:node-layout-get-left
  %yg:node-layout-get-top
  %yg:node-layout-get-right
  %yg:node-layout-get-bottom
  %yg:node-layout-get-width
  %yg:node-layout-get-height
  %yg:node-layout-get-direction
  %yg:node-layout-get-had-overflow
  %yg:node-layout-get-margin
  %yg:node-layout-get-border
  %yg:node-layout-get-padding
  ;; <yoga/YGNodeStyle.h>
  %yg:node-copy-style
  %yg:node-style-set-direction
  %yg:node-style-get-direction
  %yg:node-style-set-flex-direction
  %yg:node-style-get-flex-direction
  %yg:node-style-set-justify-content
  %yg:node-style-get-justify-content
  %yg:node-style-set-align-content
  %yg:node-style-get-align-content
  %yg:node-style-set-align-items
  %yg:node-style-get-align-items
  %yg:node-style-set-align-self
  %yg:node-style-get-align-self
  %yg:node-style-set-position-type
  %yg:node-style-get-position-type
  %yg:node-style-set-flex-wrap
  %yg:node-style-get-flex-wrap
  %yg:node-style-set-overflow
  %yg:node-style-get-overflow
  %yg:node-style-set-display
  %yg:node-style-get-display
  %yg:node-style-set-flex
  %yg:node-style-get-flex
  %yg:node-style-set-flex-grow
  %yg:node-style-get-flex-grow
  %yg:node-style-set-flex-shrink
  %yg:node-style-get-flex-shrink
  %yg:node-style-set-flex-basis
  %yg:node-style-set-flex-basis-percent
  %yg:node-style-set-flex-basis-auto
  %yg:node-style-get-flex-basis
  %yg:node-style-set-position
  %yg:node-style-set-position-percent
  %yg:node-style-get-position
  %yg:node-style-set-margin
  %yg:node-style-set-margin-percent
  %yg:node-style-set-margin-auto
  %yg:node-style-get-margin
  %yg:node-style-set-padding
  %yg:node-style-set-padding-percent
  %yg:node-style-get-padding
  %yg:node-style-set-border
  %yg:node-style-get-border
  %yg:node-style-set-gap
  %yg:node-style-get-gap
  %yg:node-style-set-width
  %yg:node-style-set-width-percent
  %yg:node-style-set-width-auto
  %yg:node-style-get-width
  %yg:node-style-set-height
  %yg:node-style-set-height-percent
  %yg:node-style-set-height-auto
  %yg:node-style-get-width
  %yg:node-style-set-min-width
  %yg:node-style-set-min-width-percent
  %yg:node-style-get-min-width
  %yg:node-style-set-min-height
  %yg:node-style-set-min-height-percent
  %yg:node-style-get-min-height
  %yg:node-style-set-max-width
  %yg:node-style-set-max-width-percent
  %yg:node-style-get-max-width
  %yg:node-style-set-max-height
  %yg:node-style-set-max-height-percent
  %yg:node-style-get-max-height
  %yg:node-style-set-aspect-ratio
  %yg:node-style-get-aspect-ratio
  ;; <yoga/YGPixelGrid.h>
  %yg:round-value-to-pixel-grid
  ;; <yoga/YGValue.h>
  %yg:value
  %yg:value-auto
  %yg:value-undefined
  %yg:value-zero)

(export '+undefined+)
(define-symbol-macro +undefined+ (float-features:bits-single-float #b01111111110000000000000000000000))

(export 'errata)
(autowrap:define-bitmask-from-enum (errata %yg:errata))

(export 'config-set-errata)
(defun config-set-errata (config &rest errata)
  (%yg:config-set-errata config (autowrap:mask-apply 'errata errata)))

(export 'print-options)
(autowrap:define-bitmask-from-enum (print-options %yg:print-options)) ; "YGNodePrint" not exported

(export 'float-is-undefined)
(declaim (inline float-is-undefined))
(defun float-is-undefined (x) (float-features:float-nan-p x))
