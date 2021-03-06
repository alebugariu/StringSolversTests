(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2845 (str.at tmp_str0 tmp_int8)))
 (let ((?x2515 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.substr ?x130 ?x1081 ?x2515) ?x2845))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


;actual status: sat
;((tmp_str0 "acF")
; (tmp_int8 3))

;model:
;String tmp_str0 = acF
;Int tmp_int8 = 3
