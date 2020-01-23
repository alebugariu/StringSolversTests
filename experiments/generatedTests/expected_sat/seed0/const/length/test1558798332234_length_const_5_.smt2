(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1220 (str.len "-1")))
 (= ?x1220 2)))
(check-sat)

(get-info :reason-unknown)



