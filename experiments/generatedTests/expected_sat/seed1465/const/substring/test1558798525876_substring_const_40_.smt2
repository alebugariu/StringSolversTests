(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x770 (str.substr "\n" 0 0)))
 (= ?x770 "")))
(check-sat)

(get-info :reason-unknown)



