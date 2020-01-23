(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s1_fresh () String)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ "" s1) s1_fresh))
(assert  
 (= (str.++ (str.++ s1_fresh t) s3) s))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 
;actual status: sat
;I0815 22:48:08.376893 10269 main.cpp:292] report is_sat: SAT time: 80.6062 ms
;I0815 22:48:08.376927 10269 main.cpp:356] done.
