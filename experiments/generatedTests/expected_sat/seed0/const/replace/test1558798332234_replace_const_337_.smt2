(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1603 (str.replace "-1" "a" """a""")))
 (= ?x1603 "-1")))
(check-sat)

(get-info :reason-unknown)



