(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int7 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int7)) (str.at tmp_str0 tmp_int7)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
