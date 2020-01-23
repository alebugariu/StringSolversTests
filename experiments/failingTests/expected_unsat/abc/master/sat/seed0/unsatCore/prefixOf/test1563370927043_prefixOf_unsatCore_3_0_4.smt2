(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun tmp_str2 () String)
(assert  
 (and (= (str.replace s tmp_str1 tmp_str2) s_fresh) (= (str.contains s tmp_str1) false)))
(assert  
 (not (= (str.prefixof s t) true)))
(assert  
 (= (str.++ s_fresh t2) t))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:17.877171 10320 main.cpp:292] report is_sat: SAT time: 653.069 ms
;I0815 22:48:17.877229 10320 main.cpp:356] done.
