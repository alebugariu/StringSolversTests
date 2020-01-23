(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x414 (str.++ "\x07" "2")))
 (= ?x414 "\x072")))
(check-sat)

(get-info :reason-unknown)



