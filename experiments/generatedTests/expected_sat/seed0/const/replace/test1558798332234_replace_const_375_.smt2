(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x891 (str.replace "-1" "0" "2")))
 (= ?x891 "-1")))
(check-sat)

(get-info :reason-unknown)



