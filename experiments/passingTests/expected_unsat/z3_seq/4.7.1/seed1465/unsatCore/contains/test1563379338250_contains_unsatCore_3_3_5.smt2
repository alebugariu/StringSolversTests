(set-option :random-seed 1465)
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
 (let ((?x2298 (str.++ ?x325 s3)))
 (= ?x2298 s_fresh))) :named a1))
(assert (! 
 (let ((?x214 (str.replace s tmp_str2 tmp_str3)))
 (let (($x215 (= ?x214 s_fresh)))
 (and $x215 (= (str.indexof s tmp_str2 0) (- 1))))) :named a2))
(assert (! 
 (let (($x1059 (str.contains s t)))
 (let (($x1224 (= $x1059 true)))
 (not $x1224))) :named a0))
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

;actual status: unsat
