(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x253 (str.++ """a""" "")))
 (= ?x253 """a""")))
(check-sat)

(get-info :reason-unknown)



