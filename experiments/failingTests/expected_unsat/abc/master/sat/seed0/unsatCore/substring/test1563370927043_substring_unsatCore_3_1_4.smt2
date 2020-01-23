(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun tmp_str5 () String)
(declare-fun s () String)
(declare-fun tmp_str6 () String)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (and (= (str.replace s tmp_str5 tmp_str6) s_fresh) (= (str.contains s tmp_str5) false)))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s_fresh))) (> length 0)) (and (= (str.++ (str.++ s1 s2) s3) s_fresh) (and (and (= (str.len s1) offset) (= (str.len s2) length)) (= (= s2 result) true))) (= (= result "") true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:30.429896 10339 main.cpp:292] report is_sat: SAT time: 805.96 ms
;I0815 22:48:30.430001 10339 main.cpp:356] done.
