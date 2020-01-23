(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1289 (str.indexof "" "2" 0)))
 (= ?x1289 (- 1))))
(check-sat)

(get-info :reason-unknown)



