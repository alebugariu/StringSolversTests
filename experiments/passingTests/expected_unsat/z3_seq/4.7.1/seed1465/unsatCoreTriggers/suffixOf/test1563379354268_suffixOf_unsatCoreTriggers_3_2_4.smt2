(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert (! 
 (let (($x1998 (str.contains t tmp_str1)))
 (let (($x518 (= $x1998 false)))
 (let ((?x682 (str.replace t tmp_str1 tmp_str2)))
 (let (($x683 (= ?x682 t_fresh)))
 (and $x683 $x518))))) :named a1))
(assert (! 
 (let ((?x373 (str.++ t1 s)))
 (= ?x373 t_fresh)) :named a2))
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
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
