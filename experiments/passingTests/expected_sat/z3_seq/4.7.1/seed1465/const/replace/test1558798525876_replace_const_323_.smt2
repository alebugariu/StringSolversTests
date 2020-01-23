(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2811 (str.replace "-1" "" "\x07")))
 (= ?x2811 "\x07-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
