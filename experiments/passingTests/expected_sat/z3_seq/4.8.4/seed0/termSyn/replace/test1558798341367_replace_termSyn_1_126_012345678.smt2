(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (let ((?x1161 (str.replace tmp_str0 tmp_str0 tmp_str16)))
 (let ((?x2119 (int.to.str tmp_int6)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2608 (str.replace ?x118 ?x118 ?x2119)))
 (= ?x2608 ?x1161))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int6 = 2
;String tmp_str0 = \x00
;String tmp_str16 = 2
