(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int26 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.at tmp_str0 tmp_int26)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int26 = 0
;actual status: sat
