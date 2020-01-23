(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.len tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int16 = -1
