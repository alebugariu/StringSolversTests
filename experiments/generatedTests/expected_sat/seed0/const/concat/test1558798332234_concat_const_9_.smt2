(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x260 (str.++ """a""" """a""")))
 (= ?x260 """a""""a""")))
(check-sat)

(get-info :reason-unknown)



