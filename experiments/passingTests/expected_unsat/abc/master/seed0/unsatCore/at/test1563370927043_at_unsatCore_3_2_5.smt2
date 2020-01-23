(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result_fresh () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun tmp_str2 () String)
(declare-fun result () String)
(declare-fun tmp_str3 () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s offset 1) result_fresh))
(assert  
 (and (= (str.replace result tmp_str2 tmp_str3) result_fresh) (= (str.indexof result tmp_str2 0) (- 1))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;result_fresh = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: unsat
