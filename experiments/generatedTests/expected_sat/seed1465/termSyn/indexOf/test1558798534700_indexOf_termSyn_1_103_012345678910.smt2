(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int10 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2651 (str.indexof tmp_str0 tmp_str0 tmp_int10)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2259 (str.indexof ?x1783 ?x1783 ?x2651)))
 (= ?x2259 ?x1907))))))
(check-sat)

(get-value (tmp_str0 tmp_int10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1


