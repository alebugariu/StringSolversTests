(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2835 (str.replace "-1" "" "-1")))
 (= ?x2835 "-1-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
