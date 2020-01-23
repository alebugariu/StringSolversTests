(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(assert (! 
 (let (($x200 (forall ((i Int) )(! (let (($x195 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x195)) :pattern ( (str.substr t 0 i) )))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x202 (and (= (str.++ (str.++ s1 s2) (str.++ t s4)) s) (and $x152 $x200))))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x209 (ite (and (= (= t "") false) $x168) (and $x202 (= (str.len (str.++ s1 s2)) result)) (= (= result (- 1)) true))))
 (let (($x172 (=> (and (= (= t "") true) $x168) (= (= result offset) true))))
 (and $x172 $x209))))))))))) :named a1))
(assert (! 
 (not (= (str.indexof s t offset) result)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;()
