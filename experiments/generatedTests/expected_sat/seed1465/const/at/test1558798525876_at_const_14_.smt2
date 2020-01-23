(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x131 (str.at "\n" 2)))
 (= ?x131 "")))
(check-sat)

(get-info :reason-unknown)



