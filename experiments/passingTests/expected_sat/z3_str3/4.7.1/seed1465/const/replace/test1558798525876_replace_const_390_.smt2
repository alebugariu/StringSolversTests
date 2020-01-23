(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x969 (str.replace "0" "" "0")))
 (= ?x969 "00")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
