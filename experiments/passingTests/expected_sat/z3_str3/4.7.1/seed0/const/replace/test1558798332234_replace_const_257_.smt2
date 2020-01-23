(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2410 (str.replace "\n" "" """a""")))
 (= ?x2410 """a""\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
