(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun s () String)
(assert (! 
 (let (($x967 (= result s_fresh)))
 (let (($x968 (= $x967 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x132 (and $x129 $x131)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x964 (= ?x126 s_fresh)))
 (let (($x965 (and $x964 $x132)))
 (let (($x966 (and $x965 $x136)))
 (let (($x121 (>= index 0)))
 (let (($x969 (ite $x121 $x966 $x968)))
 (let ((?x962 (str.indexof s_fresh t 0)))
 (let (($x963 (= ?x962 index)))
 (and $x963 $x969)))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x147 (str.len s)))
 (let ((?x407 (str.substr s 0 ?x147)))
 (= ?x407 s_fresh))) :named a2))
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
;s_fresh = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
