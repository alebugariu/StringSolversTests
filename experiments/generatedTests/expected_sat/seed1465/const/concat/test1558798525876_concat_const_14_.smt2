(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x295 (str.++ """a""" "0")))
 (= ?x295 """a""0")))
(check-sat)

(get-info :reason-unknown)



