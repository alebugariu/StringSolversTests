(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x379 (str.++ "\x07" "a")))
 (= ?x379 "\x07a")))
(check-sat)

(get-info :reason-unknown)



