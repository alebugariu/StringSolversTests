(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x195 (str.replace "0" "" """a""")))
 (= ?x195 """a""0")))
(check-sat)

(get-info :reason-unknown)



