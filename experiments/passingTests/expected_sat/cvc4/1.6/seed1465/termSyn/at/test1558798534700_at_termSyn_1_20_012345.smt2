(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.len tmp_str0)) (str.at tmp_str0 tmp_int12)))
(check-sat)

(get-value (tmp_str0 tmp_int12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int12 = 0


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int12 = 0
