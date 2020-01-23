(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x238 (str.++ "" "0")))
 (= ?x238 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
