(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun tmp_str2 () String)
(assert (! 
 (let ((?x1346 (str.++ s_fresh t2)))
 (= ?x1346 t)) :named a1))
(assert (! 
 (and (= (str.replace s tmp_str1 tmp_str2) s_fresh) (= (str.contains s tmp_str1) false)) :named a2))
(assert (! 
 (let (($x991 (str.prefixof s t)))
 (let (($x992 (= $x991 true)))
 (not $x992))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE

;unsat core: a0 a1 a2 

