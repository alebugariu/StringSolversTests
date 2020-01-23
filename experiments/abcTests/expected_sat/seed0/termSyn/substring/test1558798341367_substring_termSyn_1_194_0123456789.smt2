(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.substr tmp_str0 tmp_int1 tmp_int1) (str.len tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (str.++ tmp_str20 tmp_str20)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str20 = 
