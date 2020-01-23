(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1381 (str.substr tmp_str0 tmp_int14 tmp_int14)))
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1766 (str.at ?x302 ?x92)))
 (= ?x1766 ?x1381))))))
(check-sat)

(get-value (tmp_str0 tmp_int14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int14 = -1


;actual status: sat

;model:
;String tmp_str0 = \xa2
;Int tmp_int14 = 2
