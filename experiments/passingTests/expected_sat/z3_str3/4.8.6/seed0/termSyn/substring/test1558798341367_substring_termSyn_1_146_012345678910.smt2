(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (let ((?x563 (str.replace tmp_str0 tmp_str0 tmp_str20)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x376 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1085 (str.substr ?x130 ?x376 ?x1081)))
 (= ?x1085 ?x563)))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str20 = 


;actual status: sat
;((tmp_str0 "aaasp")
; (tmp_int6 0)
; (tmp_str20 ""))

;model:
;String tmp_str20 = 
;Int tmp_int6 = 0
;String tmp_str0 = aaasp
