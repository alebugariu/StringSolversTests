(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x288 (str.++ """a""" "-1")))
 (= ?x288 """a""-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
