(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1504 (str.replace tmp_str0 tmp_str0 tmp_str10)))
 (let ((?x1146 (int.to.str tmp_int1)))
 (let ((?x1466 (str.at tmp_str0 tmp_int1)))
 (let ((?x967 (str.++ ?x1466 ?x1146)))
 (= ?x967 ?x1504))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str10 = 


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str0 = \x00\x00\x00\x00\x00\x00
;String tmp_str10 = \x002
