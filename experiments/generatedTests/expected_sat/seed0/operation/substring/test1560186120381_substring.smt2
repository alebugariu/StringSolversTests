(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s () String)
(assert
 (= (str.substr s offset length) result))
(check-sat)

(get-value (s offset length result ))
(get-info :reason-unknown)

;s = 
;offset = -1
;length = -1
;result = 


