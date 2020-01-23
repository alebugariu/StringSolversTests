(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1827 (str.len """a""")))
 (= ?x1827 3)))
(check-sat)

(get-info :reason-unknown)



