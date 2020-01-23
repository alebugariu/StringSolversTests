(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2787 (str.replace "-1" "" """a""")))
 (= ?x2787 """a""-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
