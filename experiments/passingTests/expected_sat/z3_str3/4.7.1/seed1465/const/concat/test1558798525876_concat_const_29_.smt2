(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x400 (str.++ "\x07" "-1")))
 (= ?x400 "\x07-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
