(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (= (str.replace ?x118 (str.at tmp_str0 tmp_int4) (int.to.str tmp_int4)) ?x118)))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = -2
;String tmp_str0 = 
