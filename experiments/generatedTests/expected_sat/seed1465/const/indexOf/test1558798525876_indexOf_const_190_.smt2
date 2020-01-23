(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1264 (str.indexof "2" "2" 0)))
 (= ?x1264 0)))
(check-sat)

(get-info :reason-unknown)



