(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2065 (str.replace "\x07" "" "\n")))
 (= ?x2065 "\n\x07")))
(check-sat)

(get-info :reason-unknown)



