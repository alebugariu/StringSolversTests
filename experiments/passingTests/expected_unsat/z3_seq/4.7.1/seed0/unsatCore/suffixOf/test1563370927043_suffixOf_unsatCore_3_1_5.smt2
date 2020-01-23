(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1381 (str.indexof s tmp_str1 0)))
 (let (($x563 (= ?x1381 (- 1))))
 (let ((?x1376 (str.replace s tmp_str1 tmp_str2)))
 (let (($x1377 (= ?x1376 s_fresh)))
 (and $x1377 $x563))))) :named a1))
(assert (! 
 (let ((?x1891 (str.++ t1 s_fresh)))
 (= ?x1891 t)) :named a2))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1478 (= $x1473 true)))
 (not $x1478))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
