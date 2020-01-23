(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2_fresh () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun s2 () String)
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x1063 (str.++ s1 s2_fresh)))
 (let ((?x1404 (str.len ?x1063)))
 (let (($x1405 (= ?x1404 result)))
 (let (($x1401 (forall ((i Int) )(let (($x1399 (= (str.contains (str.++ s2_fresh (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x1399)))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x1402 (and $x152 $x1401)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x1391 (str.++ ?x1063 ?x176)))
 (let (($x1392 (= ?x1391 s)))
 (let (($x1403 (and $x1392 $x1402)))
 (let (($x1406 (and $x1403 $x1405)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1407 (ite $x174 $x1406 $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1407)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1073 (str.++ s2 "")))
 (= ?x1073 s2_fresh)) :named a2))
(assert (! 
 (let ((?x161 (str.indexof s t offset)))
 (let (($x163 (= ?x161 result)))
 (not $x163))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s4 = NO VALUE
;s2 = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
