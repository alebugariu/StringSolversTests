(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2282 (str.replace "0" "0" """a""")))
 (= ?x2282 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
