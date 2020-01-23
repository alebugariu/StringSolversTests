(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x512 (str.++ "-1" "-1")))
 (= ?x512 "-1-1")))
(check-sat)

(get-info :reason-unknown)



