(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int6) (str.len tmp_str0)) (str.substr tmp_str0 tmp_int6 tmp_int6)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;actual status: sat
