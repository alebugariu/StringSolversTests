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
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun tmp_int1_fresh () Int)
(assert  
 (= (str.to.int "0") tmp_int1_fresh))
(assert  
 (ite (and (and (>= offset tmp_int1_fresh) (< offset (str.len s))) (> length tmp_int1_fresh)) (and (= (str.++ (str.++ s1 s2) s3) s) (and (and (= (str.len s1) offset) (= (str.len s2) length)) (= (= s2 result) true))) (= (= result "") true)))
(assert  
 (not (= (str.substr s offset length) result)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;tmp_int1_fresh = 0
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 
