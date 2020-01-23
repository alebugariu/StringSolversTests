(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x846 (str.len "a")))
 (= ?x846 1)))
(check-sat)

(get-info :reason-unknown)



