(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () Int)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t_fresh () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun s4 () String)
(declare-fun t () String)
(assert (! 
 (let (($x205 (= result (- 1))))
 (let (($x206 (= $x205 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x201 (str.len ?x124)))
 (let (($x202 (= ?x201 result)))
 (let (($x1306 (forall ((i Int) )(let (($x1302 (= (str.contains (str.++ s2 (str.substr t_fresh 0 i)) t_fresh) false)))
 (=> (and (>= i 0) (< i (str.len t_fresh))) $x1302)))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x1307 (and $x152 $x1306)))
 (let ((?x1288 (str.++ t_fresh s4)))
 (let ((?x1289 (str.++ ?x124 ?x1288)))
 (let (($x1290 (= ?x1289 s)))
 (let (($x1308 (and $x1290 $x1307)))
 (let (($x1309 (and $x1308 $x202)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x1282 (= t_fresh "")))
 (let (($x1286 (= $x1282 false)))
 (let (($x1287 (and $x1286 $x168)))
 (let (($x1310 (ite $x1287 $x1309 $x206)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (let (($x1283 (= $x1282 true)))
 (let (($x1284 (and $x1283 $x168)))
 (let (($x1285 (=> $x1284 $x171)))
 (and $x1285 $x1310)))))))))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x181 (str.len t)))
 (let ((?x1007 (str.substr t 0 ?x181)))
 (= ?x1007 t_fresh))) :named a2))
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
;t_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s4 = NO VALUE

;unsat core: a0 a1 a2 

