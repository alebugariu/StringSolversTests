(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2277 (str.indexof "0" "\x07" 0)))
 (= ?x2277 (- 1))))
(check-sat)

(get-info :reason-unknown)



