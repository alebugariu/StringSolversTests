(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x129 (int.to.str tmp_int1)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1570 (str.replace ?x2040 ?x129 ?x129)))
 (= ?x1570 (str.replace tmp_str0 tmp_str0 tmp_str16))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


