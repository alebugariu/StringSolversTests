(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert  
 (= (str.++ (str.++ s1 t) s3) s_fresh))
(assert  
 (and (= (str.at s 0) s_fresh) (= (str.len s) 1)))
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
;I0815 22:48:47.833104 10362 main.cpp:292] report is_sat: SAT time: 708.317 ms
;I0815 22:48:47.867142 10362 main.cpp:356] done.
