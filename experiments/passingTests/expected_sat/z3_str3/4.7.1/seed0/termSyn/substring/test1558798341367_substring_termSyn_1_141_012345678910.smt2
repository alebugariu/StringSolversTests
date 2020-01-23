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
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x376 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2476 (str.substr ?x130 ?x376 ?x1327)))
 (= ?x2476 ?x563)))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = up
;Int tmp_int6 = 0
;String tmp_str0 = up
