(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_int1_fresh () Int)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(assert (! 
 (and (= (str.len tmp_str3) tmp_int1_fresh) (= (= tmp_str3 "") true)) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x201 (str.len ?x124)))
 (let (($x202 (= ?x201 result)))
 (let (($x1571 (forall ((i Int) )(let (($x1567 (= (str.contains (str.++ s2 (str.substr t tmp_int1_fresh i)) t) false)))
 (=> (and (>= i tmp_int1_fresh) (< i (str.len t))) $x1567)))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x1239 (>= offset tmp_int1_fresh)))
 (let (($x1553 (and $x1239 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (and (=> (and (= $x165 true) $x1553) (= (= result offset) true)) (ite (and $x173 $x1553) (and (and $x178 (and $x152 $x1571)) $x202) $x206))))))))))))))))))) :named a2))
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
;tmp_str3 = NO VALUE
;tmp_int1_fresh = 0
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unknown
;(:reason-unknown "(incomplete quantifiers)")
