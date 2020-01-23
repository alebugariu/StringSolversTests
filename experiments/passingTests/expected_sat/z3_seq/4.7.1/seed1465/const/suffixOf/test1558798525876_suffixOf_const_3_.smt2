(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x485 (str.suffixof "" "\x07")))
 (= $x485 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
