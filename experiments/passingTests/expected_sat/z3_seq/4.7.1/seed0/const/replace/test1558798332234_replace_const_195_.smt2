(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2053 (str.replace "\x07" "" "\x07")))
 (= ?x2053 "\x07\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
