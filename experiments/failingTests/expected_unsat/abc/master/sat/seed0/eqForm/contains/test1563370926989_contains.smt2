(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert  
 (= (str.++ (str.++ s1 t) s3) s))
(assert  
 (not (= (str.contains s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:02.591122 10219 main.cpp:292] report is_sat: SAT time: 94.1499 ms
;I0815 22:48:02.591169 10219 main.cpp:356] done.
