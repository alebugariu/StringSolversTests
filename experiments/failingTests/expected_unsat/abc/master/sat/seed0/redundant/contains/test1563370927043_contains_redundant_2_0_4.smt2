(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun s1 () String)
(declare-fun s1_fresh () String)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(assert  
 (and (= (str.replace s1 tmp_str2 tmp_str3) s1_fresh) (= (str.contains s1 tmp_str2) false)))
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ (str.++ s1_fresh t) s3) s))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 
;actual status: sat
;I0815 22:48:08.291254 10268 main.cpp:292] report is_sat: SAT time: 184.775 ms
;I0815 22:48:08.291290 10268 main.cpp:356] done.
