(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun offset_fresh () Int)
(declare-fun s () String)
(declare-fun tmp_str2 () String)
(declare-fun offset () Int)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s offset_fresh 1) result))
(assert  
 (and (= (str.indexof tmp_str2 "" offset) offset_fresh) (and (>= offset 0) (<= offset (str.len tmp_str2)))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;offset_fresh = NO VALUE
;tmp_str2 = NO VALUE

;unsat core: a0 a1 a2 
