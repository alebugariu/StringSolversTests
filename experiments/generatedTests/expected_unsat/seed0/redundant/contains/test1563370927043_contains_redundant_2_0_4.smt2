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
(assert (! 
 (and (= (str.replace s1 tmp_str2 tmp_str3) s1_fresh) (= (str.contains s1 tmp_str2) false)) :named a1))
(assert (! 
 (let ((?x2466 (str.++ s1_fresh t)))
 (let ((?x2467 (str.++ ?x2466 s3)))
 (= ?x2467 s))) :named a2))
(assert (! 
 (let (($x322 (str.contains s t)))
 (let (($x323 (= $x322 true)))
 (not $x323))) :named a0))
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

