(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result_fresh () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun result () String)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (and (= (str.at result 0) result_fresh) (= (str.len result) 1)))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1 s2) s3) s) (and (and (= (str.len s1) offset) (= (str.len s2) length)) (= (= s2 result_fresh) true))) (= (= result_fresh "") true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;result_fresh = NO VALUE

;unsat core: a0 a1 a2 
