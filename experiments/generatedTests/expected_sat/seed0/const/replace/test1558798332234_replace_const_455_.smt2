(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x402 (str.replace "2" "" "2")))
 (= ?x402 "22")))
(check-sat)

(get-info :reason-unknown)



