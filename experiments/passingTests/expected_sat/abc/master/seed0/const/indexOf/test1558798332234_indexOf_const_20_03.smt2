(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "0" 2) tmp_int3))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int3 = -1
;actual status: sat
