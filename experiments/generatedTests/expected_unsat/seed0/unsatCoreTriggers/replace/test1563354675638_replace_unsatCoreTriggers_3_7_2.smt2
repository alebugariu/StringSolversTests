(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result_fresh () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun result () String)
(assert (! 
 (let (($x1151 (= result_fresh s)))
 (let (($x1152 (= $x1151 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x1149 (= ?x135 result_fresh)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x132 (and $x129 $x131)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x127 (= ?x126 s)))
 (let (($x133 (and $x127 $x132)))
 (let (($x1150 (and $x133 $x1149)))
 (let (($x121 (>= index 0)))
 (let (($x1153 (ite $x121 $x1150 $x1152)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1153)))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x427 (str.++ "" result)))
 (= ?x427 result_fresh)) :named a2))
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
;result_fresh = NO VALUE

;unsat core: a0 a1 a2 

