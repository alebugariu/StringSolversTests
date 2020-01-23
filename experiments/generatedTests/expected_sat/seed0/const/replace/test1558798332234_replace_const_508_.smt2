(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1815 (str.replace "2" "2" "\n")))
 (= ?x1815 "\n")))
(check-sat)

(get-info :reason-unknown)



