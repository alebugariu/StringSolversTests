(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2176 (str.replace "\x07" "a" "-1")))
 (= ?x2176 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
