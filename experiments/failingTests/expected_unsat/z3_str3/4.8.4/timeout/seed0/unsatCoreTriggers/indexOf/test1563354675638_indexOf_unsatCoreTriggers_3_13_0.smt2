(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int10_fresh () Int)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_str10 () String)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str11 () String)
(assert (! 
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x203 (str.len ?x124)))
 (let (($x204 (= ?x203 result)))
 (let (($x200 (forall ((i Int) )(! (let (($x195 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (let (($x197 (>= i 0)))
 (let (($x198 (and $x197 (< i (str.len t)))))
 (=> $x198 $x195)))) :pattern ( (str.substr t 0 i) )))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x201 (and $x152 $x200)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x177 (str.++ ?x124 ?x176)))
 (let (($x178 (= ?x177 s)))
 (let (($x202 (and $x178 $x201)))
 (let (($x205 (and $x202 $x204)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 (ite $x174 $x205 (= (= result tmp_int10_fresh) true))))))))))))))))))))))))))) :named a1))
(assert (! 
 (and (= (str.indexof tmp_str10 tmp_str11 tmp_int12) tmp_int10_fresh) (or (< tmp_int12 0) (> tmp_int12 (str.len tmp_str10)))) :named a2))
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
;tmp_int10_fresh = -1
;tmp_str10 = NO VALUE
;tmp_str11 = NO VALUE
;tmp_int12 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
