(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1_fresh () String)
(declare-fun t () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun tmp_str11 () String)
(declare-fun s1 () String)
(declare-fun tmp_str12 () String)
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x1025 (str.++ s1_fresh s2)))
 (let ((?x1378 (str.len ?x1025)))
 (let (($x1379 (= ?x1378 result)))
 (let (($x198 (forall ((i Int) )(let (($x193 (= (str.contains (str.++ s2 (str.substr t 0 i)) t) false)))
 (=> (and (>= i 0) (< i (str.len t))) $x193)))
 ))
 (let ((?x1028 (str.len s1_fresh)))
 (let (($x1219 (= ?x1028 offset)))
 (let (($x1376 (and $x1219 $x198)))
 (let ((?x176 (str.++ t s4)))
 (let ((?x1374 (str.++ ?x1025 ?x176)))
 (let (($x1375 (= ?x1374 s)))
 (let (($x1377 (and $x1375 $x1376)))
 (let (($x1380 (and $x1377 $x1379)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x165 (= t "")))
 (let (($x173 (= $x165 false)))
 (let (($x174 (and $x173 $x168)))
 (let (($x1381 (ite $x174 $x1380 $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x166 (= $x165 true)))
 (let (($x169 (and $x166 $x168)))
 (let (($x172 (=> $x169 $x171)))
 (and $x172 $x1381)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1383 (str.replace s1 tmp_str11 tmp_str12)))
 (let (($x1384 (= ?x1383 s1_fresh)))
 (and $x1384 (= (str.indexof s1 tmp_str11 0) (- 1))))) :named a2))
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
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE
;s1 = NO VALUE
;tmp_str11 = NO VALUE
;tmp_str12 = NO VALUE

;unsat core: a0 a1 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
