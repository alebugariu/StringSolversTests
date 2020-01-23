(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x849 (str.to.int "0")))
 (= ?x849 0)))
(check-sat)

(get-info :reason-unknown)



