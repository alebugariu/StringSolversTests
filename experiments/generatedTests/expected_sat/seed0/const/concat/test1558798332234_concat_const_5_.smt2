(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x230 (str.++ "" "-1")))
 (= ?x230 "-1")))
(check-sat)

(get-info :reason-unknown)



