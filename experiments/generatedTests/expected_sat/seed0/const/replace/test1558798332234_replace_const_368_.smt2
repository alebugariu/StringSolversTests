(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x829 (str.replace "-1" "0" "")))
 (= ?x829 "-1")))
(check-sat)

(get-info :reason-unknown)



