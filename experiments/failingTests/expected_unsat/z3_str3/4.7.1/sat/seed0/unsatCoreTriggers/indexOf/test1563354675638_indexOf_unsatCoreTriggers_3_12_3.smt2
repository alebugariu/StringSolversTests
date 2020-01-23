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
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_str11 () String)
(declare-fun tmp_str12 () String)
(declare-fun tmp_bool3_fresh () Bool)
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x203 (str.len ?x124)))
 (let (($x204 (= ?x203 result)))
 (let (($x1587 (forall ((i Int) )(! (let (($x1585 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) tmp_bool3_fresh)))
 (let (($x197 (>= i 0)))
 (let (($x198 (and $x197 (< i (str.len t)))))
 (=> $x198 $x1585)))) :pattern ( (str.substr t 0 i) )))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x1588 (and $x152 $x1587)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let (($x1589 (and $x178 $x1588)))
 (let (($x1590 (and $x1589 $x204)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x1581 (= $x165 tmp_bool3_fresh)))
 (let (($x1582 (and $x1581 $x168)))
 (let (($x1591 (ite $x1582 $x1590 $x208)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1591)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let (($x1606 (str.contains tmp_str12 tmp_str11)))
 (let (($x1607 (= $x1606 false)))
 (and (= (str.suffixof tmp_str11 tmp_str12) tmp_bool3_fresh) $x1607))) :named a2))
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
;tmp_bool3_fresh = false
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE
;tmp_str11 = NO VALUE
;tmp_str12 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: sat
;(error "line 57 column 10: check annotation that says unsat")
