(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (int.to.str (str.indexof tmp_str0 tmp_str0 tmp_int2)) (str.++ tmp_str8 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1
;tmp_str8 = 
