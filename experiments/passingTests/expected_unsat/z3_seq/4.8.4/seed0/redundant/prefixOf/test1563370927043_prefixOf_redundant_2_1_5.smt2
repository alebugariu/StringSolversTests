(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2_fresh () String)
(declare-fun s () String)
(declare-fun tmp_str1 () String)
(declare-fun t2 () String)
(declare-fun tmp_str2 () String)
(assert (! 
 (let ((?x1340 (str.++ s t2_fresh)))
 (= ?x1340 t)) :named a1))
(assert (! 
 (let ((?x1453 (str.replace t2 tmp_str1 tmp_str2)))
 (let (($x1788 (= ?x1453 t2_fresh)))
 (and $x1788 (= (str.indexof t2 tmp_str1 0) (- 1))))) :named a2))
(assert (! 
 (let (($x991 (str.prefixof s t)))
 (let (($x992 (= $x991 true)))
 (not $x992))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2_fresh = NO VALUE
;t2 = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
