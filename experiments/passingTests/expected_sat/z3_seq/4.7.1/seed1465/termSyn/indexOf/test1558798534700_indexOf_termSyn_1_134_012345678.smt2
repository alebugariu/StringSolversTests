(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2085 (str.len tmp_str0)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2480 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1003 (str.indexof ?x2480 ?x1783 ?x2085)))
 (= ?x1003 ?x1907)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = 5494
;String tmp_str0 = \x00
