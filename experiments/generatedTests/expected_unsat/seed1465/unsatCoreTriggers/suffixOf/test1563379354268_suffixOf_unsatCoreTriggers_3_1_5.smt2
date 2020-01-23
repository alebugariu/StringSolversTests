(set-option :random-seed 1465)
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
 (let ((?x1635 (str.indexof s tmp_str1 0)))
 (let (($x1640 (= ?x1635 (- 1))))
 (let ((?x516 (str.replace s tmp_str1 tmp_str2)))
 (let (($x517 (= ?x516 s_fresh)))
 (and $x517 $x1640))))) :named a1))
(assert (! 
 (let ((?x1325 (str.++ t1 s_fresh)))
 (= ?x1325 t)) :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x465 (= $x464 true)))
 (not $x465))) :named a0))
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

