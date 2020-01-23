(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x779 (str.replace "0" "0" "-1")))
 (= ?x779 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
