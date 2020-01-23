(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s2 () String)
(declare-fun s2_fresh () String)
(declare-fun result () Int)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(assert (! 
 (let ((?x153 (str.len s2)))
 (let (($x1061 (= ?x153 1)))
 (let ((?x1058 (str.at s2 0)))
 (let (($x1060 (= ?x1058 s2_fresh)))
 (and $x1060 $x1061))))) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let (($x1401 (forall ((i Int) )(let (($x1399 (= (str.contains (str.++ s2_fresh (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x1399)))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x1403 (and (= (str.++ (str.++ s1 s2_fresh) (str.++ t s4)) s) (and $x152 $x1401))))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1407 (ite $x174 (and $x1403 (= (str.len (str.++ s1 s2_fresh)) result)) $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1407)))))))))))))))))))) :named a2))
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
;s2 = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
