(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1851 (str.replace "-1" "0" "2")))
 (= ?x1851 "-1")))
(check-sat)

(get-info :reason-unknown)



