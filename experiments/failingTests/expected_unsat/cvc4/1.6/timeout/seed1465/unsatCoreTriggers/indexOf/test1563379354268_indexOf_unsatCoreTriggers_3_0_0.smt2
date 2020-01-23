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
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x203 (str.len ?x124)))
 (let (($x204 (= ?x203 result)))
 (let (($x1307 (forall ((i Int) )(! (let (($x1303 (= (str.contains (str.++ s2 (str.substr t_fresh 0 i)) t_fresh) false)))
 (=> (and (>= i 0) (< i (str.len t_fresh))) $x1303)) :pattern ( (str.substr t_fresh 0 i) )))
 ))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x1310 (and (and (= (str.++ ?x124 (str.++ t_fresh s4)) s) (and $x152 $x1307)) $x204)))
 (let ((?x147 (str.len s)))
 (let (($x167 (<= offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x168 (and $x146 $x167)))
 (let (($x170 (= result offset)))
 (let (($x171 (= $x170 true)))
 (and (=> (and (= (= t_fresh "") true) $x168) $x171) (ite (and (= (= t_fresh "") false) $x168) $x1310 $x208))))))))))))))))) :named a1))
(assert (! 
 (let ((?x181 (str.len t)))
 (let (($x993 (= ?x181 1)))
 (let ((?x991 (str.at t 0)))
 (let (($x992 (= ?x991 t_fresh)))
 (and $x992 $x993))))) :named a2))
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

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
