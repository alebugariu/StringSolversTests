(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x922 (str.replace "" "\x07" "")))
 (= ?x922 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
