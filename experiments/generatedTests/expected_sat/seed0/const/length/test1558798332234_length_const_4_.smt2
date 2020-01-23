(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1682 (str.len "\n")))
 (= ?x1682 1)))
(check-sat)

(get-info :reason-unknown)



