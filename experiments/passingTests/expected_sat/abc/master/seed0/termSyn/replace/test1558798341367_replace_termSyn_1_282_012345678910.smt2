(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int8)) (str.replace tmp_str0 tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;actual status: sat
