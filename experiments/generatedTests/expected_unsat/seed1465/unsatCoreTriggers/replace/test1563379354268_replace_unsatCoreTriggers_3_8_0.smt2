(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_int1_fresh () Int)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert (! 
 (let (($x566 (= tmp_str1 "")))
 (let (($x567 (= $x566 true)))
 (let ((?x564 (str.len tmp_str1)))
 (let (($x565 (= ?x564 tmp_int1_fresh)))
 (and $x565 $x567))))) :named a1))
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
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
 (let (($x127 (= ?x126 s)))
 (let (($x133 (and $x127 $x132)))
 (let (($x137 (and $x133 $x136)))
 (and (= (str.indexof s t tmp_int1_fresh) index) (ite (>= index tmp_int1_fresh) $x137 $x139))))))))))))))))) :named a2))
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
;tmp_str1 = NO VALUE
;tmp_int1_fresh = 0
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

