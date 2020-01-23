(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1554 (str.replace """a""" "0" "")))
 (= ?x1554 """a""")))
(check-sat)

(get-info :reason-unknown)



