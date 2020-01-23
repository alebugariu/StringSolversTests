(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2_fresh () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun tmp_str5 () String)
(declare-fun s2 () String)
(declare-fun tmp_str6 () String)
(assert  
 (not (= (str.substr s offset length) result)))
(assert  
 (ite (and (and (>= offset 0) (< offset (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1 s2_fresh) s3) s) (and (and (= (str.len s1) offset) (= (str.len s2_fresh) length)) (= (= s2_fresh result) true))) (= (= result "") true)))
(assert  
 (and (= (str.replace s2 tmp_str5 tmp_str6) s2_fresh) (= (str.indexof s2 tmp_str5 0) (- 1))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE
;s2 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 
