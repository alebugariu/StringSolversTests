(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1729 (str.replace "2" "0" "-1")))
 (= ?x1729 "2")))
(check-sat)

(get-info :reason-unknown)



