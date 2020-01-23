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
(declare-fun tmp_str3 () String)
(declare-fun tmp_bool4_fresh () Bool)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1 s2) s3) s) (and (and (= (str.len s1) offset) (= (str.len s2) length)) (= (= s2 result) tmp_bool4_fresh))) (= (= result "") tmp_bool4_fresh)))
(assert  
 (= (str.suffixof tmp_str3 tmp_str3) tmp_bool4_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_bool4_fresh = true
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 
