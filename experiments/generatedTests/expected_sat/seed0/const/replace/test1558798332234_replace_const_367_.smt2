(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2191 (str.replace "-1" "-1" "2")))
 (= ?x2191 "2")))
(check-sat)

(get-info :reason-unknown)



