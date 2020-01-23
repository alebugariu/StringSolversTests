(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2 () String)
(declare-fun length () Int)
(declare-fun offset_fresh () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun tmp_str5 () String)
(declare-fun offset () Int)
(assert  
 (ite (and (and (>= offset_fresh 0) (< offset_fresh (str.len s))) (> length 0)) (and (= (str.++ (str.++ s1 s2) s3) s) (and (and (= (str.len s1) offset_fresh) (= (str.len s2) length)) (= (= s2 result) true))) (= (= result "") true)))
(assert  
 (and (= (str.indexof tmp_str5 "" offset) offset_fresh) (and (>= offset 0) (<= offset (str.len tmp_str5)))))
(assert  
 (not (= (str.substr s offset length) result)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;offset_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_str5 = NO VALUE

;unsat core: a0 a1 a2 
