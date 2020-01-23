(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.++ tmp_str0 tmp_str0) (str.len tmp_str0) (str.len tmp_str0)) (str.++ tmp_str0 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 
;actual status: sat
