(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1_fresh () String)
(declare-fun s1 () String)
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ (str.++ s1_fresh t) s3) s))
(assert  
 (= (str.replace s1 s1 s1) s1_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:07.344275 10261 main.cpp:292] report is_sat: SAT time: 103.503 ms
;I0815 22:48:07.344318 10261 main.cpp:356] done.
