(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.++ tmp_str8 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str8 = 
