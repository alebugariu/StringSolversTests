(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1264 (str.indexof "0" "\n" (- 1))))
 (= ?x1264 (- 1))))
(check-sat)

(get-info :reason-unknown)



