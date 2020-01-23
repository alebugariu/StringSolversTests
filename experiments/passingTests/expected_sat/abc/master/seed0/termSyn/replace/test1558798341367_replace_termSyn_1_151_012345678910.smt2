(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (= (str.replace (str.++ tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int8 tmp_int8)) (str.++ tmp_str0 tmp_str24)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str24 = 
;actual status: sat
