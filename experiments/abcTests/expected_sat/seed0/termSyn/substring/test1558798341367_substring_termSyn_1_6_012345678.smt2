(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1) (str.len tmp_str0)) (str.++ tmp_str18 tmp_str18)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 
