(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1543 (str.replace """a""" "-1" "0")))
 (= ?x1543 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
