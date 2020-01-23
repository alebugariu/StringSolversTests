(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2254 (str.replace "\x07" "\n" """a""")))
 (= ?x2254 "\x07")))
(check-sat)

(get-info :reason-unknown)



