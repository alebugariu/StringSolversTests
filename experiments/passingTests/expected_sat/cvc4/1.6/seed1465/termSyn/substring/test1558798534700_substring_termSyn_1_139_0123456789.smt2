(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (let ((?x2555 (str.++ tmp_str20 tmp_str20)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x2007 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2188 (str.substr ?x2321 ?x2007 ?x545)))
 (= ?x2188 ?x2555)))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 
;Int tmp_int6 = 1
;String tmp_str0 = 
