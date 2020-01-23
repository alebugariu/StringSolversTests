(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x1081 (int.to.str tmp_int4)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x293 (str.indexof ?x2052 ?x1081 ?x229)))
 (= ?x293 ?x229))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int4 (- 1)))

;model:
;Int tmp_int4 = -1
;String tmp_str0 = 
