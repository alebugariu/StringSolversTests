(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4) (str.substr tmp_str0 tmp_int4 tmp_int4)) (str.++ tmp_str0 tmp_str22)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str22 = 
;actual status: sat
