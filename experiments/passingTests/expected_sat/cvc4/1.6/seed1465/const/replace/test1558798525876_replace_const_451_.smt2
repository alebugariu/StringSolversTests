(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x281 (str.replace "2" "" "\x07")))
 (= ?x281 "\x072")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
