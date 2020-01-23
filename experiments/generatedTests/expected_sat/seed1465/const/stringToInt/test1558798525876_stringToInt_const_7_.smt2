(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2268 (str.to.int "2")))
 (= ?x2268 2)))
(check-sat)

(get-info :reason-unknown)



