(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1823 (str.replace tmp_str0 tmp_str0 tmp_str20)))
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.replace ?x816 ?x2321 ?x816)))
 (= ?x2008 ?x1823))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str20 = 


;actual status: sat

;model:
;Int tmp_int1 = 1
;String tmp_str20 = \x00
;String tmp_str0 = \x00\x00\x00
