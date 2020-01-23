(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "a" tmp_str1 0) tmp_int3))
(check-sat)

(get-value (tmp_str1 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_int3 = 0


