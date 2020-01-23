(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (let ((?x2285 (str.indexof tmp_str4 tmp_str4 tmp_int0)))
 (= (str.indexof (int.to.str tmp_int0) (int.to.str tmp_int0) ?x2285) ?x2285)))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: sat

;model:
;Int tmp_int0 = 1
;String tmp_str4 = 
