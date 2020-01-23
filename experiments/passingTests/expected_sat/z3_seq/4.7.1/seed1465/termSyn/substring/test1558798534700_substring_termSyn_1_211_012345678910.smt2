(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x209 (str.replace tmp_str0 tmp_str0 tmp_str20)))
 (let ((?x40 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1521 (str.substr ?x1363 ?x1907 ?x40)))
 (= ?x1521 ?x209)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str20 = 


;actual status: sat

;model:
;Int tmp_int1 = 2
;String tmp_str20 = 
;String tmp_str0 = \x82\x00\x00
