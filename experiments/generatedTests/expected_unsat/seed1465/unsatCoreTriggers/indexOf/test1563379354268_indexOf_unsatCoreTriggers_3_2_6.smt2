(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s4 () String)
(assert (! 
 (let ((?x147 (str.len s)))
 (let ((?x407 (str.substr s 0 ?x147)))
 (= ?x407 s_fresh))) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x203 (str.len ?x124)))
 (let (($x204 (= ?x203 result)))
 (let (($x200 (forall ((i Int) )(! (let (($x195 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x195)) :pattern ( (str.substr t 0 i) )))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x201 (and $x152 $x200)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x1346 (= ?x177 s_fresh)))
 (let (($x1347 (and $x1346 $x201)))
 (let (($x1348 (and $x1347 $x204)))
 (let ((?x1201 (str.len s_fresh)))
 (let (($x1341 (<= offset ?x1201)))
 (let (($x146 (>= offset 0)))
 (let (($x1342 (and $x146 $x1341)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x1345 (and $x173 $x1342)))
 (let (($x1349 (ite $x1345 $x1348 $x208)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x1343 (and $x166 $x1342)))
 (let (($x1344 (=> $x1343 $x171)))
 (and $x1344 $x1349)))))))))))))))))))))))))))) :named a2))
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

