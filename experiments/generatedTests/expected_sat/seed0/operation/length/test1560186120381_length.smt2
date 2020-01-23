(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () Int)
(declare-fun s () String)
(assert
 (= (str.len s) result))
(check-sat)

(get-value (s result ))
(get-info :reason-unknown)

;s = 
;result = 0


