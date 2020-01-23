(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2005 (str.replace "a" "2" "2")))
 (= ?x2005 "a")))
(check-sat)

(get-info :reason-unknown)



