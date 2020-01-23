(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x619 (str.replace "2" "" "\x07")))
 (= ?x619 "\x072")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
