(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2576 (str.replace "\n" "\x07" """a""")))
 (= ?x2576 "\n")))
(check-sat)

(get-info :reason-unknown)



