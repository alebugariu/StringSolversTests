(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1307 (str.len "")))
 (= ?x1307 0)))
(check-sat)

(get-info :reason-unknown)



