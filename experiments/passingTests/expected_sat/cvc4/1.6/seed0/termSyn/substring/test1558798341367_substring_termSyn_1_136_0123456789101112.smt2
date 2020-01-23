(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (let ((?x1325 (str.replace tmp_str0 tmp_str0 tmp_str24)))
 (let ((?x376 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x158 (str.substr ?x130 ?x376 ?x376)))
 (= ?x158 ?x1325))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str24 = 


;actual status: sat

;model:
;Int tmp_int6 = 1
;String tmp_str0 = 
;String tmp_str24 = 
