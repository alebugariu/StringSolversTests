(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.++ (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5)) (str.at tmp_str0 tmp_int18)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int18 = 0
;actual status: sat
