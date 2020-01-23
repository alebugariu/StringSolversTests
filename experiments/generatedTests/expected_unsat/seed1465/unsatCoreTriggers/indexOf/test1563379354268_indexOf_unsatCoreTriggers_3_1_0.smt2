(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset_fresh () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_str11 () String)
(declare-fun offset () Int)
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
 (let (($x1191 (= ?x128 offset_fresh)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let ((?x147 (str.len s)))
 (let (($x1323 (<= offset_fresh ?x147)))
 (let (($x1187 (>= offset_fresh 0)))
 (let (($x1324 (and $x1187 $x1323)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x1328 (=> (and (= $x165 true) $x1324) (= (= result offset_fresh) true))))
 (and $x1328 (ite (and $x173 $x1324) (and (and $x178 (and $x1191 $x200)) $x204) $x208)))))))))))))))))))) :named a1))
(assert (! 
 (and (= (str.indexof tmp_str11 "" offset) offset_fresh) (and (>= offset 0) (<= offset (str.len tmp_str11)))) :named a2))
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
;offset_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE
;tmp_str11 = NO VALUE

;unsat core: a0 a1 a2 

