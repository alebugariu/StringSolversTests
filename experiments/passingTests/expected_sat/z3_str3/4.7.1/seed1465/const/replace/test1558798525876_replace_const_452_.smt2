(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x191 (str.replace "2" "" "\n")))
 (= ?x191 "\n2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
