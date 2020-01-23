(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s1 () String)
(assert (! 
 (let ((?x2480 (str.replace t tmp_str2 tmp_str3)))
 (let (($x2481 (= ?x2480 t_fresh)))
 (and $x2481 (= (str.indexof t tmp_str2 0) (- 1))))) :named a1))
(assert (! 
 (let ((?x2477 (str.++ s1 t_fresh)))
 (let ((?x2478 (str.++ ?x2477 s3)))
 (= ?x2478 s))) :named a2))
(assert (! 
 (let (($x322 (str.contains s t)))
 (let (($x323 (= $x322 true)))
 (not $x323))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE
;s1 = NO VALUE
;t_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

