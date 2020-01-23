(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2149 (str.replace "-1" "0" """a""")))
 (= ?x2149 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
