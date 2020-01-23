(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x795 (str.replace ?x229 ?x229 ?x229)))
 (= ?x795 ?x229))))
(check-sat)

(get-value (tmp_int0 ))
(get-info :reason-unknown)

;tmp_int0 = -1


