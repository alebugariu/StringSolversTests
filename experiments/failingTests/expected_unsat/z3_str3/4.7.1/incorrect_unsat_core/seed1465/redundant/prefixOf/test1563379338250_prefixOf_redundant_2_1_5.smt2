(set-option :random-seed 1465)
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
 (let ((?x2123 (str.++ s t2_fresh)))
 (= ?x2123 t)) :named a1))
(assert (! 
 (let ((?x2434 (str.replace t2 tmp_str1 tmp_str2)))
 (let (($x2439 (= ?x2434 t2_fresh)))
 (and $x2439 (= (str.indexof t2 tmp_str1 0) (- 1))))) :named a2))
(assert (! 
 (let (($x557 (str.prefixof s t)))
 (let (($x558 (= $x557 true)))
 (not $x558))) :named a0))
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
;(a1 a2 a0)
