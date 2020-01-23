(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun s () String)
(assert  
 (= (str.++ (str.++ s1 t) s3) s_fresh))
(assert  
 (= (str.++ "" s) s_fresh))
(assert  
 (not (= (str.contains s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:45.976459 10360 main.cpp:292] report is_sat: SAT time: 644.974 ms
;I0815 22:48:45.976507 10360 main.cpp:356] done.
