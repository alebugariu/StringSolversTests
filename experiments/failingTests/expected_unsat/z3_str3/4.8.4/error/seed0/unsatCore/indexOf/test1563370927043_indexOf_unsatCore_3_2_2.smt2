(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s_fresh () String)
(declare-fun s4 () String)
(declare-fun s () String)
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x201 (str.len ?x124)))
 (let (($x202 (= ?x201 result)))
 (let (($x198 (forall ((i Int) )(let (($x193 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x193)))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x199 (and $x152 $x198)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x1345 (= ?x177 s_fresh)))
 (let (($x1346 (and $x1345 $x199)))
 (let (($x1347 (and $x1346 $x202)))
 (let ((?x1199 (str.len s_fresh)))
 (let (($x1340 (<= offset ?x1199)))
 (let (($x146 (>= offset 0)))
 (let (($x1341 (and $x146 $x1340)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x1344 (and $x173 $x1341)))
 (let (($x1348 (ite $x1344 $x1347 $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x1342 (and $x166 $x1341)))
 (let (($x1343 (=> $x1342 $x171)))
 (and $x1343 $x1348)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x385 (str.++ "" s)))
 (= ?x385 s_fresh)) :named a2))
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
;s_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: not_implemented
