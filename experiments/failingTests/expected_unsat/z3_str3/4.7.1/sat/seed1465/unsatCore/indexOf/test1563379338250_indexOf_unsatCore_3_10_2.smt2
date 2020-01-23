(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_bool1_fresh () Bool)
(assert (! 
 (= (str.prefixof "" tmp_str2) tmp_bool1_fresh) :named a1))
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x1537 (= $x205 tmp_bool1_fresh)))
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
 (let (($x1538 (ite $x174 $x203 $x1537)))
 (let (($x170 (= result offset)))
 (let (($x1535 (= $x170 tmp_bool1_fresh)))
 (let (($x1533 (= $x165 tmp_bool1_fresh)))
 (let (($x1534 (and $x1533 $x168)))
 (let (($x1536 (=> $x1534 $x1535)))
 (and $x1536 $x1538)))))))))))))))))))))))))))) :named a2))
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
;tmp_str2 = NO VALUE
;tmp_bool1_fresh = true
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: sat
;(error "line 52 column 10: check annotation that says unsat")
