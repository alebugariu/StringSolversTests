(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x126 (str.at "\n" 0)))
 (= ?x126 "\n")))
(check-sat)

(get-info :reason-unknown)



