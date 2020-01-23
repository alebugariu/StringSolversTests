(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2290 (str.replace "\x07" "-1" """a""")))
 (= ?x2290 "\x07")))
(check-sat)

(get-info :reason-unknown)



