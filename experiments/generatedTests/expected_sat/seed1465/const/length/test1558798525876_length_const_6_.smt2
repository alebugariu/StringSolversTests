(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1338 (str.len "0")))
 (= ?x1338 1)))
(check-sat)

(get-info :reason-unknown)



