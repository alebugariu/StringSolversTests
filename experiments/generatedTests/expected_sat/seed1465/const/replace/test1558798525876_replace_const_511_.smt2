(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2711 (str.replace "2" "2" "2")))
 (= ?x2711 "2")))
(check-sat)

(get-info :reason-unknown)



