(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int17 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.replace tmp_str0 tmp_str0 tmp_str0) (str.to.int tmp_str0) (str.to.int tmp_str0)) (int.to.str tmp_int17)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int17 = -1
