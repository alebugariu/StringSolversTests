(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int26 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5) (str.substr tmp_str0 tmp_int5 tmp_int5)) (str.at tmp_str0 tmp_int26)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int26 = 0
;actual status: sat
