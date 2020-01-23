(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x887 (str.replace "" "a" "\x07")))
 (= ?x887 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
