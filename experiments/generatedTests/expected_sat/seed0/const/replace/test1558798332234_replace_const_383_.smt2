(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1845 (str.replace "-1" "2" "2")))
 (= ?x1845 "-1")))
(check-sat)

(get-info :reason-unknown)



