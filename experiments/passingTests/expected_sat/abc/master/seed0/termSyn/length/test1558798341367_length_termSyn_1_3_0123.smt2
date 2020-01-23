(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str7 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.len (str.++ tmp_str0 tmp_str0)) (str.len tmp_str7)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str7 = -1
;actual status: sat
