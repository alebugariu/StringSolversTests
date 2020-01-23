(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s1 () String)
(declare-fun s1_fresh () String)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(assert (! 
 (let ((?x128 (str.len s1)))
 (let (($x1040 (= ?x128 1)))
 (let ((?x1038 (str.at s1 0)))
 (let (($x1039 (= ?x1038 s1_fresh)))
 (and $x1039 $x1040))))) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let (($x198 (forall ((i Int) )(let (($x193 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x193)))
 ))
 (let ((?x1028 (str.len s1_fresh)))
 (let (($x1219 (= ?x1028 offset)))
 (let (($x1377 (and (= (str.++ (str.++ s1_fresh s2) (str.++ t s4)) s) (and $x1219 $x198))))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1381 (ite $x174 (and $x1377 (= (str.len (str.++ s1_fresh s2)) result)) $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1381)))))))))))))))))))) :named a2))
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
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a2 

