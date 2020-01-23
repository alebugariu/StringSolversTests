(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x328 (str.replace "0" "a" "a")))
 (= ?x328 "0")))
(check-sat)

(get-info :reason-unknown)



