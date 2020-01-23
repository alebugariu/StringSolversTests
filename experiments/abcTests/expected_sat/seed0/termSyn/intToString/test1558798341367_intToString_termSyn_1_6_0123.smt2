(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (int.to.str (str.to.int tmp_str0)) (str.++ tmp_str4 tmp_str4)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str4 = 
