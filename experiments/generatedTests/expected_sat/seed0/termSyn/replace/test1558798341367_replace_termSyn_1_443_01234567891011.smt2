(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x70 (str.++ tmp_str24 tmp_str24)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2680 (str.replace ?x2040 ?x2040 ?x2040)))
 (= ?x2680 ?x70)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str24 = 


