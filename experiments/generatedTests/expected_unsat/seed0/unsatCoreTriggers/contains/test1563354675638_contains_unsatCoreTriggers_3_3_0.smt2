(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(assert (! 
 (and (= (str.at s 0) s_fresh) (= (str.len s) 1)) :named a1))
(assert (! 
 (= (str.++ (str.++ s1 t) s3) s_fresh) :named a2))
(assert (! 
 (let (($x1097 (str.contains s t)))
 (let (($x1098 (= $x1097 true)))
 (not $x1098))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

