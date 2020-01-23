(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun tmp_int1_fresh () Int)
(declare-fun offset () Int)
(declare-fun s () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.to.int "1") tmp_int1_fresh))
(assert  
 (= (str.substr s offset tmp_int1_fresh) result))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;tmp_int1_fresh = 1

;unsat core: a0 a1 a2 
