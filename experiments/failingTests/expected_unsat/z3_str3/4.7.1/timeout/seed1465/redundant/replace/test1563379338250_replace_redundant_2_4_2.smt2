(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s2_fresh () String)
(declare-fun s2 () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun index () Int)
(assert (! 
 (= (str.++ "" s2) s2_fresh) :named a1))
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x1066 (= s2_fresh t)))
 (let (($x1067 (= $x1066 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x1068 (and $x129 $x1067)))
 (let ((?x1063 (str.++ s1 s2_fresh)))
 (let ((?x1064 (str.++ ?x1063 s3)))
 (let (($x1065 (= ?x1064 s)))
 (let (($x1069 (and $x1065 $x1068)))
 (let (($x1070 (and $x1069 $x136)))
 (let (($x121 (>= index 0)))
 (let (($x1071 (ite $x121 $x1070 $x139)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1071)))))))))))))))))))) :named a2))
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
;s2 = NO VALUE
;s2_fresh = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
