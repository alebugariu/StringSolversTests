(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int6)) (str.++ tmp_str16 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str16 = 
;actual status: sat
