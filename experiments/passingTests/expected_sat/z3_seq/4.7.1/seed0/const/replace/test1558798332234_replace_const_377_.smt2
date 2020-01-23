(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x709 (str.replace "-1" "2" """a""")))
 (= ?x709 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
