(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1880 (str.substr "2" 2 0)))
 (= ?x1880 "")))
(check-sat)

(get-info :reason-unknown)



