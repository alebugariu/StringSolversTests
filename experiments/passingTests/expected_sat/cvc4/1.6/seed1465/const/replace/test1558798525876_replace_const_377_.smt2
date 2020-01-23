(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x941 (str.replace "-1" "2" """a""")))
 (= ?x941 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
