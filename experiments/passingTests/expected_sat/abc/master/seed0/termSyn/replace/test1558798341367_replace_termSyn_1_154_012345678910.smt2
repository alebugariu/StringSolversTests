(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.replace (str.++ tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int4 tmp_int4) (str.at tmp_str0 tmp_int4)) (str.replace tmp_str0 tmp_str22 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str22 = 
;actual status: sat
