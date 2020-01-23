(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t2 () String)
(declare-fun s () String)
(assert (! 
 (let ((?x139 (str.replace t tmp_str1 tmp_str2)))
 (let (($x1038 (= ?x139 t_fresh)))
 (and $x1038 (= (str.indexof t tmp_str1 0) (- 1))))) :named a1))
(assert (! 
 (let ((?x352 (str.++ s t2)))
 (= ?x352 t_fresh)) :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1040 (= $x1036 true)))
 (not $x1040))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t2 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
