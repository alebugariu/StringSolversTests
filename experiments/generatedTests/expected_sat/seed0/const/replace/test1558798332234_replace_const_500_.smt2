(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2544 (str.replace "2" "0" "\n")))
 (= ?x2544 "2")))
(check-sat)

(get-info :reason-unknown)



