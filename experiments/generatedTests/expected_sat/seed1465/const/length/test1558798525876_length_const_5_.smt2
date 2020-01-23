(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2601 (str.len "-1")))
 (= ?x2601 2)))
(check-sat)

(get-info :reason-unknown)



