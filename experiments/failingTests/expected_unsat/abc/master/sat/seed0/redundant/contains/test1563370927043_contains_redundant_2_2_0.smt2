(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s3 () String)
(declare-fun s3_fresh () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ (str.++ s1 t) s3_fresh) s))
(assert  
 (and (= (str.at s3 0) s3_fresh) (= (str.len s3) 1)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE
;s3_fresh = NO VALUE

;unsat core: a0 a2 
;actual status: sat
;I0815 22:48:08.686877 10271 main.cpp:292] report is_sat: SAT time: 147.575 ms
;I0815 22:48:08.686928 10271 main.cpp:356] done.
