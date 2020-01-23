(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3_fresh () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun tmp_str5 () String)
(declare-fun s3 () String)
(declare-fun tmp_str6 () String)
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x1098 (str.++ ?x134 s3_fresh)))
 (let (($x1099 (= ?x1098 result)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x132 (and $x129 $x131)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x1095 (str.++ ?x124 s3_fresh)))
 (let (($x1096 (= ?x1095 s)))
 (let (($x1097 (and $x1096 $x132)))
 (let (($x1100 (and $x1097 $x1099)))
 (let (($x121 (>= index 0)))
 (let (($x1101 (ite $x121 $x1100 $x139)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1101)))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1109 (str.replace s3 tmp_str5 tmp_str6)))
 (let (($x1110 (= ?x1109 s3_fresh)))
 (and $x1110 (= (str.indexof s3 tmp_str5 0) (- 1))))) :named a2))
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
;s3_fresh = NO VALUE
;s3 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;(a1 a2 a0)
