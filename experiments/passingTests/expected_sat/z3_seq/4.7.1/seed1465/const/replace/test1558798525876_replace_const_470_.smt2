(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2698 (str.replace "2" "a" "0")))
 (= ?x2698 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
