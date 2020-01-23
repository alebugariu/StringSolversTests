(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.prefixof (str.++ tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int4 tmp_int4)) (str.contains tmp_str0 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str16 = -1
