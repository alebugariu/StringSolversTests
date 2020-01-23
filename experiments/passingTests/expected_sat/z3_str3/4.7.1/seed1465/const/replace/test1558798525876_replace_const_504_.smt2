(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x411 (str.replace "2" "2" "")))
 (= ?x411 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
