(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.replace tmp_str2 tmp_str2 tmp_str18)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str18 = 
