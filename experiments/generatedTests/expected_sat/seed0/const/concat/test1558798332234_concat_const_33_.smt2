(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x428 (str.++ "\n" """a""")))
 (= ?x428 "\n""a""")))
(check-sat)

(get-info :reason-unknown)



