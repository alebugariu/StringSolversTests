(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t_fresh () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun t () String)
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x984 (= s2 t_fresh)))
 (let (($x985 (= $x984 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x986 (and $x129 $x985)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x127 (= ?x126 s)))
 (let (($x987 (and $x127 $x986)))
 (let (($x988 (and $x987 $x136)))
 (let (($x121 (>= index 0)))
 (let (($x989 (ite $x121 $x988 $x139)))
 (let ((?x982 (str.indexof s t_fresh 0)))
 (let (($x983 (= ?x982 index)))
 (and $x983 $x989)))))))))))))))))))) :named a1))
(assert (! 
 (= (str.replace t t t) t_fresh) :named a2))
(assert (! 
 (let ((?x115 (str.replace s t u)))
 (let (($x116 (= ?x115 result)))
 (not $x116))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;t_fresh = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: incorrect_unsat_core
;()
