(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun result_fresh () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert (! 
 (let ((?x414 (str.len result)))
 (let (($x415 (= ?x414 1)))
 (let ((?x412 (str.at result 0)))
 (let (($x413 (= ?x412 result_fresh)))
 (and $x413 $x415))))) :named a1))
(assert (! 
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x132 (and $x129 $x131)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x127 (= ?x126 s)))
 (let (($x133 (and $x127 $x132)))
 (let (($x121 (>= index 0)))
 (let (($x1151 (ite $x121 (and $x133 (= (str.++ (str.++ s1 u) s3) result_fresh)) (= (= result_fresh s) true))))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1151)))))))))))))) :named a2))
(assert (! 
 (let ((?x115 (str.replace s t u)))
 (let (($x116 (= ?x115 result)))
 (not $x116))) :named a0))
(check-sat)

(get-model)
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

;actual status: sat
;(error "line 40 column 10: check annotation that says unsat")
