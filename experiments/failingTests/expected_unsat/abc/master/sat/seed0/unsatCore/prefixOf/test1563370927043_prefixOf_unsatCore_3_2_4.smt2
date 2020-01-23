(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t2 () String)
(declare-fun s () String)
(declare-fun tmp_str1 () String)
(declare-fun t () String)
(declare-fun tmp_str2 () String)
(assert  
 (and (= (str.replace t tmp_str1 tmp_str2) t_fresh) (= (str.contains t tmp_str1) false)))
(assert  
 (= (str.++ s t2) t_fresh))
(assert  
 (not (= (str.prefixof s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t_fresh = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:12.920929 10310 main.cpp:292] report is_sat: SAT time: 571.554 ms
;I0815 22:48:12.920989 10310 main.cpp:356] done.
