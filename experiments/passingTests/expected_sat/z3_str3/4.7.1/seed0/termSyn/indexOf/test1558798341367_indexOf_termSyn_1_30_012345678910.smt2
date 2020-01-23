(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1366 (str.indexof tmp_str0 tmp_str0 tmp_int4)))
 (let ((?x628 (str.at tmp_str0 tmp_int4)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (= (str.indexof ?x118 ?x628 ?x1366) ?x1366)))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = 0
;String tmp_str0 = wwaaaaaaaaaaaaaaaahA
