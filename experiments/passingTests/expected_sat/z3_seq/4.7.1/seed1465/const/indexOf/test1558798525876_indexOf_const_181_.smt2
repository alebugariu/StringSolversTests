(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x509 (str.indexof "2" "\n" 0)))
 (= ?x509 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
