(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2586 (str.++ tmp_str4 tmp_str4)))
 (= (str.replace (int.to.str tmp_int0) (int.to.str tmp_int0) ?x2586) ?x2586)))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: sat
;((tmp_int0 (- 1))
; (tmp_str4 ""))

;model:
;Int tmp_int0 = -1
;String tmp_str4 = 
