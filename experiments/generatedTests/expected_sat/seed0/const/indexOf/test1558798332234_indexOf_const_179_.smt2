(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1859 (str.indexof "2" "\x07" 2)))
 (= ?x1859 (- 1))))
(check-sat)

(get-info :reason-unknown)



