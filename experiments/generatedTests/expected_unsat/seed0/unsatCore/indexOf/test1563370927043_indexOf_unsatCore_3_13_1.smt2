(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int8_fresh () Int)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_str9 () String)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int10 () Int)
(assert (! 
 (let (($x1618 (= result tmp_int8_fresh)))
 (let (($x1619 (= $x1618 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x201 (str.len ?x124)))
 (let (($x202 (= ?x201 result)))
 (let (($x198 (forall ((i Int) )(let (($x193 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (let (($x195 (>= i 0)))
 (let (($x196 (and $x195 (< i (str.len t)))))
 (=> $x196 $x193)))))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x199 (and $x152 $x198)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let (($x200 (and $x178 $x199)))
 (let (($x203 (and $x200 $x202)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1620 (ite $x174 $x203 $x1619)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1620)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1611 (str.indexof tmp_str8 tmp_str9 tmp_int10)))
 (let (($x1612 (= ?x1611 tmp_int8_fresh)))
 (and $x1612 (= (str.contains tmp_str8 tmp_str9) false)))) :named a2))
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
;s2 = NO VALUE
;s4 = NO VALUE
;tmp_int8_fresh = -1
;tmp_str8 = NO VALUE
;tmp_str9 = NO VALUE
;tmp_int10 = NO VALUE

;unsat core: a0 a1 a2 

