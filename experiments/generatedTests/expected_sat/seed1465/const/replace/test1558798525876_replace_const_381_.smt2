(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x211 (str.replace "-1" "2" "-1")))
 (= ?x211 "-1")))
(check-sat)

(get-info :reason-unknown)



