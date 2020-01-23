(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x281 (str.++ """a""" "\n")))
 (= ?x281 """a""\n")))
(check-sat)

(get-info :reason-unknown)



