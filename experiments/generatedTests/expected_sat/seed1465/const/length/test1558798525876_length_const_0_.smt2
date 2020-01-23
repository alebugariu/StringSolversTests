(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1842 (str.len "")))
 (= ?x1842 0)))
(check-sat)

(get-info :reason-unknown)



