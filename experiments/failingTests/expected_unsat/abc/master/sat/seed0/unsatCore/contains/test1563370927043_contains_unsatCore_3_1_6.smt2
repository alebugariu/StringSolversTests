(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t_fresh () String)
(declare-fun s1 () String)
(declare-fun t () String)
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.substr t 0 (str.len t)) t_fresh))
(assert  
 (= (str.++ (str.++ s1 t_fresh) s3) s))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;t_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:45.323602 10359 main.cpp:292] report is_sat: SAT time: 895.361 ms
;I0815 22:48:45.323664 10359 main.cpp:356] done.
