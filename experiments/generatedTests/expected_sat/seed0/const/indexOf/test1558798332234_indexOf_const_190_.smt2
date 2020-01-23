(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2349 (str.indexof "2" "2" 0)))
 (= ?x2349 0)))
(check-sat)

(get-info :reason-unknown)



