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
 (let ((?x1697 (str.++ s t2_fresh)))
 (= ?x1697 t)) :named a1))
(assert (! 
 (let ((?x1041 (str.replace t2 tmp_str1 tmp_str2)))
 (let (($x593 (= ?x1041 t2_fresh)))
 (and $x593 (= (str.indexof t2 tmp_str1 0) (- 1))))) :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1040 (= $x1036 true)))
 (not $x1040))) :named a0))
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

;actual status: incorrect_unsat_core
;(a0 a2 a1)
