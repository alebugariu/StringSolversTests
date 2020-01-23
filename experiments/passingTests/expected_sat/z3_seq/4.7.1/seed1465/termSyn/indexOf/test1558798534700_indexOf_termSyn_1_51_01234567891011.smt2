(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1747 (str.indexof tmp_str0 tmp_str0 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.indexof ?x2008 (str.substr tmp_str0 tmp_int4 tmp_int4) ?x1747) ?x1747))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = -2
;String tmp_str0 = 
