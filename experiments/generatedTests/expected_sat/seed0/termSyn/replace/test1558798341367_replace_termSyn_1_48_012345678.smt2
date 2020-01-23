(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1161 (str.replace tmp_str0 tmp_str0 tmp_str16)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x2430 (int.to.str tmp_int1)))
 (let ((?x1696 (str.replace ?x2321 ?x2430 ?x2321)))
 (= ?x1696 ?x1161))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 


