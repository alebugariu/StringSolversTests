(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2197 (str.replace "2" "2" "-1")))
 (= ?x2197 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
