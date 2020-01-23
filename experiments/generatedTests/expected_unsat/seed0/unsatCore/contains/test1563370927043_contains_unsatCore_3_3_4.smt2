(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun tmp_str3 () String)
(assert (! 
 (let ((?x325 (str.++ s1 t)))
 (let ((?x16 (str.++ ?x325 s3)))
 (= ?x16 s_fresh))) :named a1))
(assert (! 
 (and (= (str.replace s tmp_str2 tmp_str3) s_fresh) (= (str.contains s tmp_str2) false)) :named a2))
(assert (! 
 (let (($x146 (str.contains s t)))
 (let (($x599 (= $x146 true)))
 (not $x599))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE
;s_fresh = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 

