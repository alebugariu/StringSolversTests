(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1_fresh () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s1 () String)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (= (str.++ "" s1) s1_fresh))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1_fresh s2) s3) s) (and (and (= (str.len s1_fresh) offset) (= (str.len s2) length)) (= (= s2 result) true))) (= (= result "") true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:04.047982 10236 main.cpp:292] report is_sat: SAT time: 149.699 ms
;I0815 22:48:04.048017 10236 main.cpp:356] done.
