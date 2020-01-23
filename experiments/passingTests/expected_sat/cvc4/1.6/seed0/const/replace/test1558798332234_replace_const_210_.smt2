(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2165 (str.replace "\x07" "a" "a")))
 (= ?x2165 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
