(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x164 (str.at "0" 2)))
 (= ?x164 "")))
(check-sat)

(get-info :reason-unknown)



