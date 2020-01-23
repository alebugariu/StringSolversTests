(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.replace tmp_str0 tmp_str0 tmp_str0) (str.len tmp_str0) (str.len tmp_str0)) (str.at tmp_str0 tmp_int18)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int18 = -1
