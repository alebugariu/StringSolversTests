(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x323 (str.++ "a" "a")))
 (= ?x323 "aa")))
(check-sat)

(get-info :reason-unknown)



