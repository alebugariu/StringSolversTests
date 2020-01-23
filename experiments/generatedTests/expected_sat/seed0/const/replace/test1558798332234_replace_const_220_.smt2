(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2216 (str.replace "\x07" "\x07" "\n")))
 (= ?x2216 "\n")))
(check-sat)

(get-info :reason-unknown)



