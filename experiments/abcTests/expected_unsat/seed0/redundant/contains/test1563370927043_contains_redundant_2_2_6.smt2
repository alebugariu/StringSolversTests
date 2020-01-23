(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3_fresh () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun s3 () String)
(assert  
 (= (str.++ (str.++ s1 t) s3_fresh) s))
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.substr s3 0 (str.len s3)) s3_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 
