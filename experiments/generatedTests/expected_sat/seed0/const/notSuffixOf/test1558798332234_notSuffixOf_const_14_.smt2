(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2812 (str.suffixof "\x07" "")))
 (= $x2812 false)))
(check-sat)

(get-info :reason-unknown)



