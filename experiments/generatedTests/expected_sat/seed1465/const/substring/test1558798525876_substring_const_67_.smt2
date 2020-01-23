(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x397 (str.substr "2" 0 0)))
 (= ?x397 "")))
(check-sat)

(get-info :reason-unknown)



