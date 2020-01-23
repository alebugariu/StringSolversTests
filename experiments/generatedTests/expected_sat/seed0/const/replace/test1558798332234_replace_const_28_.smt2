(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x947 (str.replace "" "\x07" "\n")))
 (= ?x947 "")))
(check-sat)

(get-info :reason-unknown)



