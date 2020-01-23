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
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun tmp_str5 () String)
(declare-fun tmp_bool3_fresh () Bool)
(assert (! 
 (let (($x138 (= result s)))
 (let (($x1173 (= $x138 tmp_bool3_fresh)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x130 (= s2 t)))
 (let (($x1169 (= $x130 tmp_bool3_fresh)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x1170 (and $x129 $x1169)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x127 (= ?x126 s)))
 (let (($x1171 (and $x127 $x1170)))
 (let (($x1172 (and $x1171 $x136)))
 (let (($x121 (>= index 0)))
 (let (($x1174 (ite $x121 $x1172 $x1173)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1174)))))))))))))))))))) :named a1))
(assert (! 
 (= (= tmp_str5 tmp_str5) tmp_bool3_fresh) :named a2))
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
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;tmp_bool3_fresh = true
;tmp_str5 = NO VALUE

;unsat core: a0 a1 a2 

