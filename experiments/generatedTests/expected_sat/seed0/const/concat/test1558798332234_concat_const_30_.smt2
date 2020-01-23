(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x407 (str.++ "\x07" "0")))
 (= ?x407 "\x070")))
(check-sat)

(get-info :reason-unknown)



