(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0) (int.to.str tmp_int0)) (str.replace tmp_str2 tmp_str2 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str16 = 
;actual status: sat
